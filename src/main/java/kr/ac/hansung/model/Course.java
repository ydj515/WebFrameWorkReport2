package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@ToString
public class Course {
	
	//자동증가
	private int id;
	
	@Size(min=7, max=7, message="HansungId must be 7 chars")
	@NotEmpty(message="hansungID cannot be empty")
	private String hansungID;
	
	@Size(min=2, max=5, message="hansungName must be between 2 and 5 chars")
	@NotEmpty(message="hansungName address cannot be empty")
	private String hansungName;
	
	private int year;
	private int semester;
	
	@Size(min=7, max=7, message="courseCode must be 7 chars")
	@NotEmpty(message="courseCode cannot be empty")
	private String courseCode;
	
	@NotEmpty(message="courseName cannot be empty")
	private String courseName;
	
	@NotEmpty(message="division cannot be empty")
	private String division;
	
	// int 형이라 notEmpty 안되는듯?
	private int grade;	
}