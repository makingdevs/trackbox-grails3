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
  "/projects/$codeName/backlog"(controller:'backlog')
  "/projects/$codeName/save"(controller:'backlog', action:'save')

  "/"(view:"/index")
  "500"(view:'/error')
  "404"(view:'/notFound')
  }
}
