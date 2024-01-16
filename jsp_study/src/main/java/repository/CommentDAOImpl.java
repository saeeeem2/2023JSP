package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.CommentVO;
import orm.DatabaseBuilder;

public class CommentDAOImpl implements CommentDAO {
	
	private static Logger log=LoggerFactory.getLogger(CommentDAOImpl.class);
	private SqlSession sql;
	private int isOk;
	
	public CommentDAOImpl() {
		new DatabaseBuilder();
		sql=DatabaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(CommentVO cvo) {
		log.info("Comment post check3");
		isOk=sql.insert("CommentMapper.post",cvo);
		if(isOk>0) {sql.commit();}
		return isOk;
	}

	@Override
	public List<CommentVO> getList(int bno) {
		log.info("Comment List check3");
		return sql.selectList("CommentMapper.list",bno);
	}

	@Override
	public int delete(int cno) {
		log.info("Comment remove check3");
		isOk=sql.delete("CommentMapper.del",cno);
		if(isOk>0) sql.commit();
		return isOk;
	}

	@Override
	public int update(CommentVO cvo) {
		log.info("Comment modify check3");
		isOk=sql.delete("CommentMapper.up",cvo);
		if(isOk>0) sql.commit();
		return isOk;
	}

	@Override
	public int clean(int bno) {
		int isOk=sql.delete("CommentMapper.clean",bno);
		sql.commit();
		return isOk;
	}
}
