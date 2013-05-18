
if $::osfamily == 'redhat'
{
  yumrepo { 'epel':
    mirrorlist     => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=${::architecture}",
    failovermethod => 'priority',
    enabled        => '1',
    gpgcheck       => '0',
    descr          => "Extra Packages for Enterprise Linux 6 - ${::architecture}",
    before         => Class['polipo'],
  }
}
class{'polipo':
  proxyaddress => '0.0.0.0',
  allowedclients => '127.0.0.1, 172.16.0.0/24',
  sharedcache    => 'true',
}
