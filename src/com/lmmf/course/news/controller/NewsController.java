package com.lmmf.course.news.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmmf.course.entity.News;
import com.lmmf.course.news.service.NewsServiceImpl;
import com.lmmf.framework.Page;

@Controller
@RequestMapping("news")
public class NewsController {
	@Resource
	private NewsServiceImpl newsServiceImpl;
	
	/**
	 * 此方法用于前台定向消息展示
	 */
	
	
    /*
	 * 用于前台定向消息的展示（巴西）
	 * */
	@RequestMapping("qt_dxbx")
	public String qt_dxbx(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"巴西",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"巴西",false);
		}
		//List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "mynewsBX";
	}
	/*
	 * 用于前台定向消息的展示（韩国）
	 * */
	@RequestMapping("qt_dxhg")
	public String qt_dxhg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"韩国",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"韩国",false);
		}
		//List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "mynewsHG";
	}
	/*
	 * 用于前台定向消息的展示（日本）
	 * */
	@RequestMapping("qt_dxrb")
	public String qt_dxrb(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"日本",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"日本",false);
		}
		//List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "mynewsRB";
	}
	/*
	 * 用于前台定向消息的展示（印尼）
	 * */
	@RequestMapping("qt_dxyn")
	public String qt_dxyn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"印尼",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"印尼",false);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "mynewsYN";
	}
	
	/*
	 * 用于定向消息的内容页展示
	 * */
	@RequestMapping("neirong")
	public String neirong(@RequestParam(name="id_news")int id_news,HttpServletRequest request){
		News news = this.newsServiceImpl.getNews(id_news);
		HttpSession session = request.getSession();
		session.setAttribute("xx_news",news);
		return"contentXX";
	}
	
	
	
	/**
	 * 此方法用于前台新闻展示
	 */
	
	@RequestMapping("list_qtqb")
	public String list_qtqb(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"全部",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"全部",true);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "redirect:/shouyelunbotu/list_qb";
	}
	
	
	@RequestMapping("list_qtgg")
	public String list_qtgg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"公告",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"公告",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "frontindexgg";
	}
	@RequestMapping("list_qtrd")
	public String list_qtrd(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"热点",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"热点",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "frontindexrd";
	}
	@RequestMapping("list_qtxn")
	public String list_qtxn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"校内",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"校内",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "frontindexxn";
	}
	
	@RequestMapping("list_qtgj")
	public String list_qtgj(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"国际",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"国际",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "frontindexgj";
	}
	
	/**
	 * 用于二级栏目的展示
	 */
	
	@RequestMapping("content")
	public String content(@RequestParam(name="id_news",defaultValue="1")int id_news,
			HttpServletRequest request,
			Model model){
		News news = this.newsServiceImpl.getNews(id_news);
		HttpSession session = request.getSession();
		session.setAttribute("news05",news);
		return "content";
	}
	
	/**
	 * 用于定向新闻的添加
	 */
	
	@RequestMapping(value="add_dx",method = RequestMethod.POST)
	public String add_dx(News news){
		try {
			String neiRongURL =news.getNeiRongURL();
			neiRongURL = new String(neiRongURL.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRongURL(neiRongURL);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			news.setBiaoTi(new String(news.getBiaoTi().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.newsServiceImpl.addNews(news);
		
		return "redirect:list_dxhg";
	}
	/**
	 * 改方法用于定向新闻的修改(提交)
	 */
	@RequestMapping(value="edit_dx",method = RequestMethod.POST)
	public String edit_dx(News news,HttpServletRequest request){
		try {
			String neiRong =news.getNeiRong();
			neiRong = new String(neiRong.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRong(neiRong);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String neiRongURL =news.getNeiRongURL();
			neiRongURL = new String(neiRongURL.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRongURL(neiRongURL);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String biaoTi= news.getBiaoTi();
			biaoTi = new String(biaoTi.getBytes("iso-8859-1"),"utf-8");
			news.setBiaoTi(biaoTi);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		News news04 = (News)session.getAttribute("news04");
		news.setId_news(news04.getId_news());
		news.setIsFaBu(news04.getIsFaBu());
		news.setLeiXing(news04.getLeiXing());
		this.newsServiceImpl.editNews(news);
		return "redirect:list_dxhg";
	}
	/**
	 * 此方法用于定向消息点击修改按钮后获取信息
	 */
	@RequestMapping(value = "edit_dx",method = RequestMethod.GET)
	public String toEdit_dx(@RequestParam("id_news") int id_news,HttpServletRequest request){
		News news = this.newsServiceImpl.getNews(id_news);
		HttpSession session = request.getSession();
		session.setAttribute("news04",news);
		session.setAttribute("action", "edit");
		return "formsDX";
	}
	/**
	 * 此方法用于定向新闻的删除
	 */
	@RequestMapping(value ="delete_dxrb")
	public String delete_dxrb(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_dxrb";
	}
	
	@RequestMapping(value ="delete_dxhg")
	public String delete_dxhg(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_dxhg";
	}
	
	@RequestMapping(value ="delete_dxyn")
	public String delete_dxyn(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_dxyn";
	}
	
	@RequestMapping(value ="delete_dxbx")
	public String delete_dxbx(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_dxbx";
	}
	
	@RequestMapping(value="add",method = RequestMethod.POST)
	public String add(News news){
		news.setIsFaBu(true);
		try {
			String neiRongURL =news.getNeiRongURL();
			neiRongURL = new String(neiRongURL.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRongURL(neiRongURL);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String neiRong =news.getNeiRong();
			neiRong = new String(neiRong.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRong(neiRong);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		try {
			String leiXing =news.getLeiXing();
			leiXing = new String(leiXing.getBytes("iso-8859-1"),"utf-8");
			news.setLeiXing(leiXing);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			news.setBiaoTi(new String(news.getBiaoTi().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.newsServiceImpl.addNews(news);
		if(news.getLeiXing().equals("公告")){
			return "redirect:list_gg";			
		}
		if(news.getLeiXing().equals("热点")){
			return "redirect:list_rd";			
		}
		if(news.getLeiXing().equals("国际")){
			return "redirect:list_gj";			
		}
		if(news.getLeiXing().equals("校内")){
			return "redirect:list_xn";			
		}
		System.out.println("add未选类型");
			return "formXWgg";
	}
	@RequestMapping(value = "edit",method = RequestMethod.GET)
	public String toEdit(@RequestParam("id_news") int id_news,HttpServletRequest request){
		System.out.println("已进入toEdit");
		News news = this.newsServiceImpl.getNews(id_news);
		HttpSession session = request.getSession();
		session.setAttribute("news03",news);
		session.setAttribute("action", "edit");
		return "formsXW";
	}
	@RequestMapping(value="edit",method = RequestMethod.POST)
	public String edit(News news,HttpServletRequest request){
		news.setIsFaBu(true);
		try {
			String neiRongURL =news.getNeiRongURL();
			neiRongURL = new String(neiRongURL.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRongURL(neiRongURL);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String neiRong =news.getNeiRong();
			neiRong = new String(neiRong.getBytes("iso-8859-1"),"utf-8");
			news.setNeiRong(neiRong);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			String leiXing =news.getLeiXing();
			leiXing = new String(leiXing.getBytes("iso-8859-1"),"utf-8");
			news.setLeiXing(leiXing);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			news.setBiaoTi(new String(news.getBiaoTi().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		News news03 = (News)session.getAttribute("news03");
		news.setId_news(news03.getId_news());
		this.newsServiceImpl.editNews(news);
		if(news.getLeiXing().equals("公告")){
			return "redirect:list_gg";			
		}
		if(news.getLeiXing().equals("热点")){
			return "redirect:list_rd";			
		}
		if(news.getLeiXing().equals("国际")){
			return "redirect:list_gj";			
		}
		if(news.getLeiXing().equals("校内")){
			return "redirect:list_xn";			
		}
		System.out.println("未选类型");
			return "formXW?action='edit'";
	}
	@RequestMapping(value ="delete_rd")
	public String delete_rd(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_rd";
	}
	@RequestMapping(value ="delete_xn")
	public String delete_xn(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_xn";
	}
	@RequestMapping(value ="delete_gg")
	public String delete_gg(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_gg";
	}
	@RequestMapping(value ="delete_gj")
	public String delete_gj(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_gj";
	}
	@RequestMapping(value="list_gg")
	public String list_gg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"公告",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"公告",true);
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWgg";
	}
	@RequestMapping("list_gj")
	public String list_gj(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"国际",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"国际",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWgj";
	}
	
	@RequestMapping(value="list_xn")
	public String list_xn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"校内",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"校内",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWxn";
	}
	
	@RequestMapping("list_rd")
	public String list_rd(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"热点",true);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"热点",true);
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWrd";
	}
	/**
	 * 此映射用于处理定向消息（巴西）的list
	 */
	@RequestMapping("list_dxbx")
	public String list_dxbx(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"巴西",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"巴西",false);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableDXbx";
	}
	/**
	 * 此映射用于处理定向消息（韩国）的list
	 */
	@RequestMapping("list_dxhg")
	public String list_dxhg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"韩国",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"韩国",false);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableDXhg";
	}
	/**
	 * 此映射用于处理定向消息（日本）的list
	 */
	@RequestMapping("list_dxrb")
	public String list_dxrb(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"日本",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"日本",false);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableDXrb";
	}
	/**
	 * 此映射用于处理定向消息（印尼）的list
	 */
	@RequestMapping("list_dxyn")
	public String list_dxyn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"印尼",false);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"印尼",false);
		}
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableDXyn";
	}
}
