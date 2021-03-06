include mwdevel_test_vos2
include mwdevel_test_ca

include ntp
include fetchcrl

include storm::users
include storm::gridmap

class { 'storm::storage':
  root_directories => [
    '/storage',
    '/storage/test.vo',
    '/storage/test.vo.2',
    '/storage/igi',
    '/storage/noauth',
    '/storage/test.vo.bis',
    '/storage/nested',
    '/storage/tape',
  ],
}

Class['storm::users']
-> Class['storm::storage']
-> Class['storm::gridmap']
