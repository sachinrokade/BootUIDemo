package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.example.model.Student;
import com.example.service.StudentServiceImpl;


@Controller
public class StudentController {

	@Autowired
	public StudentServiceImpl studser;
	
	
	List<Student> stud=new ArrayList<>();
	
    @GetMapping({"/student_add","/"})
    public String formSchool_add() 
    {
        return "studentadd";
    }
    
    @PostMapping("/studentInsert")
    public String formStudentInsert(@ModelAttribute("StudentModelAttribute") Student StudentModel,Model model) 
    {
    	
    	System.out.println("working............"+stud);
    	studser.createStudent(StudentModel);
    	model.addAttribute("listStudent",studser.getAllStudents());
        return "studentadd";
    }
    
    @DeleteMapping("/delete")
    public String deleteStudent(@RequestBody Student stud)
    {
    	studser.deleteStudent(stud);
    	studser.createStudent(stud);
        return "redirect:/student";
    }
}