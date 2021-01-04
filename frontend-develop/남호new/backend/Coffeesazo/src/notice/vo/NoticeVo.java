package notice.vo;

import java.util.Date;

public class NoticeVo {
	
	String noticeIndex;
	String fkMemberId;
	String noticeTitle;
	Date noticeDate;
	String noticeText;
	String noticeFile;
	
	public String getNoticeIndex() {
		return noticeIndex;
	}
	public void setNoticeIndex(String noticeIndex) {
		this.noticeIndex = noticeIndex;
	}
	public String getFkMemberId() {
		return fkMemberId;
	}
	public void setFkMemberId(String fkMemberId) {
		this.fkMemberId = fkMemberId;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getNoticeText() {
		return noticeText;
	}
	public void setNoticeText(String noticeText) {
		this.noticeText = noticeText;
	}
	public String getNoticeFile() {
		return noticeFile;
	}
	public void setNoticeFile(String noticeFile) {
		this.noticeFile = noticeFile;
	}
	
}
