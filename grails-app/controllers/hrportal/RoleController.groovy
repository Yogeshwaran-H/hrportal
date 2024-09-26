package hrportal

class RoleController {

    def getRoleDetails() {}

    def addRole()
    {
        def roleName=params.roleName
        def role=new Role(
            role:roleName
        )
        role.save()
        render(view:"../employee/getDetails")
    }
}
