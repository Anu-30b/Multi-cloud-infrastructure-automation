resource "google_compute_network" "example-googlevpc" {
  name                    = "example-googlevpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "example-subnet" {
  name          = "example-subnet"
  region        = "us-central1"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.example-googlevpc.self_link
}