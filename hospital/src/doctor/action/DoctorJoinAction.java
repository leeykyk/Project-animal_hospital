package doctor.action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import doctor.svc.DoctorJoinService;
import vo.ActionForward;
import vo.Doctor;
import action.Action;

public class DoctorJoinAction implements Action {
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

      DoctorJoinService doctorJoinService = new DoctorJoinService();
      
      String realFolder = ""; 
      String saveFolder = ""; 
      String encType = "UTF-8"; 
      int maxSize = 5 * 1024 * 1024;

      ServletContext context = request.getServletContext(); 
      realFolder = context.getRealPath(saveFolder); 

      MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
            new DefaultFileRenamePolicy());
      String image = multi.getFilesystemName("image"); 

      Doctor member = new Doctor(0, multi.getParameter("Doctor_ID"), multi.getParameter("name"), 
            multi.getParameter("job"), multi.getParameter("school"), multi.getParameter("career"), 
            image, multi.getParameter("Doctor_pass"), 0);

      boolean isJoinSuccess = doctorJoinService.joinHospital_office(member);

      ActionForward forward = null;

      if (isJoinSuccess) { 
         forward = new ActionForward("doctorList", true);
         forward = new ActionForward();
         forward.setRedirect(true);
         forward.setPath("/doctorListAction.sub");

      } else {  
         response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
         out.println("<script>");
         out.println("alert('회원등록실패')");
         out.println("history.back()");
         out.println("</script>");

      }
      return forward;
   }
}

      