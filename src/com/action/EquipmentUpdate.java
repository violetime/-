package com.action;

import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.bean.*;
import com.dao.*;


public class EquipmentUpdate extends ActionSupport {

	//下面是Action内用于封装用户请求参数的属性
	private String Equipment_ID;
	private EquipmentBean cnbean;
	public String getEquipment_ID() {
		return Equipment_ID;
	}

	public void setEquipment_ID(String studentID) {
		Equipment_ID = studentID;
	}

	public EquipmentBean getCnbean() {
		return cnbean;
	}

	public void setCnbean(EquipmentBean cnbean) {
		this.cnbean = cnbean;
	}

	private List<LabBean> list;
	public List<LabBean> getList() {
		return list;
	}
	public void setList(List<LabBean> list) {
		this.list = list;
	}
	//处理用户请求的execute方法
	public String execute() throws Exception {
		
		//解决乱码，用于页面输出
		HttpServletResponse response=null;
		response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		//创建session对象
		HttpSession session = ServletActionContext.getRequest().getSession();
		//验证是否正常登录
		if(session.getAttribute("id")==null){
			out.print("<script language='javascript'>alert('请重新登录！');window.location='Login.jsp';</script>");
			out.flush();out.close();return null;
		}
		
		//查询所有实验室
		list=new LabDao().GetList("","Lab_Name");
		//查询
		cnbean=new EquipmentDao().GetBean(Integer.parseInt(Equipment_ID));
		return SUCCESS;
		
	}
	
	//判断是否空值
	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	
	//测试
	public static void main(String[] args) {
		System.out.println();
	}
	
}
