class Admin::LocationsController < Admin::ApplicationController
  inherit_resources
  actions :index, :create, :new
end
