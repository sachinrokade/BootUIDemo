package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.example.model.Student;
import com.example.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository StudentRepository;

    @Override
    public Student createStudent(Student Student) {
        return StudentRepository.save(Student);
    }

    @Override
    public Student getStudent(Long id) {
      return StudentRepository.findOne(id);
    }

    @Override
    public Student editStudent(Student Student) {
        return StudentRepository.save(Student);
    }

    @Override
    public void deleteStudent(Student Student) {
        StudentRepository.delete(Student);
    }

    @Override
    public void deleteStudent(Long id) {
        StudentRepository.delete(id);
    }

    @Override
    public List<Student> getAllStudents(int pageNumber, int pageSize) {
        return StudentRepository.findAll(new PageRequest(pageNumber, pageSize)).getContent();
    }

    @Override
    public List<Student> getAllStudents() {
        return StudentRepository.findAll();
    }
}
