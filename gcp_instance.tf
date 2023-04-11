provider "google" {
  project = "terraform-382717"
  region  = "us-central1"
}

resource "google_compute_instance" "example-googleinst" {
  name         = "example-googleinst"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = "your-ssh-public-key"
}
}