terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
}

resource "yandex_compute_instance" "vm-" {
  count = 2
  name = "pr5-2-sergey-kim-${count.index}"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = false
  }

  metadata = {
    user-data = "${file("/home/student/example-01/meta.txt")}"
  }
}
