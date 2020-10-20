<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>

<body>${id }

   <section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img" id="section-counter" style="background-image: url(images/cat.jpg);" data-stellar-background-ratio="0.5" align="center">
      <form name="loginform" action="${pageContext.request.contextPath }/memberLoginAction.me" method="post">
         <div class="container login-container">
            <div class="row">
               <div class="col-md-6 login-form-2 mg-auto">
                  <h3>로그인</h3>

                  <div class="form-group">
                     <input type="text" class="form-control" placeholder="id" value="" name="Member_ID" id="Member_ID" />
                  </div>
                  <div class="form-group">
                     <input type="password" class="form-control" placeholder="비밀번호" value="" name="Pass" id="Pass" />
                  </div>
                  <div class="form-group">
                     <a href="javascript:loginform.submit()"><input type="submit" class="btnSubmit" value="로그인" /></a>
                     <p>
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