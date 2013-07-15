class people::zstumgoren {

  include people::zstumgoren::applications

  file {'testfile':
    path   => '/tmp/testfile',
    ensure => absent,
    mode   => 0640,
    content => "This is a test",
  }
}

