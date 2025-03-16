provider "google" {
  project     = "central-apex-450419-r2"
  region      = "europe-west1"
  zone        = "europe-west1-c"
}



resource "google_compute_instance" "ansible-host" {
  provider = google
  name = "ansible-host"
  machine_type = "e2-medium"
  network_interface {
    network = "default"
    access_config {}
  }
  tags = ["get-internet-access"]
  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
      
    }
  }

  allow_stopping_for_update = true

  metadata = {
    startup-script = file("ansible_setup.sh")
  }  
}



resource "google_compute_instance" "iis-vm-1" {
  provider = google
  name = "iis-vm-1"
  machine_type = "e2-medium"
  network_interface {
    network = "default"
    access_config {}
  }
  tags = ["get-internet-access"]
  boot_disk {
    initialize_params {
      image = "windows-2022-core"
      
    }
  }
  allow_stopping_for_update = true

  metadata = {
    windows-startup-script-ps1 = file("iis_install.ps1")

  }  
}



resource "google_compute_instance" "iis-vm-2" {
  provider = google
  name = "iis-vm-2"
  machine_type = "e2-medium"
  network_interface {
    network = "default"
    access_config {}
  }
  tags = ["get-internet-access"]
  boot_disk {
    initialize_params {
      image = "windows-2022-core"
      
    }
  }
  allow_stopping_for_update = true

  metadata = {
    windows-startup-script-ps1 = file("iis_install.ps1")
  }  
}



resource "google_compute_instance" "srv-vm-1" {
  provider = google
  name = "srv-vm-1"
  machine_type = "e2-medium"
  network_interface {
    network = "default"
    access_config {}
  }
  tags = ["get-internet-access"]
  boot_disk {
    initialize_params {
      image = "windows-2022-core"
      
    }
  }
  allow_stopping_for_update = true

}

