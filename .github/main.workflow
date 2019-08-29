workflow "Build and Publish" {
  on = "push"
  branch = "master"
}

action "Build Dockerfiles" {
  uses = "actions/action-builder/docker@master"
  runs = "make"
  args = "build"
}

action "Docker Login" {
  needs = ["Build"]
  uses = "actions/docker/login@master"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

