<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>实验室设备信息管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.Equipment_LabID.value)){  
   alert("请选择实验室！"); 
   return false;
   }
   if(isNull(form1.Equipment_Name.value)){
	   alert("请输入设备名！");
	   return false;
	   }
   if(isNull(form1.Equipment_Type.value)){
   alert("请输入设备类型！");
   return false;
   }
   if(isNull(form1.Equipment_Number.value)){
   alert("请输入设备数量！");
   return false;
   }
   if(isNull(form1.Equipment_Model.value)){
	   alert("请输入设备规格！");
	   return false;
	   }
   if(isNull(form1.Equipment_Fac.value)){
	   alert("请输入生产厂家！");
	   return false;
	   }
   if(isNull(form1.Equipment_Price.value)){
		   alert("请输入设备单价！");
		   return false;
		   }
   if(isNull(form1.Equipment_Bdate.value)){
	   alert("请输入生产日期！");
	   return false;
	   }
   if(isNull(form1.Equipment_Operator.value)){
	   alert("请输入经办人！");
	   return false;
	   }

}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<center>
  <table width="1350" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td  height="80" align="center" background="Images/Login.jpg&#9;" style="color:black; font-size:28px; font-weight:bolder; padding-left:50px;">实验室设备信息管理系统</td>
    </tr>
    <tr>
      <td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="500" align="center" valign="top"><table width="1350" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="200" height="500" align="left" valign="top" background="Images/p2.jpg">
          <%@ include file="Left.jsp"%>
          </td>
          <td width="1142.3" align="justify" valign="top" ><table width="1142.3" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30"  style="padding-left:25px;">添加设备</td>
            </tr>
            <tr>
             <td height="470" align="justify" valign="top"  background="Images/p3.jpg"><form name="form1" method="post" action="EquipmentAddSave.action" onSubmit="return mycheck()" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>实验室：</td>
                    <td><select name="Equipment_LabID" id="Equipment_LabID">
                      <option value="">请选择</option>
                      <s:iterator id="aa" value="list">
                      <option value="${Lab_ID}">${Lab_Name}</option>
                      </s:iterator>
                      </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>设备名：</td>
                    <td><input name="Equipment_Name" type="text" class="text2" id="Equipment_Name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>设备类型：</td>
                    <td><input name="Equipment_Type" type="text" class="text2" id="Equipment_Type"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>设备数量：</td>
                    <td><input name="Equipment_Number" type="text" class="text2" id="Equipment_Number"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>设备规格：</td>
                    <td><input name="Equipment_Model" type="text" class="text2" id="Equipment_Model"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>生产厂家：</td>
                    <td><input name="Equipment_Fac" type="text" class="text2" id="Equipment_Fac"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>设备单价：</td>
                    <td><input name="Equipment_Price" type="text" class="text2" id="Equipment_Price"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>生产日期：</td>
                    <td><input name="Equipment_Bdate" type="text" class="text2" id="Equipment_Bdate"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>经办人：</td>
                    <td><input name="Equipment_Operator" type="text" class="text2" id="Equipment_Operator"></td>
                  </tr>
                  
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="添加设备">
                      &nbsp;&nbsp;
                      <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
    </tr>
  </table>

</center>
</body>
</html>
