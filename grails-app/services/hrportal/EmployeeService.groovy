package hrportal

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    def allEmployee() {
        return Employee.list();
    }
}
