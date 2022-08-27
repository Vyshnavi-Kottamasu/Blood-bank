

import java.io.IOException;
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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MAIL
 */
public class MAIL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	public void doPost(HttpServletRequest req,HttpServletResponse res ){
		HttpSession ses=req.getSession();

		String  o=ses.getAttribute("email1").toString();
		String to="String.valueOf(o)";
String user ="miniproject.c6@gmail.com";
String password="adsvi123";


   Properties props=new Properties();
   props.put("mail.smtp.host", "smtp.gmail.com");
   
   props.put("mail.smtp.port", "587");
   props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");;
   
Session session=Session.getDefaultInstance(props, new Authenticator(){
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		// TODO Auto-generated method stub
		return new PasswordAuthentication(user,password);
	}
	
	
	
} );
try {
Message msg=new MimeMessage(session);
msg.setFrom(new InternetAddress(user));

	msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	msg.setSubject("Approval link");
	msg.setText("approvallink.jsp");
	
	Transport.send(msg);
	System.out.println("message succusfully");
	
} catch (AddressException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (MessagingException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();

		
		
		
		
	}
	}

}
