require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use SessionsController
use DiscsController
use UsersController
use Rack::MethodOverride
run ApplicationController
