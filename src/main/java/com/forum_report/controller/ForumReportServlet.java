package com.forum_report.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forum_report.model.ForumReportService;

@WebServlet("/front-end/forum/forumreport.do")
public class ForumReportServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

//		// 透過檢舉編號找
//		if ("getReportByReportNo".equals(action)) {
//			List<String> errorMessages = new LinkedList<String>();
//			request.setAttribute("errorMessages", errorMessages);
//
//			/************************ 1 ************************/
//			String str = request.getParameter("reportNo");
//			if (str.trim().length() == 0) {
//				errorMessages.add("檢舉編號未輸入");
//			}
//
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			Integer reportNo = null;
//			try {
//				reportNo = Integer.valueOf(str);
//			} catch (Exception e) {
//				errorMessages.add("檢舉編號格式不正確");
//			}
//
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 2 ************************/
//
//			ForumReportService forumReportService = new ForumReportService();
//			ForumReportVO ForumReportVO = forumReportService.getReportByReportNo(reportNo);
//			if (ForumReportVO == null) {
//				errorMessages.add("查無資料");
//			}
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 3 ************************/
//			request.setAttribute("ForumReportVO", ForumReportVO);
//			RequestDispatcher successView = request.getRequestDispatcher("/forumreport/getReportByReportNo.jsp");
//			successView.forward(request, response);
//
//		}
//
//		// 透過案件處理狀態找
//		if ("getReportByReportStatus".equals(action)) {
//			List<String> errorMessages = new LinkedList<String>();
//			request.setAttribute("errorMessages", errorMessages);
//
//			/************************ 1 ************************/
//			String str = request.getParameter("reportStatus");
//			if ((str.trim()).length() == 0) {
//				errorMessages.add("案件處理狀態未輸入");
//			}
//
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 2 ************************/
//
//			ForumReportService forumReportService = new ForumReportService();
//			List<ForumReportVO> list = forumReportService.getReportByReportStatus(str);
//			if (list.isEmpty()) {
//				errorMessages.add("查無資料");
//			}
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 3 ************************/
//			request.setAttribute("list", list);
//			RequestDispatcher successView = request.getRequestDispatcher("/forumreport/getMultipleReports.jsp");
//			successView.forward(request, response);
//
//		}
//
//		// 透過審核結果找
//		if ("getReportByReviewResult".equals(action)) {
//			List<String> errorMessages = new LinkedList<String>();
//			request.setAttribute("errorMessages", errorMessages);
//
//			/************************ 1 ************************/
//			String str = request.getParameter("reviewResult");
//			if ((str.trim()).length() == 0) {
//				errorMessages.add("審核結果未輸入");
//			}
//
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 2 ************************/
//
//			ForumReportService forumReportService = new ForumReportService();
//			List<ForumReportVO> list = forumReportService.getReportByReviewResult(str);
//			if (list.isEmpty()) {
//				errorMessages.add("查無資料");
//			}
//			if (!errorMessages.isEmpty()) {
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/selectForumReport.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 3 ************************/
//			request.setAttribute("list", list);
//			RequestDispatcher successView = request.getRequestDispatcher("/forumreport/getMultipleReports.jsp");
//			successView.forward(request, response);
//
//		}
//
//		// 刪除
//		if ("deleteFromAll".equals(action)) {
//			List<String> errorMessages = new LinkedList<String>();
//			request.setAttribute("errorMessages", errorMessages);
//
//			/************************ 1 ************************/
//			Integer reportNo = Integer.valueOf(request.getParameter("reportNo"));
//
//			/************************ 2 ************************/
//
//			ForumReportService forumReportService = new ForumReportService();
//			forumReportService.deleteReport(reportNo);
//
//			/************************ 3 ************************/
//			RequestDispatcher successView = request.getRequestDispatcher("/forumreport/listAllReports.jsp");
//			errorMessages.add("刪除成功");
//			successView.forward(request, response);
//
//		}
//
//		// 修改
//		if ("updateFromAll".equals(action)) {
//
//			/************************ 1 ************************/
//			Integer reportNo = Integer.valueOf(request.getParameter("reportNo"));
//
//			/************************ 2 ************************/
//			ForumReportService forumReportService = new ForumReportService();
//			ForumReportVO forumReportVO = forumReportService.getReportByReportNo(reportNo);
//
//			/************************ 3 ************************/
//			request.setAttribute("forumReportVO", forumReportVO);
//			RequestDispatcher successView = request.getRequestDispatcher("/forumreport/updateByReportNo.jsp");
//			successView.forward(request, response);
//		}
//		if ("update".equals(action)) {
//			List<String> errorMessages = new LinkedList<String>();
//			request.setAttribute("errorMessages", errorMessages);
//
//			/************************ 1 ************************/
//			Integer reportNo = Integer.valueOf(request.getParameter("reportNo"));
//			Integer reviewer = Integer.valueOf(request.getParameter("reviewer"));
//
//			String reportStatus = request.getParameter("reportStatus");
//			if (reportStatus.trim().length() == 0) {
//				errorMessages.add("請輸入案件處理狀態");
//			}
//
//			String reviewResult = request.getParameter("reviewResult");
//			if (reviewResult.trim().length() == 0) {
//				errorMessages.add("請輸入審核結果");
//			}
//
//			ForumReportService forumReportService = new ForumReportService();
//			ForumReportVO forumReportVO = forumReportService.getReportByReportNo(reportNo);
//			forumReportVO.setReviewer(reviewer);
//			forumReportVO.setReportStatus(reportStatus);
//			forumReportVO.setReviewResult(reviewResult);
//			forumReportVO.setReportNo(reportNo);
//
//			if (!errorMessages.isEmpty()) {
//				request.setAttribute("forumReportVO", forumReportVO);
//				RequestDispatcher failureView = request.getRequestDispatcher("/forumreport/updateByReportNo.jsp");
//				failureView.forward(request, response);
//				return;
//			}
//
//			/************************ 2 ************************/
//			forumReportService.updateReportStatusAndReviewResult(reviewer, reportStatus, reviewResult, reportNo);
//			forumReportVO = forumReportService.getReportByReportNo(reportNo);
//			/************************ 3 ************************/
//			request.setAttribute("forumReportVO", forumReportVO);
//			RequestDispatcher successViewe = request.getRequestDispatcher("/forumreport/getReportByReportNo.jsp");
//			successViewe.forward(request, response);
//		}

		// ============================ 新增檢舉 ============================
		if ("insertReport".equals(action)) {
			/************************ 1 ************************/
			Integer topicNo = Integer.valueOf(request.getParameter("topicNo"));
			Integer informant = Integer.valueOf(request.getParameter("informant"));
			Integer postNo = Integer.valueOf(request.getParameter("postNo"));

			String reportReason = request.getParameter("reportReason");
			if (reportReason.trim().length() == 0) {
				response.sendRedirect("posts.do?topicNo=" + topicNo + "&postNo=" + postNo);
				return;
			}

			Integer replyNo;

			/************************ 2 ************************/
			ForumReportService forumReportService = new ForumReportService();
			if (request.getParameter("replyNo").trim().length() == 0) {
				forumReportService.addReport(postNo, null, informant, reportReason);
			} else {
				replyNo = Integer.valueOf(request.getParameter("replyNo"));
				forumReportService.addReport(null, replyNo, informant, reportReason);
			}

			/************************ 3 ************************/
			response.sendRedirect("posts.do?topicNo=" + topicNo + "&postNo=" + postNo);
		}

	}
}
