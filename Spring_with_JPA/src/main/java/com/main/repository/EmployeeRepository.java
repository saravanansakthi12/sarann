package com.main.repository;

import org.springframework.data.repository.CrudRepository;

import com.main.model.Employee;

public interface EmployeeRepository extends CrudRepository<Employee, Integer> {

	Employee findByEmpId(int EmpId);

}
