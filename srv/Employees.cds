using {sap.acte.emp as emp} from '../db/Employees';

service EmployeeService {
  entity Employees as projection on emp.Employees;

  entity EmpExperience as projection on emp.EmpExperience;
  entity CountryCode as projection on emp.CountryCode;
}