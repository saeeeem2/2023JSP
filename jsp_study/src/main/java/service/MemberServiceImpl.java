pripackage service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import repository.MemberDAO;
import repository.MemberDAOImpl;

public class MemberServiceImpl implements MemberService {
	
	private static final Logger log=LoggerFactory.getLogger(MemberServiceImpl.class);
	private MemberDAO mdao; //repository=>interface로 생성
	
	public MemberServiceImpl() {
		mdao=new MemberDAOImpl();
	}

	@Override
	public int register(MemberVO mvo) {
		log.info(">>> join check 2");
	return mdao.insert(mvo);
	}

	@Override
	public MemberVO login(MemberVO mvo) {
		log.info(">>> login check 2");
		return mdao.login(mvo);
	}

	@Override
	public int lastlogin(String id) {
		log.info(">>> lastLogin check 2");
		return mdao.lastlogin(id);
	}

	@Override
	public List<MemberVO> getList() {
		log.info(">>>> list check 2");
		return mdao.selectList();
	}

	@Override
	public MemberVO getDetail(String id) {
		log.info(">>>> detail check 2");
		return mdao.getDetail(id);
	}

	@Override
	public int modify(MemberVO mvo) {
		log.info(">>> modify check 2");
		return mdao.modify(mvo);
	}

	@Override
	public int remove(MemberVO mvo) {
		log.info(">>>> remove check 2");
		return mdao.remove(mvo);
	}	
}
