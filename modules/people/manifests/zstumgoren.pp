include people::zstumgoren::applications

class people::zstumgoren {

    file {'testfile':
      path   => '/tmp/testfile',
      ensure => absent,
      mode   => 0640,
      content => "This is a test",
    }
}
