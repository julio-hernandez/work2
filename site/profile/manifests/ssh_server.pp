class profile::ssh_server{
  package {'openssh-server':
    ensure =>presem,
  }
  service{'sshd':
    ensure =>running,
    enable =>true,
  }
  ssh_authorized_key{'root@master.puppet.vm':
    ensure =>present,
    user =>'root',
    type =>'ssh-rsa',
    key =>'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLsNpWDVh/5C2D48B/RpHjSglQBkMkd3FLiCZoYBTBLIblBg05UXsF5qShL0q+X/ZkDep9udk4CK9vgbPvjGhaFG9anCmixaDEo5blb8O83uv9YoVNIxpVmLHmPdmQrR2ALU8YMJ4z5M7NVoFPPI7CMym/HlDMiCyLU2Y53kvLAgm7ODlJC+YIrXhXZIb2ZlbbcBoN8f/ohE3QDEXuJrFhhhsBnrFJeCj5RF4syj1IwH0e/SzG28RzWAHJ/ZUv0Ki1b7kLCLJd00BIs1dGeZ/Qk1UbeTUmhHzHJ2mmCGmhV8SgTS3NUQEF/WkqnzmbPu8lSrwRhpKmp/4WTIy+ZnKH root@master.puppet.vm',
  }
}
