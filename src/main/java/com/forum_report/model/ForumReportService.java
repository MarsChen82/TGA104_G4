package com.forum_report.model;

import java.util.List;

public class ForumReportService {

	private ForumReportDAO_interface dao;

	public ForumReportService() {
		dao = new ForumReportDAO();
	}

	public ForumReportVO addReport(Integer postNo, Integer replyNo, Integer informant, String reportReason) {
		ForumReportVO forumReportVO = new ForumReportVO();
		forumReportVO.setPostNo(postNo);
		forumReportVO.setReplyNo(replyNo);
		forumReportVO.setInformant(informant);
		forumReportVO.setReportReason(reportReason);

		dao.insert(forumReportVO);
		return forumReportVO;
	}

	public ForumReportVO updateReportStatusByPostNo(Integer reviewer, String reviewResult, Integer postNo) {
		ForumReportVO forumReportVO = new ForumReportVO();
		forumReportVO.setReviewer(reviewer);
		forumReportVO.setReviewResult(reviewResult);
		forumReportVO.setPostNo(postNo);

		dao.updateByPostNo(forumReportVO);
		return forumReportVO;
	}

	public ForumReportVO updateReportStatusByReplyNo(Integer reviewer, String reviewResult, Integer replyNo) {
		ForumReportVO forumReportVO = new ForumReportVO();
		forumReportVO.setReviewer(reviewer);
		forumReportVO.setReviewResult(reviewResult);
		forumReportVO.setReplyNo(replyNo);

		dao.updateByReplyNo(forumReportVO);
		return forumReportVO;
	}

	public List<ForumReportVO> getReportByReportStatus(String reportStatus) {
		return dao.findByReportStatus(reportStatus);
	}

	public List<ForumReportVO> getAll() {
		return dao.getAll();
	}
}