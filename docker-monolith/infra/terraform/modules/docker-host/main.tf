resource "google_compute_instance" "docker-host" {
  name         = "docker-host-${count.index +1 }"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  count        = "${var.count}"
  tags         = ["docker-host"]

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network = "default"

    access_config = {
    }
  }

  metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name    = "firewall-puma"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["docker-host"]
}
