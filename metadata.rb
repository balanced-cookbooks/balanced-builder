name             'balanced-builder'
maintainer       'Balanced'
maintainer_email 'dev@balancedpayments.com'
license          'MIT'
description      'Installs/Configures balanced-builder'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'apt_transport_s3', '~> 0.1.2'
depends          'fpm', '~> 0.0.1'
depends          'balanced-python'
