package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.BoardController;
import domain.BoardVO;
import domain.PagingVO;
import repository.BoardDAO;
import repository.BoardDAOImpl;

public class BoardServiceImpl implements BoardService {
	
	private static final Logger log=LoggerFactory.getLogger(BoardController.class);
	private BoardDAO bdao;
	
	public BoardServiceImpl() {
		bdao=new BoardDAOImpl(); //class로 생성 bdao구현 객체 생성
	}

	@Override
	public int register(BoardVO bvo) {
		log.info(">>>> insert check 2");
		return bdao.insert(bvo);

	}

	@Override
	public List<BoardVO> getList(PagingVO pgvo) {
		log.info(">>>> list check 2");
		return bdao.selectList(pgvo);
	}

	@Override
	public BoardVO getDetail(int bno) {
		log.info(">>>> detail check 2");
		//detail 체크 시 readcount +1
		int isOk=bdao.readcountUpdate(bno);
		return bdao.getDetail(bno);
	}

	@Override
	public int modify(BoardVO bvo) {
		log.info(">>>> modify check 2");
		return bdao.update(bvo);
	}

	@Override
	public int remove(int bno) {
		log.info(">>>> remove check2");
		return bdao.delete(bno);
	}

	@Override
	public int getTotal(PagingVO pgvo) {
		log.info(">>>> totalCount check 2");
		return bdao.getTotal(pgvo);
	}

	@Override
	public String getFilename(int bno) {
		log.info(">>>>> filename check 2");
		return bdao.getFilename(bno);
	}

}
