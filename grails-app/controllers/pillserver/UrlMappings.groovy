package pillserver

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        get "/user/$id"(controller:"usuario", action:"user")


        "/"(view:"/usuario/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
