package trackbox

class UrlMappings {

  static mappings = {
    "/$controller/$action?/$id?(.$format)?"{
      constraints {
        // apply constraints here
      }
    }
  "/projects"(controller:'project')
  "/projects/$codeName"(controller:'project', action:"byCodeName")

  "/"(view:"/index")
  "500"(view:'/error')
  "404"(view:'/notFound')
  }
}
