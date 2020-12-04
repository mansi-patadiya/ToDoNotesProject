package com.mansi.todolist;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;


@Component
@Entity
@Table(name="notemaker")
public class ToDoMaker {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	@Column(length = 1500)
	private String Description;
	@Temporal(TemporalType.DATE)
	private Date addDate;
	
	
	@ManyToOne
	private Register register;
	
	public Register getRegister() {
		return register;
	}
	public void setRegister(Register register) {
		this.register = register;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public ToDoMaker() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ToDoMaker(int id, String title, String description, Date addDate) {
		super();
		this.id = id;
		this.title = title;
		Description = description;
		this.addDate = addDate;
	}
	
}
