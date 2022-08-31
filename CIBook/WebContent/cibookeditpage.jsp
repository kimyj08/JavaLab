<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도감 수정</title>
</head>
<body>
<%@ include file="header.jsp" %>

<%
		DTOmember member=DAOmember.getDetail(mnick);

	String no=request.getParameter("cid");
	
	DTOcibook cibook=DAOcibook.getDetail(no);
%>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				캐릭터 도감 수정
			</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="cibookedit.jsp" method="post" enctype="multipart/form-data">
		
		<input name="cid" type="hidden" value="<%=cibook.getCid() %>" >
		
			<div class="form-group row">
				<label class="col-sm-2">NAME</label>
				<div class="col-sm-8">
					<input name="cname" type="text" class="form-control" value="<%=cibook.getCname() %>" placeholder="캐릭터 이름을 입력하세요" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">BIRTH</label>
				<div class="col-sm-8">
					<input name="cbirth" type="text" class="form-control" value="<%=cibook.getCbirth() %>" placeholder="캐릭터의 생일을 입력하세요('YYYY-MM-DD'형식으로 입력하세요.)">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">CHARACTER-GENDER</label>
				<div class="col-sm-8">
					<div class="form-check form-check-inline">
					<%
						String gender=cibook.getCgender();
						if(gender.equals("남성")) {
					%>
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio1" value="남성" checked>
					  <label class="form-check-label" for="flexRadioDefault1">남성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio2" value="여성">
					  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio3" value="unknown">
					  <label class="form-check-label" for="flexRadioDefault2">알 수 없음.</label>
				   <% } else if(gender.equals("여성")) { %>
			   		  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio1" value="남성">
					  <label class="form-check-label" for="flexRadioDefault1">남성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio2" value="여성" checked>
					  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio3" value="unknown">
					  <label class="form-check-label" for="flexRadioDefault2">알 수 없음.</label>
				   <% } else { %>
			   		  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio1" value="남성">
					  <label class="form-check-label" for="flexRadioDefault1">남성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio2" value="여성">
					  <label class="form-check-label" for="flexRadioDefault2">여성</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="cgender" id="inlineRadio3" value="unknown" checked>
					  <label class="form-check-label" for="flexRadioDefault2">알 수 없음.</label>
				   <% } %>
					</div>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">FEATURE</label>
				<div class="col-sm-8">
					<textarea name="cft" rows="5" cols="20" class="form-control" placeholder="캐릭터 특징을 입력하세요"><%=cibook.getCft() %></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">DESC.</label>
				<div class="col-sm-8">
					<textarea name="cdesc" rows="5" cols="20" class="form-control" placeholder="캐릭터 설명을 입력하세요"><%=cibook.getCdesc() %></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<!-- <label class="col-sm-2">IMAGE UPLOAD</label> -->
				<div class="col-sm-8">
				  <input type="file" name="image1" class="form-control" id="inputGroupFile01">
				</div>
			</div>
			
			<script>
				// Get a reference to our file input
				const fileInput=document.querySelector('#inputGroupFile01');
				
				// Create a new File object
				const myFile=new File(['Hello World!'],'<%=cibook.getCiname1() %>',{
					type:'text/plain',
					lastModified:new Date(),
				});
				
				//Now let's create a DataTransfer to get a Filelist
				const dataTransfer=new DataTransfer();
				dataTransfer.items.add(myFile);
				fileInput.files=dataTransfer.files;
			</script>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image2" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			
			<script>
				// Get a reference to our file input
				const fileInput2=document.querySelector('#inputGroupFile02');
				
				// Create a new File object
				const myFile2=new File(['Hello World!'],'<%=cibook.getCiname2() %>',{
					type:'text/plain',
					lastModified:new Date(),
				});
				
				//Now let's create a DataTransfer to get a Filelist
				const dataTransfer2=new DataTransfer();
				dataTransfer2.items.add(myFile2);
				fileInput2.files=dataTransfer2.files;
			</script>
			
			<div class="form-group row">
				<div class="col-sm-5">
				  <input type="file" name="image3" class="form-control" id="inputGroupFile03">
				</div>
			</div>
			
			<script>
				// Get a reference to our file input
				const fileInput3=document.querySelector('#inputGroupFile03');
				
				// Create a new File object
				const myFile3=new File(['Hello World!'],'<%=cibook.getCiname3() %>',{
					type:'text/plain',
					lastModified:new Date(),
				});
				
				//Now let's create a DataTransfer to get a Filelist
				const dataTransfer3=new DataTransfer();
				dataTransfer3.items.add(myFile3);
				fileInput3.files=dataTransfer3.files;
			</script>
			
			<div class="form-group row">
				<label class="col-sm-2">OWNER</label>
				<div class="col-sm-8">
					<input name="cowner" type="text" class="form-control" value="<%=member.getMnick() %>" readonly>
				</div>
			</div>
					
			<div class="form-group row">
				<label class="col-sm-2">ADDRESS</label>
				<div class="col-sm-8">
					<input name="caddr" type="text" class="form-control" value="<%=cibook.getCaddr() %>" placeholder="캐릭터의 개발지를 입력하세요(도로명주소 형식으로 입력하세요.)">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">SUBS_PRICE</label>
				<div class="col-sm-8">
					<input name="cprice" type="text" class="form-control" value="<%=cibook.getCprice() %>" readonly>
				</div>
			</div>
			
			<!-- <div class="form-group row">
				<label class="col-sm-2">COLOR</label>
				<div class="col-sm-8">
					<select name="ccolor" class="form-select" size="8" aria-label="size 10 select example">
					  <option selected>캐릭터의 색깔을 선택하세요.</option>
					  <option value="pink">pink</option>
					  <option value="red">red</option>
					  <option value="orange">orange</option>
					  <option value="yellow">yellow</option>
					  <option value="green">green</option>
					  <option value="blue">blue</option>
					  <option value="purple">purple</option>
					  <option value="black">black</option>
					  <option value="whie">white</option>
					  <option value="mix">mix</option>
					</select>
				</div>
			</div> -->
			
			<div class="form-group-row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="수정">
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
					<a class="btn btn-info" href="cibookdetail.jsp?cid=<%=cibook.getCid() %>" role="button">돌아가기</a><br><br>
				</div>
			</div>
		
		</form>
	</div>

<%@ include file="footer.jsp" %>
</body>
</html>