terraform {
  backend "gcs" {
    bucket  = "reuuke-docker"
    prefix  = "terraform/docker-state"
  }
}
