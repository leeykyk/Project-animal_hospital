<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<title>예약 페이지(회원)</title>
</head>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> 
    <script>
    $(function() {
        $("select#kind").on("change", function() {
           $("select#subject option").remove();
           if($(this).val()=='강아지'){
             $("select#subject").append("<option value='스케일링' style=color:black>스케일링</option>");
             $("select#subject").append("<option value='심장사상충' style=color:black>심장사상충</option>");
              $("select#subject").append("<option value='슬개골탈구' style=color:black>슬개골탈구</option>");         
              $("select#subject").append("<option value='중성화' style=color:black>중성화</option>");
              $("select#subject").append("<option value='예방접종' style=color:black>예방접종</option>");
              $("select#subject").append("<option value='진료상담' style=color:black>진료상담</option>");
              
           }else if($(this).val()=='고양이'){
              $("select#subject").append("<option value='스케일링' style=color:black>스케일링</option>");
              $("select#subject").append("<option value='신부전증' style=color:black>신부전증</option>");
              $("select#subject").append("<option value='복막염' style=color:black>복막염</option>");
              $("select#subject").append("<option value='중성화' style=color:black>중성화</option>");
              $("select#subject").append("<option value='예방접종' style=color:black>예방접종</option>");
              $("select#subject").append("<option value='진료상담' style=color:black>진료상담</option>");
              
           }else if($(this).val()=='설치류'){
               $("select#subject").append("<option value='간장병' style=color:black>간장병</option>");
               $("select#subject").append("<option value='백내장' style=color:black>백내장</option>");
               $("select#subject").append("<option value='예방접종,스케일링' style=color:black>예방접종,스케일링</option>");
               $("select#subject").append("<option value='WHS' style=color:black>WHS</option>");
               $("select#subject").append("<option value='골절 등 외상' style=color:black>골절 등 외상</option>");
               $("select#subject").append("<option value='진료상담' style=color:black>진료상담</option>");
       
           }else if($(this).val()=='조류'){
               $("select#subject").append("<option value='호흡기 질환' style=color:black>호흡기 질환</option>");
               $("select#subject").append("<option value='해충 질환' style=color:black>해충 질환</option>");
               $("select#subject").append("<option value='설사 등 소화기 질환' style=color:black>설사 등 소화기 질환</option>");
               $("select#subject").append("<option value='알막힘' style=color:black>알막힘</option>");
               $("select#subject").append("<option value='골절 및 외상' style=color:black>골절 및 외상</option>");
               $("select#subject").append("<option value='진료상담' style=color:black>진료상담</option>");
         
           }else if($(this).val()=='기타'){
               $("select#subject").append("<option value='예방접종' style=color:black>예방접종</option>");
               $("select#subject").append("<option value='각종질병' style=color:black>각종질병</option>");
               $("select#subject").append("<option value='진료상담' style=color:black>진료상담</option>");   
            }
        });

    });

</script>

