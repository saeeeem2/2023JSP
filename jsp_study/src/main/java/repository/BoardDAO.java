package repository;

import java.util.List;

import domain.BoardVO;
import domain.PagingVO;

public interface BoardDAO {

	int insert(BoardVO bvo);

	List<BoardVO> selectList(PagingVO pgvo);

	int readcountUpdate(int bno);

	BoardVO getDetail(int bno);

	int update(BoardVO bvo);

	int delete(int bno);

	int getTotal(PagingVO pgvo);

	String getFilename(int bno);

}
