package web.board;

import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.Connection;

public class BoardDBBean {
		private static BoardDBBean instance = new BoardDBBean();
		
		private BoardDBBean() {
			
		}
		
		public static BoardDBBean getInstance() {
			return instance;
		}
		public String doA() {
			return "연결";
		}
		public void insertArticle(BoardDataBean dataBean) {
			System.out.println(dataBean);
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			//jar 파일 관리 회사 maven or gradle
			
			//jar 파일 연결되어있는지 확인 Class.froName();
			//connection 객체 연결 Drivermanager
			//mysql 3306
			//oracle1521
			//sqlserver 1433
//			System.out.println("일로오나111");
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//				System.out.println("일로오나222");
				conn = DriverManager.getConnection("jdbc:sqlserver://192.168.0.200:1433;database=damnit_20200611", "sa","8765432!" );
//				System.out.println("일로오나333");
//				System.out.println("sung");
				pstmt = conn.prepareStatement("INSERT INTO [dbo].[board]" + 
						"           ([writer]" + 
						"           ,[email]" + 
						"           ,[subject]" + 
						"           ,[passwd]" + 
						"           ,[reg_date]" + 
						"           ,[readcount]" + 
						"           ,[ref]" + 
						"           ,[re_step]" + 
						"           ,[re_level]" + 
						"           ,[content]" + 
						"           ,[ip])" + 
						"     VALUES" + 
						"           ( ? " + 
						"           , ? " + 
						"           , ? " + 
						"           , ? " + 
						"           , getdate() " + 
						"           , 0 " + 
						"           , 0 " + 
						"           , 0 " + 
						"           , 0 " + 
						"           , ? " + 
						"           ,'192.168.0.200')");
				pstmt.setString(1,  dataBean.getWriter());
				pstmt.setString(2,  dataBean.getEmail());
				pstmt.setString(3,  dataBean.getSubject());
				pstmt.setString(4,  dataBean.getPasswd());
				pstmt.setString(5,  dataBean.getContent());
				
				
				pstmt.executeUpdate();
				System.out.println("insert 성공 ");
						
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		public void insertDetailArticle(String name, String subject, String email,
														String content, String password) {
			
		}
}
