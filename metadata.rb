# encoding: UTF-8
name             'go'
description      'Installs/Configures Go servers and agents'
version          '0.0.10'

supports 'ubuntu' '12.04'

recipe 'go::server', 'Installs and configures a Go server'
recipe 'go::agent', 'Installs and configures a Go agent'
recipe 'go::default',
       'Installs and configures a Go server and agent on the same node'

depends 'apt', '>= 1.9.2'
depends 'java', '1.10.0'

