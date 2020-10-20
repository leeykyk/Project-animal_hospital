package board.action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import board.svc.BoardListService;
import vo.ActionForward;
import vo.BoardBean;
import vo.PageInfo;
import action.Action;

public class BoardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ArrayList<BoardBean> articleList = new ArrayList<BoardBean>(); // 각 페이지당 출력될 전체 글 목록을 저장할 ArrayList 객체 생성 부분
		int page = 1; // 목록 보기 요청에서 출력될 페이지의 기본값으로 1페이지를 설정하는 부분
		int limit = 2; // 한 페이지당 출력될 글의 개수를 설정하는 부분
		int limitPage = 3;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page")); // 페이지 '번호(숫자)'가 파라미터로 전송되어옴
		}

		BoardListService boardListService = new BoardListService();
		int listCount = boardListService.getListCount(); // 총 글의 개수를 반환하는 메서드를 호출하는 부분
		articleList = boardListService.getArticleList(page, limit); // 지정한 페이지에 출력될 글 목록을 반환하는 메서드를 호출하는 부분
		int maxPage = (int) ((double) listCount / limit + 0.95); // 총 페이지 수. 0.95를 더해서 올림 처리
		int startPage = (((int) ((double) page / limitPage + 0.9)) - 1) * limitPage + 1; // 현재 페이지에 보여줄 시작 페이지 수
		int endPage = startPage + limitPage - 1; // 현재 페이지에 보여줄 마지막 페이지 수

		if (endPage > maxPage)
			endPage = maxPage;

		PageInfo pageInfo = new PageInfo(); // 페이지에 관한 정보를 저장할 PageInfo 객체를 생성하는 부분
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);
		request.setAttribute("pageInfo", pageInfo); // PageInfo 객체를 request 영역에 속성 값으로 공유하는 부분
		request.setAttribute("articleList", articleList); // 해당 페이지에 출력될 글의 목록 정보를 request 영역에 공유하는 부분
		ActionForward forward = new ActionForward();
		forward.setPath("jsp/board/qna_board_list.jsp");
		return forward;
	}
}
