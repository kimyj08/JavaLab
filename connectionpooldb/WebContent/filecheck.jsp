<%@page import="db.*"%>
<%@page import="util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%@ page import="java.util.*" %>

<% 
	String title=null;
	String content=null;
	String iname=null;
	byte[] ifile=null;

	ServletFileUpload sfu=new ServletFileUpload(new DiskFileItemFactory());

	List items=sfu.parseRequest(request);
	
	Iterator iter=items.iterator(); /* 순서가 있는 애들로 만들어줌. 즉, 순서가 없이 항목들로만 있는 애들한테 순서를 부여해 줌. */
	
	/* Iterator로 순서를 부여해 준 이유 - while문을 사용하여 하나씩, 한덩어리씩 뽑아내기 위해. */
	while(iter.hasNext()) {
		FileItem item=(FileItem) iter.next();
		String name=item.getFieldName(); // 키값. 즉, 이름을 추출.
		
		if(item.isFormField()) {
			// 제목, 내용 등 사진을 제외한 나머지 항목들을 차례대로 추출.
			String value=item.getString("utf-8");
			if(name.equals("title")) {
				title=value;
			} else if(name.equals("content")) {
				content=value;
			}
		} else {
			// 사진에 관련된 즉, 사진이름과 사진파일 추출.
			if(name.equals("image")) {
				iname=item.getName();
				ifile=item.get();
				
				// 사진 한 장 마다 뽑자마자 여기서 추출. 뽑자마자 쏘자.
				String root=application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root,iname,ifile);
			}
		}
	}
	
	DAOmember.boardinsert(title,content,iname);
%>



<!-- 확인용으로 대충 만든 것. -->
<%-- <br>
제목 <%=title %><br>
내용 <%=content %><br>
파일명 <%=iname %><br>
파일내용 <%=ifile %><br> --%>




<!-- test. 즉, 확인을 위해서 작성한 코드들. -->
<%-- title : <%=request.getParameter("title")%><br>
content : <%=request.getParameter("content")%><br>
file : <%=request.getParameter("image")%><br>

<!-- 아래 형식을 위 처럼 간단하게 바꿈. 바로 받아올 수 있게. -->
<% 
	String title=request.getParameter("title");
%>

<%=request.getContentType() %>
<%=request.getContentLength() %> --%>