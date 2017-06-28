import wslite.rest.*
// Place your Spring DSL code here
beans = {

  restClient(RESTClient, "https://api.github.com"){
  }

}
