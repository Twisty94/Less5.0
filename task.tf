variable "node_count" {
  default = "3"
}

resource "google_compute_instance" "vm_instance" {
  count        = "${var.node_count}"
  name         = "node${count.index + 1}"
  machine_type = "e2-small"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size  = "20"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
