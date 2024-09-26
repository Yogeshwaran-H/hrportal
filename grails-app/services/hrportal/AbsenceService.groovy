package hrportal

import grails.gorm.transactions.Transactional
import java.util.*
import groovy.time.TimeCategory

@Transactional
class AbsenceService {

    def leaveList() {
        return Absence.list();
    }

    def deleteOld(){
        
    }
}
