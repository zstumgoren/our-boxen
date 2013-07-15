include people::stumgoren::applications

class people::stumgoren {

    file {'testfile':
      path   => '/tmp/testfile',
      ensure => absent,
      mode   => 0640,
      content => "This is a test",
    }
}
