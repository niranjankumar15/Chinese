<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
name=trim(Request.Form("name"))
phone=trim(Request.Form("phone"))
email=trim(Request.Form("email")) 
contact=trim(Request.Form("phone")) 
address=trim(Request.Form("address")) 
city=trim(Request.Form("city")) 
country=trim(Request.Form("country")) 
Message=trim(Request.Form("message"))
%>
<%
Dim myMail
Dim strFrom
Dim strTo
Dim strSubject
Dim strMessage

Dim strY

strY=Request.ServerVariables("REMOTE_ADDR")

strFrom=email

strTo="meniranjan@live.com;"
strSubject = "Enquiry Through :: ChineseLearningCourse website"
strBody=strBody & "*********************************************************************" & vbCrlF 
strBody=strBody & "Visitor Name = " & name & vbCrlF
strBody=strBody & "Email = " & email & vbCrlF
strBody=strBody & "Contact No. = " & phone & vbCrlF
strBody=strBody & "Visitor Address = " & address & vbCrlF
strBody=strBody & "City = " & city & vbCrlF
strBody=strBody & "Country = " & country & vbCrlF
strBody=strBody & Message & vbCrlF
strBody=strBody & "-------------------------------------------------------------------" & vbCrlF
strBody=strBody & "IP Address : " & strY & vbCrlF


Set myMail= CreateObject("CDONTS.NewMail")

myMail.Send strFrom,strTo,strSubject,strBody

Set myMail = Nothing
response.redirect "thanks.html"
%>
</body>
</html>
