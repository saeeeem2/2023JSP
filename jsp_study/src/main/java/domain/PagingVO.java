package domain;

public class PagingVO {
	
	private int pageNo; //화면에 출력되는 페이지네이션 번호
	private int qty; //한 페이지당 보여지는 게시글 수(10개)
	
	//검색에 관한 멤버변수 추가
	private String type; //검색 대상
	private String keyword; //검색어
	
	
	public PagingVO() { //처음 리스트로 들어갔을 떄 규칙, 페이지네이션을 클릭하기 전 기본 값 설정
		this.pageNo=1;
		this.qty=10;
	}
	
	//페이지네이션을 클릭하면 설정되는 값
	public PagingVO(int pageNo, int qty, String type, String keyword) {
		this.pageNo=pageNo;
		this.qty=qty;
		this.type=type;
		this.keyword=keyword;
	}
	
	public  int getPageStart() {//db에서 사용되는 시작 번지
		// 1페이지일 때 : 0, 2페이지 일 때 : 10, 3페이지 일 때 : 20
		return(pageNo-1)*qty;
	}
	
	public String[] getTypeToArray() {
		return this.type==null ? new String[] {} : this.type.split("");
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "PagingVO [pageNo=" + pageNo + ", qty=" + qty + ", type=" + type + ", keyword=" + keyword + "]";
	}

	
}
