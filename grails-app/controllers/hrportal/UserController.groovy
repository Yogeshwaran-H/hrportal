package hrportal

class UserController {

    // static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def login() {
        def userName=params?.userName
        def passWord=params?.passWord
        def userDetail=User.findByUserName(userName)
        if(userDetail?.passWord == passWord)
        {
            session.role=userDetail.role.role
            session.empid=userDetail.empid.id
            render(view:"dashboard")
        }
        else{
            render(view:"login")
        }
    }

}
