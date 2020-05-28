package BeanClasses;

import java.util.Date;
import java.util.Set;

public class SignUp
{
	private String email;
	private String fullname;
	private String contact;
	private String password;
	private String gender;
	private String PID;
	private int verified;
	private Date sdate;
	private String securityques;
	private String securityans;
	
	
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getVerified() {
		return verified;
	}
	public void setVerified(int verified) {
		this.verified = verified;
	}
	public String getPID() {
		return PID;
	}
	public void setPID(String pID) {
		PID = pID;
	}
	
	public String getSecurityques() {
		return securityques;
	}
	public void setSecurityques(String securityques) {
		this.securityques = securityques;
	}
	public String getSecurityans() {
		return securityans;
	}
	public void setSecurityans(String securityans) {
		this.securityans = securityans;
	}
	
}
