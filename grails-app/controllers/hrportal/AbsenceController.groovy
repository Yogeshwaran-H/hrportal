package hrportal

// import grails.plugin.mail.MailService
import java.util.Calendar
import java.util.Date
import java.text.SimpleDateFormat
import grails.gorm.transactions.Transactional

@Transactional //if you want to save changes in db use this command with import statement

class AbsenceController {

    def leave() {
        Date curDate=new Date();
        Calendar calender=Calendar.getInstance()
        calender.setTime(curDate)
        calender.add(Calendar.MONTH,-1)
        Date previousDate=calender.getTime()
        
        def oldData=Absence.findAllByLeaveDateLessThan(previousDate)
        oldData.each{data ->
            data.delete()
        }

        def absence=new AbsenceService();
        def leaveList=absence.leaveList();
        render(view:"leave",model:[leaveList:leaveList])
    }
    
    def updateStatus() {
        def leaveid=params.leaveId
        def status=params.status
        def leaveDetail=Absence.get(leaveid)
        leaveDetail.status=status
        leaveDetail.save()
        redirect(action:'leave')
    }

    def applyLeave() { }

    def addLeave() {
        def leaveDate=params.leaveDate
        def leaveDays=params.leaveDays

        Date curDate=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date fLeaveDate=dateFormat.parse(leaveDate)
        if(!fLeaveDate.before(curDate))
        {
            def empIns=Employee.get(session.empid)
            def updateLeave=new Absence(
                leaveDate:leaveDate,
                empid:empIns,
                leaveDays:leaveDays,
                status:"pending"
            )
            updateLeave.save()
        }
        render(view:"../user/dashboard")
    }

}
