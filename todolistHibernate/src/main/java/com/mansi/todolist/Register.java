package com.mansi.todolist;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

import sun.security.util.Password;

@Entity
@Component
public class Register {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String fullname;
	private String email;
	@Column(length = 10)
	private long phoneno;
	private String loginid;
	private String password;
	
	@OneToMany(mappedBy = "register")
	private List<ToDoMaker> toDoMaker;
	
	public List<ToDoMaker> getToDoMaker() {
		return toDoMaker;
	}
	public void setToDoMaker(List<ToDoMaker> toDoMaker) {
		this.toDoMaker = toDoMaker;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public long getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(long phoneno) {
		this.phoneno = phoneno;
	}
	public String getLoginid() {
		return loginid;
	}
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Register [id=" + id + ", fullname=" + fullname + ", email=" + email + ", phoneno=" + phoneno
				+ ", loginid=" + loginid + ", password=" + password +  "]";
	}
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
