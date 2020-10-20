<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<meta charset="utf-8">

</head>
<script>
   var chkId = false; // 아이디 중복확인창 실행
   var idcheck; // 중복확인을 완료한 사용 가능한 아이디
   
   function chkForm(f) {
      if(!chkId  || idcheck != f.id.value.trim()) {
         alert("아이디 중복확인을 하세요!!!");
         return false;
      }
      f.submit();
   }   

</script>

<body>

   <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/cat.jpg);" data-stellar-background-ratio="0.5" align="center">
     <form name="joinform" action="${pageContext.request.contextPath }/animalMemberJoinAction.am" method="post" class="appointment-form ftco-animate"> 
         <div class="container" align="center">
            <div class="row" align="center">
               <div class="col-md-6 py-5 pr-md-5 mg-auto1" align="center">
                  <div class="heading-section heading-section-white ftco-animate mb-5" align="center">
                     <span class="subheading" align="center">가족이 되신걸 환영합니다.</span>
                     <h2 class="mb-4">반려 동물 가입</h2>
                     <p>사랑과 정성으로 보답하겠습니다.</p>
                  </div>
                <div class="d-md-flex">
                	<div class="form-group">
              			<input type="text" name="Member_ID" id="Member_ID" class="form-control" value="${memberLog.member_ID}"/>
               		</div>
                </div>
                <div class="d-md-flex">
                	<div class="form-group">
                   		<input type="text" class="form-control" placeholder="반려동물 ID" name="Animal_ID" id="Animal_ID" request/>
                   		<input type="button" name="idcheck" value="아이디 중복확인" id="idcheck"
                     		onclick="window.open('idCheck2.jsp?openInit=true','','width=300, height=200')"/>
                	</div>
    			</div>
             	<div class="d-md-flex">
                	<div class="form-group">
                   		<input type="text" class="form-control" placeholder="반려동물 이름" name="Animal_name" id="Animal_name">
                	</div>
      			</div>
            	<div class="d-md-flex">
                	<div class="form-group">
                   		<input type="text" class="form-control" placeholder="반려동물 생일" name="Birthday" id="Birthday">
                	</div>
             	</div>
             	<div class="d-md-flex">
                	<div class="form-group">
                   		<div class="form-field">
                         	<div class="select-wrap">
                               <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                  <select name="Kind" id="Kind" class="form-control">
                                    <option value="Kind" style=color:black>반려동물 종류</option>
                                    <option value="개" style=color:black>강아지</option>
                                    <option value="고양이" style=color:black>고양이</option>
                                    <option value="조류" style=color:black>조류</option>
                                    <option value="설치류" style=color:black>설치류</option>
                                    <option value="기타" style=color:black>기타 동물</option>
                                  </select>
                          	</div>
                      	 </div>
               		 </div>               
               	 </div>
				<div class="d-md-flex">
                	<div class="form-group">
                 		<br><textarea name="Etc" id="Etc" cols="10" rows="1" class="form-control" placeholder="내용"></textarea>                       
          			</div>
       			</div>
           
                  <div class="doc">   
                     <a href="javascript:chkForm(document.joinform);"><input type="submit" value="가입하기" class="btn btn-secondary py-3 px-4"/></a>
                     <a href="javascript:joinform.reset()" class="btn btn-secondary py-3 px-4">다시작성</a><br><br>  
                  </div>
             </div>
         </div>
      </div>
   </form> 
 </section>

 <!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>