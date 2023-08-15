terraform {
  source = ".//test-module"
}

inputs = {
  clusters = {
    staging = {
      name        = "staging"
      agent_count = 9
    }
    dev = {
      name        = "staging"
      agent_count = 9
    }
  }
}
