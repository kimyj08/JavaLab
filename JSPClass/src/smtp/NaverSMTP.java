package smtp;

import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NaverSMTP {
	
	private final Properties serverInfo; // 서버 정보
	private final Authenticator auth;   // 인증 정보
	
	public NaverSMTP() { // 생성자
		serverInfo=new Properties();
		serverInfo.put("mail.smtp.host","stmp.naver.com"); // smtp 사용할 메일서버
		serverInfo.put("mai.smtp.port","465"); // 포트번호
		serverInfo.put("mai.smtp.starttls","true");
		serverInfo.put("mai.smtp.auth","true");
		serverInfo.put("mai.smtp.debug","true");
		serverInfo.put("mai.smtp.soketFactory.port","465"); // 포트번호
		serverInfo.put("mail.smtp.soketFactory.class","javax.net.ssl.SSLSoketFactoty");
		serverInfo.put("mail.smtp.soketFactory.fallback","false");
	
	// 네이버 사용자 정보
	auth=new Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("네이버아이디","비밀번호");
			}
		};
	}
	
	public void emailSending(Map<String, String> mailInfo) throws AddressException, MessagingException {
		// 연결
		Session session=Session.getInstance(serverInfo,auth);
		session.setDebug(true);
		// 메시지 전송
		MimeMessage msg=new MimeMessage(session);
		msg.setFrom(new InternetAddress(mailInfo.get("from"))); // 보내는 사람
		msg.addRecipient(Message.RecipientType.TO,
				new InternetAddress(mailInfo.get("to"))); // 받는 사람
		msg.setSubject(mailInfo.get("subject")); // 제목
		msg.setContent(mailInfo.get("content"),mailInfo.get("format")); // 내용
		
		// 전송
		Transport.send(msg);
	}
}
