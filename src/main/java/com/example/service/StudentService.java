package com.example.service;

import java.util.List;

import com.example.model.Student;

public interface StudentService {

	Student createStudent(Student Student);
    Student getStudent(Long id);
    Student editStudent(Student Student);
    void deleteStudent(Student Student);
    void deleteStudent(Long id);
    List<Student> getAllStudents(int pageNumber, int pageSiz);
    List<Student> getAllStudents();
}
