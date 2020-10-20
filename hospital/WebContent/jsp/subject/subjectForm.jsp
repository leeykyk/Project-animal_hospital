<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>진료등록(관리자)</title>
    <meta charset="utf-8">
</head>

<body>
    
    
    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5" align="center">
    	 <form name="subjectform" action="${pageContext.request.contextPath }/subjectJoinAction.sub" enctype="multipart/form-data" method="post" class="appointment-form ftco-animate"> 
    	
    	<div class="container" align="center">
    		<div class="row" align="center">
    			<div class="col-md-6 py-5 pr-md-5 mg-auto1" align="center">
	          <div class="heading-section heading-section-white ftco-animate mb-5" align="center">
	          	<span class="subheading" align="center">진료 리스트를 확인합니다</span>
	            <h2 class="mb-4">진료등록</h2>
	            <p>사랑과 정성으로 보답하겠습니다.</p>
	          </div>
	    				<div class="d-md-flex">
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="진료번호" name="subject_ID" id="subject_ID">
		    				</div>
		    				<div class="form-group">
		    					<input type="text" class="form-control" placeholder="종류" name="kind" id="kind">
		    				</div>
                        </div>
                        
                        <div class="d-md-flex">
		    				<div class="form-group">
		    					<input type="text" name="subject" id="subject" class="form-control" placeholder="진료명">
		    				</div>
		    				<div class="form-group">
		    					<input type="text" name="price" id="price" class="form-control" placeholder="가격">
		    				</div>
	    				</div>
		        				
	    				<div class="d-md-flex">
	    					<div class="form-group">
		    					<input type="file" name="image" id="image" class="form-control" placeholder="사진">
		    				</div>
		    			</div>
		    			<div class="d-md-flex">	
	    					<div class="form-group">
		             			<textarea name="content" id="content" cols="2" rows="2" class="form-control" placeholder="비고"></textarea>
		           			 </div>		       
		       		           			     		           			 
	    				</div>
	    				
	    		</div>
	    	</div>	
	    			
	    				<div class="d-md-flex">
	    					 <div class="form-group">
	    						<div class="form-group ml-md-4">
	    				 			 <input type="submit" value="저장하기"/>      
        							 <input type="reset" value="다시작성" />      
         							 <input type="button" value="목록보기" onClick="window.location.href='subjectListAction.sub'"/>      	
	    						</div>
	    					</div>		
	    				</div> 
	    	
    	</div>
    </form>
</section>

   <!-- footer -->
<jsp:include page="/footer_ad.jsp"></jsp:include>
<!-- END footer -->
    
  </body>
</html>