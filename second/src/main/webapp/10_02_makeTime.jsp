<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Calendar" %>
<!DOCTYPE html>

<%
Calendar cal=Calendar.getInstance();
request.setAttribute("time",cal);
%>

<jsp:forward page="10_02_viewTime.jsp"/>
<%-- <jsp:include page="10_02_viewTime.jsp"/> --%>
<%-- <%@ include file="10_02_viewTime.jsp"%> --%>