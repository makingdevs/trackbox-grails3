package com.makingdevs

import grails.test.mixin.TestFor
import grails.test.mixin.Mock
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(ProjectService)
@Mock([Project])
class ProjectServiceSpec extends Specification {

  def setup() {
  }

  def cleanup() {
  }

  void "starting a project"() {
    given:
    Project p = new Project(
      owner:owner,
      codeName:codeName,
      description:description,
      publicVisible:publicVisible)
    when:
      Project projectCreated = service.startNewProject(p)
    then:
      projectCreated.id
    where:
    owner        | codeName          | description     | publicVisible
    "makingdevs" | "SECRETE_PROJECT" | "A description" | true
  }
}
