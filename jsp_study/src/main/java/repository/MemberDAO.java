package repository;

import java.util.List;

import domain.MemberVO;

public interface MemberDAO {

	int insert(MemberVO mvo);

	MemberVO login(MemberVO mvo);

	int lastlogin(String id);

	List<MemberVO> selectList();

	MemberVO getDetail(String id);

	int modify(MemberVO mvo);

	int remove(MemberVO mvo);

}
