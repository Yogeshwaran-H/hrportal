package hrportal

class UrlMappings {

    static mappings = {

        "/$controller/$action?/$id?" {
            constraints { }
        }
        
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/user/login")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
