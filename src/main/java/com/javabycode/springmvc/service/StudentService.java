package com.javabycode.springmvc.service;

import java.util.List;

import com.javabycode.springmvc.model.Student;

public interface StudentService {

	Student findById(int id);
	
	void saveStudent(Student student);
	
	void updateStudent(Student student);
	
	void deleteStudentByCode(String code);

	List<Student> findAllStudents(); 
	
	Student findStudentByCode(String code);

	boolean isStudentCodeUnique(Integer id, String code);
	
}
