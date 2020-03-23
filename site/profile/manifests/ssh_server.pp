class profile::ssh_server{
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_jey {'root@master.puppet.vm':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCr0mp2CLt5U4Bin2G3MtGxG8wxqrdsDX9Pv0uKcA+Th8o0gf1GAfcIu0ZSx8hUHfkO5T1fjlJ0wkhPaTXCUtluqOP40GkF+SlbtgnbmJHrKYEMKeXshSyWtMSq8WkvS7e45l5Wh9ijwGtFMwxHLum2s1ua0YFsainzWaNgs3GjczX1wPRkolHDQkLKajsURBZLWNGraauT14XqKdfXFloNWenTAF5lMfHo+KSYYyDAY7KmMBvkfzSzDpmvuyEu8A6XvguaawB1xtrHM2s9dXCFsUEbqBr5QuU1z9/FyzkdU7UmPDBlOH+Y3TbuzjJdGWxwCaKgOOLkZjCeGul0PcMJ',
  }
}
