%w(python-virtualenv python-dev build-essential libpq-dev cython ruby1.9.1 ruby1.9.1-dev).each do |package_name|
  package package_name do
    action :install
  end
end

%w(fpm deb-s3).each do |name|
  gem_package name do
    action :install
  end
end

include_recipe 'balanced-postgres::client'

include_recipe 'balanced-app'
