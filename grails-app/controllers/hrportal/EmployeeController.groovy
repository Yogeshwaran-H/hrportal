package hrportal

import grails.gorm.transactions.Transactional

@Transactional

class EmployeeController {

    def info() {
        def employee=new EmployeeService();
        def employeeDetail=employee.allEmployee();
        render(view:"employeeinfo",model:[employeeDetail:employeeDetail])
    }

    def getDetails() { }

    def addEmployee()
    {
        def name=params.name
        def role=params.role
        def salary=params.salary
        def imageSrc=params.imageSrc
        def userName=params.userName
        def passWord=params.passWord
        def roleId=Role.findByRole(role)
        
        def newEmployee=new Employee(
            role:roleId,
            name:name,
            salary:salary,
            imageSrc:imageSrc
        )
        newEmployee.save()
        
        def empid=Employee.findByName(name)
        def newLogin=new User(
            role:roleId,
            name:name,
            userName:userName,
            passWord:passWord,
            empid:empid.id
        )
        newLogin.save()
        redirect(action:"info")
    }
}