package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import domain.PagingVO;
import orm.DatabaseBuilder;

public class BoardDAOImpl implements BoardDAO {
	private static final Logger log=LoggerFactory.getLogger(BoardDAOImpl.class);

	//db연결
	private SqlSession sql;
	public BoardDAOImpl() {
		new DatabaseBuilder();
		sql=DatabaseBuilder.getFactory().openSession();
	}
	@Override
	public int insert(BoardVO bvo) {
		log.info(">>>> insert check 3");
		//실제 DB에 저장=> mybatis / mapper
		//sql.insert(mapperNamespace.id로 인식)
		int isOk=sql.insert("BoardMapper.add",bvo);
		//insert,update, delete 시 DB가 변경되는 구문은 commit이 필요
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}
	@Override
	public List<BoardVO> selectList(PagingVO pgvo) {
		log.info(">>>> list check 3");
		return sql.selectList("BoardMapper.list",pgvo);
	}
	@Override
	public int readcountUpdate(int bno) {
		log.info(">>>> detail Readcount update check");
		int isOk=sql.update("BoardMapper.read",bno);
		if(isOk>0) {sql.commit();}
		return isOk;
	}
	@Override
	public BoardVO getDetail(int bno) {
		log.info(">>>> detail check 3");
		return sql.selectOne("BoardMapper.detail",bno);
	}
	@Override
	public int update(BoardVO bvo) {
		log.info(">>>> modify check 3");
		int isOk=sql.update("BoardMapper.up",bvo);
		if(isOk>0) {
			sql.commit();
		}
		return 0;
	}
	@Override
	public int delete(int bno) {
		log.info(">>>> remove check3");
		int isOk=sql.delete("BoardMapper.del",bno);
		if(isOk>0) {
			sql.commit();
		}
		return isOk;
	}
	@Override
	public int getTotal(PagingVO pgvo) {
		log.info(">>>> totalCount check 3");
		return sql.selectList("BoardMapper.total",pgvo).size();
	}
	@Override
	public String getFilename(int bno) {
		log.info(">>>>> filename check 3");
		return sql.selectOne("BoardMapper.filename",bno);
	}

}