<body>
   <section class="hero-wrap hero-wrap-2" style="background-image: url('images/horse.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">예약하기</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="${pageContext.request.contextPath }/index.me">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>예약하기 <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img"
      id="section-counter" style="background-image: url(images/cat.jpg);"
      data-stellar-background-ratio="0.5">
      <div class="container">
         <div class="row">
            <div class="col-md-6 py-5 pr-md-5">
               <div class="heading-section heading-section-white ftco-animate mb-5">
                  <span class="subheading" align="center">예약 & 진단하기</span>
                  <h2 class="mb-4"  align="center">무료 진단</h2>
                  <p align="center">반려동물의 상태를 무료 진단 후 적절한 진료방법을 추천해드립니다.
                  <br>예약은 로그인 후 사용가능합니다.</p>
                                 
               </div>
               <form action="ReservationAddAction.res" class="appointment-form ftco-animate" method="post">
                  <div class="d-md-flex">
                     <div class="form-group ml">
                        <br><input type="text" name="member_ID" class="form-control" value="${memberLog.member_ID}">
                     </div>
                     <div class="form-group ml-md-4">
                        <br><input type="text" name="member_name" class="form-control" value="${memberLog.member_name}">
                     </div>&nbsp;&nbsp;&nbsp;&nbsp;
                     <div class="form-group m1-md-4">
                        <br><input type="text" name="animal_name" class="form-control" placeholder="반려동물 이름">
                     </div>
                  </div>
                   <div class="d-md-flex">
                     <div class="form-group">
                        <div class="form-field">
                           <div class="select-wrap">
                              <div class="icon">
                                 <span class="ion-ios-arrow-down"></span>
                              </div>
                              
                          <div>
                          <select name="kind" id="kind" class="form-control">
                             <option value="" style=color:black>반려동물 선택</option>
                             <option value="강아지" style=color:black>강아지</option>
                             <option value="고양이" style=color:black>고양이</option>
                             <option value="설치류" style=color:black>설치류</option>
                             <option value="조류" style=color:black>조류</option>
                             <option value="기타" style=color:black>기타</option>
                          </select>
                        </div>   

                           </div>
                        </div>    
                     </div>&nbsp;&nbsp;&nbsp;&nbsp;
                     
                     <div class="form-group">
                        <div class="form-field">
                           <div class="select-wrap">
                              <div class="icon">
                                 <span class="ion-ios-arrow-down"></span>
                              </div>

                              <div>
                          <select name="subject" id="subject" class="form-control">
                                </select>
                       </div>

                           </div>
                        </div>
                   </div>
                     <div class="form-group ml-md-4">
                        <input type="text" name="phone" class="form-control" placeholder="전화번호 (-까지 입력)">
                     </div>
                  </div>
                  <div class="d-md-flex">
                     <div class="form-group">
                        <div class="input-wrap">
                           <div class="icon">
                              <span class="ion-md-calendar"></span>
                           </div>
                           <input type="text" name="date" class="form-control appointment_date" placeholder="예약 날짜">
                        </div>
                     </div>
                     <div class="form-group ml-md-4">
                       
                          <select name="time" id="time" class="form-control">
                             <option value="" style=color:black>예약 시간 선택</option>
                             <option value="10:00am" style=color:black>10:00am</option>
                             <option value="10:30am" style=color:black>10:30am</option>
                             <option value="11:00am" style=color:black>11:00am</option>
                             <option value="11:30am" style=color:black>11:30am</option>
                             <option value="12:00pm" style=color:black>12:00pm</option>
                             <option value="1:00pm" style=color:black>1:00pm</option>
                             <option value="2:00pm" style=color:black>2:00pm</option>
                             <option value="2:30pm" style=color:black>2:30pm</option>
                             <option value="3:00pm" style=color:black>3:00pm</option>
                             <option value="3:30pm" style=color:black>3:30pm</option>
                             <option value="4:00pm" style=color:black>4:00pm</option>
                             <option value="4:30pm" style=color:black>4:30pm</option>
                             <option value="5:00pm" style=color:black>5:00pm</option>
                             <option value="5:30pm" style=color:black>5:30pm</option>
                             <option value="6:00pm" style=color:black>6:00pm</option>
                          </select>
                           
                     </div>
                  </div>
                  <div class="d-md-flex">
                     <div class="form-group">
                        <textarea name="etc" id="etc" cols="30" rows="2" class="form-control" placeholder="요청사항"></textarea>
                     </div>
                     <div class="form-group ml-md-4">
                        <input type="submit" value="예약하기" class="btn btn-secondary py-3 px-4">
                     </div>
                  </div>
               </form>
            </div>
            <div class="col-lg-6 p-5 bg-counter aside-stretch">
               <h3 class="vr">About Dr.Care Facts</h3>
               <div class="row pt-4 mt-1">
                  <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
                     <div class="block-18 p-5 bg-light">
                        <div class="text">
                           <strong class="number" data-number="30">0</strong> <span>의료진 경력</span>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
                     <div class="block-18 p-5 bg-light">
                        <div class="text">
                           <strong class="number" data-number="4500">0</strong> <span>환자 수</span>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
                     <div class="block-18 p-5 bg-light">
                        <div class="text">
                           <strong class="number" data-number="84">0</strong> <span>의료진 현황</span>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
                     <div class="block-18 p-5 bg-light">
                        <div class="text">
                           <strong class="number" data-number="300">0</strong> <span>직원 수</span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>


<!-- footer -->
<jsp:include page="/footer_cos.jsp"></jsp:include>
<!-- END footer -->
 
</body>
</html>