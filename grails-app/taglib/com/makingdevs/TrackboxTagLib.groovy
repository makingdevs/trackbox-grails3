package com.makingdevs

class TrackboxTagLib {

  static defaultEncodeAs = [taglib:'none']
  //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
  static namespace = 'trk'

  def repeat = { attrs, body ->
    attrs.times?.toInteger().times { n ->
      out << body(n) + "<br/>"
      // controllerName
      // flash
      // params
      // request
      // session
    }
  }

  def appStatus = { attrs, body ->
    out << "<ul>"
    out << "<li> Exists ${Project.count()} projects </li>"
    out << "<li> Exists ${UserStory.count()} user stories </li>"
    out << "<li> Exists ${Task.count()} tasks </li>"
    out << "<li> Exists ${User.count()} users </li>"
    out << "</ul>"
  }
}
