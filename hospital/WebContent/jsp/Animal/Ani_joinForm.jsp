<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>진료 동물 등록</title>
<meta charset="utf-8">
</head>

<body>

   <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/cat.jpg);" data-stellar-background-ratio="0.5" align="center">
      <form name="loginform" action="AnimalJoinAction.ani" method="post" class="appointment-form ftco-animate">
         <div class="container" align="center">
            <div class="row" align="center">
               <div class="col-md-6 py-5 pr-md-5 mg-auto1" align="center">
                  <div class="heading-section heading-section-white ftco-animate mb-5" align="center">
                     <span class="subheading" align="center">가족이 되신걸 환영합니다.</span>
                     <h2 class="mb-4">진료 동물 등록</h2>
                     <p>사랑과 정성으로 보답하겠습니다.</p>
                  </div>
                  <div class="d-md-flex">
                     <div class="form-group">
                        <input type="text" class="form-control" placeholder="등록 ID" name="animal_ID" id="animal_ID">
                     </div>
    
                  </div>

                  <div class="d-md-flex">
                     <div class="form-group">
                        <div class="form-field">
                           <div class="select-wrap">
                              <div class="icon">
                                 <span class="ion-ios-arrow-down"></span>
                              </div>
                              <select name="kind" id="kind" class="form-control">
                                 <option value="kind">반려동물 종류</option>
                                 <option value="개" style=color:black>강아지</option>
                                 <option value="고양이" style=color:black>고양이</option>
                                 <option value="조류" style=color:black>조류</option>
                                 <option value="설치류" style=color:black>설치류</option>
                                 <option value="기타" style=color:black>기타 동물</option>
                              </select>
                           </div>
                        </div>                                   
         			 <div class="form-group">
                        <br><textarea name="etc" id="etc" cols="20" rows="1" class="form-control" placeholder="비고"></textarea>
                     </div>                        
                     </div>                
                  </div>
            
               </div>
            </div>
            <div class="doc">
               <input type="submit" value="등록하기" class="btn btn-secondary py-3 px-4">
            </div>
            <br>
         </div>
      </form>
   </section>


<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->

</body>
</html>