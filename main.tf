terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.61.0"
    }
  }
}

provider "google" {
  project = "local-project"
}

resource "google_pubsub_topic" "example" {
  name = "example-topic"

  labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"
}