package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.ShowCourse;
import kr.ac.hansung.service.CourseService;

@Controller
public class CourseController {

	@Autowired
	private CourseService courseService;

	@RequestMapping("/showCourse")
	public String showCourseBySemester(Model model) {

		List<ShowCourse> courses = courseService.getCourses();

		for (int i = 0; i < courses.size(); i++) {
			ShowCourse course = courses.get(i);
			System.out.println(course);
		}

		model.addAttribute("courseBySemesters", courses);

		return "showCourse";
	}

	@RequestMapping("/detail")
	public String showDetail(@RequestParam("year") int year, @RequestParam("semester") int semester,
			Model model) {

		System.out.println(year + " " + semester);

		List<Course> courses = courseService.getDetail(year, semester);

		model.addAttribute("courses", courses);

		return "detail";
	}

	@RequestMapping("/registerCourse")
	public String createCourse(Model model) {

		Course course = new Course();

		course.setSemester(1);
		course.setYear(2019);
		
		model.addAttribute("course", course);

		return "registerCourse";
	}

	@RequestMapping("/successRegisterCourse")
	public String doCreateCourse(Model model, @Valid Course course, BindingResult result) {

		course.setSemester(1);
		course.setYear(2019);

		System.out.println(course);

		if (result.hasErrors()) {
			System.out.println("===From data does not validated");
			List<ObjectError> errors = result.getAllErrors();
			for (ObjectError error : errors)
				System.out.println(error.getDefaultMessage());
			return "registerCourse";
		}

		courseService.insert(course);

		return "successRegisterCourse";
	}

	@RequestMapping("/showRegisterCourse")
	public String courseByNextSemester(Model model) {

		List<Course> courses = courseService.getCourseRegisterCourse();

		model.addAttribute("courses", courses);

		return "showRegisterCourse";
	}
}
