<%@include file=".\includes\clientHeader.jsp" %>

		<%
		if(view == null){
			view = "";
		}
	
		if(view.equals("articlelistnew")){%>
			<%@include file=".\includes\articleListNew.jsp"%>
		<%}else if(view.equals("article")){ %>
			<%@include file=".\includes\article.jsp"%>
		<%}else if(view.equals("articlelistpop")){ %>
			<%@include file=".\includes\articleListPop.jsp"%>
		<%}else if(view.equals("articlelistnew")){ %>
			<%@include file=".\includes\articleListPop.jsp"%>
		<%}else{%>
		<%@include file=".\includes\homePage.jsp" %>
			<%}%>
  
<%@include file=".\includes\clientFooter.jsp" %>