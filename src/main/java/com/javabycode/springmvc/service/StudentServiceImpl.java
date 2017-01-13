package com.javabycode.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javabycode.springmvc.dao.StudentDao;
import com.javabycode.springmvc.model.Student;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao dao;
	
	public Student findById(int id) {
		return dao.findById(id);
	}

	public void saveStudent(Student student) {
		dao.saveStudent(student);
	}
	
	public void updateStudent(Student student) {
		Student entity = dao.findById(student.getId());
		if(entity!=null){
			entity.setName(student.getName());
			entity.setEnteringDate(student.getEnteringDate());
			entity.setNationality(student.getNationality());
			entity.setCode(student.getCode());
			//dao.saveOrUpdate(student);
		}
	}

	public void deleteStudentByCode(String ssn) {
		dao.deleteStudentByCode(ssn);
	}
	
	public List<Student> findAllStudents() {
		return dao.findAllStudents();
	}

	public Student findStudentByCode(String ssn) {
		return dao.findStudentByCode(ssn);
	}

	public boolean isStudentCodeUnique(Integer id, String ssn) {
		Student student = findStudentByCode(ssn);
		return ( student == null || ((id != null) && (student.getId() == id)));
	}
	
}
