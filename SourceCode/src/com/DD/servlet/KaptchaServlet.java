package com.DD.servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

import javax.imageio.ImageIO;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.util.Config;

public class KaptchaServlet extends HttpServlet implements Servlet {
	private Properties props;
	private Producer kaptchaProducer;
	private String sessionKeyValue;

	public KaptchaServlet() {
		this.props = new Properties();

		this.kaptchaProducer = null;

		this.sessionKeyValue = null;
	}

	public void init(ServletConfig conf) throws ServletException {
		super.init(conf);

		ImageIO.setUseCache(false);

		Enumeration initParams = conf.getInitParameterNames();
		while (initParams.hasMoreElements()) {
			String key = (String) initParams.nextElement();
			String value = conf.getInitParameter(key);
			this.props.put(key, value);
		}

		Config config = new Config(this.props);
		this.kaptchaProducer = config.getProducerImpl();
		this.sessionKeyValue = config.getSessionKey();
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().invalidate();// 首先清空session

		resp.setDateHeader("Expires", 0L);

		resp.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");

		resp.addHeader("Cache-Control", "post-check=0, pre-check=0");

		resp.setHeader("Pragma", "no-cache");

		resp.setContentType("image/jpeg");
		//验证码的文字
		String capText = this.kaptchaProducer.createText();
		System.out.println("原始组装数据：" + capText);
		req.getSession().setAttribute(this.sessionKeyValue, capText);
		System.out.println(capText);
		BufferedImage bi = this.kaptchaProducer.createImage(capText);
		//通过response来向前台写出流---可以是文字，可以使图片，可以是视频，压缩包等等
		ServletOutputStream out = resp.getOutputStream();//response响应

		ImageIO.write(bi, "jpg", out);

		try {
			out.flush();
		} finally {
			out.close();
		}
	}
}