package com.main.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.main.model.Employee;
import com.main.repository.EmployeeRepository;


@RestController
public class AppController {
	@Autowired
	EmployeeRepository employeeRepository;
	
	
	@RequestMapping("/")
	public ModelAndView welcome(@ModelAttribute("emp") Employee employee) {
		return new ModelAndView ("Welcome");
	}
	
	@RequestMapping(value="/createnew")
	public ModelAndView create(@ModelAttribute("emp") Employee employee)
	{
		employeeRepository.save(employee);
		return new ModelAndView ("redirect:/ListEmployee");
	}
	
	@RequestMapping(value="/ListEmployee")
	public ModelAndView listEmployee(@ModelAttribute("emp") Employee employee)
	{
		List<Employee> ls = (List<Employee>) employeeRepository.findAll();
		return new ModelAndView ("ListEmployee","list",ls);
	}
	
	
	
@RequestMapping(value="/delete")
	public ModelAndView deleteEmployee(@ModelAttribute("emp") Employee employee,HttpServletRequest request)
	{
		int id =Integer.parseInt(request.getParameter("id"));
		//System.out.println("id "+id);
		employeeRepository.delete(id);
		return new ModelAndView ("redirect:/ListEmployee");
	}
	
	@RequestMapping(value="/edit")
	public ModelAndView editEmployee(@ModelAttribute("emp")Employee employee,HttpServletRequest request)
	{
		int id =Integer.parseInt(request.getParameter("id"));
		System.out.println("ID "+id);
		HttpSession session = request.getSession();
		session.setAttribute("id",id);
		List<Employee> list =(List<Employee>) employeeRepository.findAll();
		
		Employee e = employeeRepository.findOne(id);
		//System.out.println("Ename "+e.getEmpName());
        ModelAndView model = new ModelAndView("EditEmployee", "list", list);
        model.addObject("employee", e);
        return model;
	}
	
	@RequestMapping("/update")
    public ModelAndView update(@ModelAttribute("emp") Employee employee, HttpServletRequest req) 
	{
          HttpSession session = req.getSession();
          int id = (int) session.getAttribute("id");
          Employee employeeDao = employeeRepository.findByEmpId(id);      
          employeeDao.setEmpName(employee.getEmpName());
          employeeDao.setEmpPlace(employee.getEmpPlace());
          employeeDao.setEmail(employee.getEmail());
          employeeDao.setPassword(employee.getPassword());
          employeeDao.setPhoneNo(employee.getPhoneNo());          
         employeeRepository.save(employeeDao);
          return new ModelAndView("redirect:/ListEmployee");
    }


}
