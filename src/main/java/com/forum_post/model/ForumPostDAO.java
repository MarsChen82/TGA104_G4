package com.forum_post.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ForumPostDAO implements ForumPostDAO_interface {

	private static DataSource dataSource = null;
	static {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/DBPool");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insert(ForumPostVO forumPostVO) {
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"INSERT INTO ForumPost (memberNo, topicNo, title, content) VALUES (?, ?, ?, ?)")) {
			ps.setInt(1, forumPostVO.getMemberNo());
			ps.setInt(2, forumPostVO.getTopicNo());
			ps.setString(3, forumPostVO.getTitle());
			ps.setString(4, forumPostVO.getContent());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(ForumPostVO forumPostVO) {
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"UPDATE ForumPost SET title = ?, content = ?, modificationTime = now() WHERE postNo = ?")) {
			ps.setString(1, forumPostVO.getTitle());
			ps.setString(2, forumPostVO.getContent());
			ps.setInt(3, forumPostVO.getPostNo());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(Integer postNo) throws SQLException {
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement("DELETE FROM ForumPost WHERE postNo = ?")) {
			ps.setInt(1, postNo);
			ps.executeUpdate();
		} catch (SQLException e) {
			throw new SQLException();
		}
	}

	@Override
	public ForumPostVO findByPostNo(Integer postNo) {
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo WHERE P.postNo = ?")) {
			ps.setInt(1, postNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return forumPostVO;
	}

	@Override
	public ForumPostVO findLastPostTimeByTopicNo(Integer topicNo) {
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo WHERE topicNo = ? ORDER BY postTime DESC LIMIT 1")) {
			ps.setInt(1, topicNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return forumPostVO;
	}

	@Override
	public List<ForumPostVO> findPostByTopicNo(Integer topicNo) {
		List<ForumPostVO> list = new ArrayList<ForumPostVO>();
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo WHERE topicNo = ?")) {
			ps.setInt(1, topicNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
				list.add(forumPostVO);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ForumPostVO> findByMemberNo(Integer memberNo) {
		List<ForumPostVO> list = new ArrayList<ForumPostVO>();
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo WHERE P.memberNo = ?")) {
			ps.setInt(1, memberNo);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
				list.add(forumPostVO);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ForumPostVO> findByKeyword(String keyword) {
		List<ForumPostVO> list = new ArrayList<ForumPostVO>();
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo WHERE title LIKE ? OR content like ?")) {
			ps.setString(1, "%" + keyword + "%");
			ps.setString(2, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
				list.add(forumPostVO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ForumPostVO> getAll() {
		List<ForumPostVO> list = new ArrayList<ForumPostVO>();
		ForumPostVO forumPostVO = null;
		try (Connection connection = dataSource.getConnection();
				PreparedStatement ps = connection.prepareStatement(
						"SELECT DISTINCT P.postNo, P.memberNo, topicNo, title, content, postTime, modificationTime, nickName, reviewResult FROM ForumPost P LEFT JOIN Member M ON P.memberNo = M.memberNo LEFT JOIN ForumReport RP ON P.postNo = RP.postNo")) {
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				forumPostVO = new ForumPostVO();
				forumPostVO.setPostNo(rs.getInt("postNo"));
				forumPostVO.setMemberNo(rs.getInt("memberNo"));
				forumPostVO.setTopicNo(rs.getInt("topicNo"));
				forumPostVO.setTitle(rs.getString("title"));
				forumPostVO.setContent(rs.getString("content"));
				forumPostVO.setPostTime(rs.getTimestamp("postTime"));
				forumPostVO.setModificationTime(rs.getTimestamp("modificationTime"));
				forumPostVO.setNickName(rs.getString("nickName"));
				forumPostVO.setReviewResult(rs.getString("reviewResult"));
				list.add(forumPostVO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}