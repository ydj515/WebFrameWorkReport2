package kr.ac.hansung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.dao.CourseDAO;
import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.ShowCourse;

@Service
public class CourseService {
	@Autowired
	private CourseDAO courseDAO;

	public List<ShowCourse> getCourses() {
		return courseDAO.getCourses();
	}

	public List<Course> getDetail(int year, int semester) {
		return courseDAO.getDetail(year, semester);
	}

	public List<Course> getCourseRegisterCourse() {
		return courseDAO.getCourseRegisterCourse();
	}

	public int getCount() {
		return courseDAO.getCount();
	}

	public void insert(Course course) {
		courseDAO.insert(course);
	}
}
