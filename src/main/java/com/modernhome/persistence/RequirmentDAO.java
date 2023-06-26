package com.modernhome.persistence;

import java.util.List;
import java.util.Map;

import com.modernhome.domain.ReqJoinVO;
import com.modernhome.domain.RequirementVO;

public interface RequirmentDAO {

	// 소요량 조회
	public List<ReqJoinVO> getRequirements();
	
	// 소요량 검색 결과
	public List<ReqJoinVO> getReqSearch(String option, String search); 
	
	// 소요량 등록
	public void regRequirement(ReqJoinVO vo);
	
	// 소요량 수정
	public void modifyRequirement(ReqJoinVO vo);
	
	// 소요량 삭제
	public void deleteRequirement(int req_id);
	
	// 완제품 별 소요량 조회
	public List<ReqJoinVO> getBOMList(int pro_id);
	
	
	
}
