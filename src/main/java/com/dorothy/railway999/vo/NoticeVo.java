package com.dorothy.railway999.vo;

public class NoticeVo {

		private Long no;
		private String title;
		private String content;
		private String regDate;
		
		
		public Long getNo() {
			return no;
		}
		public void setNo(Long no) {
			this.no = no;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getRegDate() {
			return regDate;
		}
		public void setRegDate(String regDate) {
			this.regDate = regDate;
		}
	
		
		@Override
		public String toString() {
			return "NoticeVo [no=" + no + ", title=" + title + ", content="
					+ content + ", regDate=" + regDate + "]";
		}
		
		
}
