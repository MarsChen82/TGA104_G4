package com.tibame.designer.service;

import java.util.List;

import com.tibame.designer.model.DesignerOrderDAO_interface;
import com.tibame.designer.model.DesignerOrderJNDIDAO;
import com.tibame.designer.model.DesignerOrderVO;

public class DesignerOrderService {

	private DesignerOrderDAO_interface dao;

	public DesignerOrderService() {
		dao = new DesignerOrderJNDIDAO();
	}

	
	public DesignerOrderVO updateQuotation(Integer orderNo,Integer quotationAmount,String quotationDetail,byte[] quotationAtt) {

		DesignerOrderVO designerOrderVO = new DesignerOrderVO();

		designerOrderVO.setOrderNo(orderNo);
		designerOrderVO.setQuotationAmount(quotationAmount);	
		designerOrderVO.setQuotationDetail(quotationDetail);
		designerOrderVO.setQuotationAtt(quotationAtt);
		dao.updateQuotation(designerOrderVO);

		return designerOrderVO; 
	}
	
	
	//====================================================================================
	
	public DesignerOrderVO updateContract(Integer orderNo,String contractDetail,byte[] contractAtt) {

		DesignerOrderVO designerOrderVO = new DesignerOrderVO();

		designerOrderVO.setOrderNo(orderNo);
		designerOrderVO.setContractDetail(contractDetail);	
		designerOrderVO.setContractAtt(contractAtt);
		dao.updateContract(designerOrderVO);

		return designerOrderVO; 
	}

	//===================================================================================
	
	
	public DesignerOrderVO updateFinishedStatus(Integer orderNo) {

		DesignerOrderVO designerOrderVO = new DesignerOrderVO();

		designerOrderVO.setOrderNo(orderNo);		
		dao.updateFinished(designerOrderVO);
		return designerOrderVO; 
	}
	
    //===================================================================================
	public DesignerOrderVO insertOrderInquiry(Integer designerNo, Integer memberNo, Integer inquiryBudget,
			Integer inquirySize, String inquiryDetail) {

		DesignerOrderVO designerOrderVO = new DesignerOrderVO();
		designerOrderVO.setDesignerNo(designerNo);
		designerOrderVO.setMemberNo(memberNo);
		designerOrderVO.setInquiryBudget(inquiryBudget);
		designerOrderVO.setInquirySize(inquirySize);
		designerOrderVO.setInquiryDetail(inquiryDetail);
		dao.insertinquiry(designerOrderVO);
		return designerOrderVO;
	}

	// ========================================================================================

	public DesignerOrderVO getMyOrder(Integer designerOrderNo) {
		return dao.findDesignerOrder(designerOrderNo);
	}

	public DesignerOrderVO getDesignerOrder(Integer designerOrderNo) {
		return dao.findDesignerOrder(designerOrderNo);
	}

	
    //?????????????????????????????????
	public List<DesignerOrderVO> getAllMyOrder(Integer designerNo) {
		return dao.getAllMyOrder(designerNo);
	}
	
	
    //????????????????????????????????????
	public List<DesignerOrderVO> getAllMyINGOrder(Integer designerNo) {
		return dao.getAllMyINGOrder(designerNo);
	}
	
	 //??????????????????????????????????????????????????????
	public List<DesignerOrderVO> getAllMyisFinishOrder(Integer designerNo) {
		return dao.getAllMyisFinishOrder(designerNo);
	}
	
	
    //???????????????????????????????????????	
	public List<DesignerOrderVO> getMemberAllMyOrder(Integer memberNo) {
		return dao.getMemberAllMyOrder(memberNo);
	}
	
	  //?????????????????????????????????
	public List<DesignerOrderVO> getAllMyQuotation(Integer designerNo) {
		return dao.getAllMyQuotation(designerNo);
	}
	
	   //???????????????????????????????????????	
		public List<DesignerOrderVO> getMemberAllMyQuotation(Integer memberNo) {
			return dao.getMemberAllMyQuotation(memberNo);
		}
	
		
		  //?????????????????????????????????
		public List<DesignerOrderVO> getAllMyContract(Integer designerNo) {
			return dao.getAllMyContract(designerNo);
		}
		
		   //???????????????????????????????????????	
			public List<DesignerOrderVO> getMemberAllMyContract(Integer memberNo) {
				return dao.getMemberAllMyContract(memberNo);
			}
	
	

}
