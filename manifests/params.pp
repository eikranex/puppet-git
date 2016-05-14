# Class: git::params
#
class git::params {
  $sources_manage  = false
  $sources_repo    = $::facts['osfamily'] ? {
    'Ubuntu' => 'ppa:git-core/ppa',
    default  => '',
  }
  $sources_ensure  = present
  $package_ensure  = latest
  $package_name    = 'git'
}