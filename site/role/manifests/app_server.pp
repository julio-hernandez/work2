class role::app_server{
  include profile::web
  include profile::db
  include profile::base
}
