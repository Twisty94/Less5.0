provider "google" {
  project     = "affable-tribute-284117"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "${file("gcp-account.json")}"
}
