package board.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.BoardDAO;
import vo.BoardBean;

public class BoardListService {

	public int getListCount() throws Exception {

		int listCount = 0; // 총 글의 개수를 저장할 변수 선언
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount(); // DB에서 총 게시판글의 개수를 반환하는 기능을 하는 메서드 호출
		close(con);
		return listCount;

	}

	public ArrayList<BoardBean> getArticleList(int page, int limit) throws Exception {

		ArrayList<BoardBean> articleList = null; // 해당 페이지에 출력될 글 목록을 저장할 ArrayList 타입의 레퍼런스 변수를 선언
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		articleList = boardDAO.selectArticleList(page, limit); // DB에서 해당 페이지에 출력될 글 목록을 반환하는 메서드를 호출
		close(con);
		return articleList;

	}
}
