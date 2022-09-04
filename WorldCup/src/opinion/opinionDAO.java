package opinion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DatabaseUtil;

public class opinionDAO {
	
	public int write(opinionDTO opinionDTO) {
		
		String SQL = "INSERT INTO userOpinion VALUES (?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, opinionDTO.userNickName);
			pstmt.setString(2, opinionDTO.userOpinion);
			pstmt.setInt(3, opinionDTO.opinionNumber);
			
			return pstmt.executeUpdate(); // 1
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try{if(pstmt != null) pstmt.close();} catch (Exception e) {e.printStackTrace();}
			try{if(conn != null) conn.close();} catch (Exception e) {e.printStackTrace();}
		}
		
		return -1; // DB Error
	}
	
	public ArrayList<opinionDTO> getList(int pageNumber) {
				
		ArrayList<opinionDTO> opinionList = null;
		String SQL = "SELECT * FROM userOpinion ORDER BY opinionNumber DESC LIMIT " + pageNumber * 5 + ", " + pageNumber * 5 + 6;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			opinionList = new ArrayList<opinionDTO>();
			while(rs.next()) {
				opinionDTO opinion = new opinionDTO(
						rs.getString(1),
						rs.getString(2),
						rs.getInt(3)
						);
				opinionList.add(opinion);
			}			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {if (rs != null) {rs.close();}} catch (Exception e) {e.printStackTrace();} 
			try {if (pstmt != null) {pstmt.close();}} catch (Exception e) {e.printStackTrace();} 
			try {if (conn != null) {conn.close();}} catch (Exception e) {e.printStackTrace();} 
		}
		return opinionList;
	}
	
}
