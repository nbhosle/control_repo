node default {
  file {'/root/README':
    ensure  => file,
    content => 'this is readme file',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
