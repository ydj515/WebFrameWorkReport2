package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.Course;
import kr.ac.hansung.model.ShowCourse;

@Repository
public class CourseDAO {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getCount() {

		String SQL = "select count(*) from course";

		return jdbcTemplate.queryForObject(SQL, Integer.class);
	}

	public List<ShowCourse> getCourses() {

		// 1차로 year와 2차로 학기로 내림 차순 정렬(ASC) 
		// 
		String SQL = "select year, semester, sum(grade) AS 'gradeCount' from course WHERE year<2019 GROUP BY year, semester ORDER BY year DESC, semester DESC";

		return jdbcTemplate.query(SQL, new RowMapper<ShowCourse>() {

			@Override
			public ShowCourse mapRow(ResultSet rs, int rowNum) throws SQLException {

				ShowCourse course = new ShowCourse();

				course.setYear(rs.getInt("year"));
				course.setSemester(rs.getInt("semester"));
				course.setGradeCount(rs.getInt("gradeCount"));

				return course;
			}

		});
	}

	public List<Course> getDetail(int year, int semester) {
		String SQL = "select * from course where year=? and semester=?";

		return jdbcTemplate.query(SQL, new Object[] { year, semester }, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();

				course.setCourseName(rs.getString("courseName"));
				course.setCourseCode(rs.getString("courseCode"));
				course.setDivision(rs.getString("division"));
				course.setGrade(rs.getInt("grade"));
				course.setId(rs.getInt("id"));
				course.setHansungID(rs.getString("hansungID"));
				course.setHansungName(rs.getString("hansungName"));
				course.setSemester(rs.getInt("semester"));
				course.setYear(rs.getInt("year"));

				return course;
			}

		});
	}

	public boolean insert(Course course) {

		String courseCode = course.getCourseCode();
		String courseName = course.getCourseName();
		String division = course.getDivision();
		String hansungID = course.getHansungID();
		String hansungName = course.getHansungName();
		int grade = course.getGrade();
		int year = course.getYear();
		int semester = course.getSemester();

		String SQL = "insert into course (hansungID, hansungName, courseCode, courseName, division, grade, year, semester) values (?, ?, ?, ?, ?, ?, ?, ?)";

		return ((jdbcTemplate.update(SQL, new Object[] { hansungID, hansungName, courseCode, courseName, division,
				grade, year, semester })) == 1);
	}

	public List<Course> getCourseRegisterCourse() {
		
		String SQL = "select * from course where year=2019";

		return jdbcTemplate.query(SQL, new RowMapper<Course>() {

			@Override
			public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

				Course course = new Course();
				
				course.setCourseName(rs.getString("courseName"));
				course.setCourseCode(rs.getString("courseCode"));
				course.setDivision(rs.getString("division"));
				course.setGrade(rs.getInt("grade"));
				course.setId(rs.getInt("id"));
				course.setHansungID(rs.getString("hansungID"));
				course.setHansungName(rs.getString("hansungName"));
				course.setSemester(rs.getInt("semester"));
				course.setYear(rs.getInt("year"));

				return course;
			}

		});
	}
}
