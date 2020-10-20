package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.ActionForward;

public interface Action { // 각 요청을 처리하는 Action 클래스들이 공통적으로 구현해야하는 execute 메서드를 정의
	ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}