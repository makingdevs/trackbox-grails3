package mx.edu.ebc

class CommentableController {

  def index() {
    render "Hola mundo ${new Date()}"
  }
}
