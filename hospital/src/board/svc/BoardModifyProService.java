package board.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import vo.BoardBean;
import dao.BoardDAO;

public class BoardModifyProService {

	public boolean isArticleWriter(int board_num, String pass) throws Exception {

		boolean isArticleWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter = boardDAO.isArticleBoardWriter(board_num, pass);
		// DB에 저장된 데이터를 사용하여 수정 작업을 하는 사용자가 글을 작성한 사용자인지를 판단하는 메서드를 호출

		close(con);
		return isArticleWriter;
	}

	public boolean modifyArticle(BoardBean article) throws Exception {
		// TODO Auto-generated method stub

		boolean isModifySuccess = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateArticle(article); // 수정 정보를 파라미터 값으로 전송받아 DB에서 글 정보를 수정하는 메서드를 호출

		if (updateCount > 0) {
			commit(con);
			isModifySuccess = true;
		} else {
			rollback(con);
		}

		close(con);
		return isModifySuccess;

	}
}
