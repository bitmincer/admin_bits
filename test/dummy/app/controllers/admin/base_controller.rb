class Admin::BaseController < ApplicationController
  helper_method :admin_resource, :admin_filter

  private

  def admin_resource
    resource.admin_resource
  end

  def admin_filter(name)
    resource.filter_params[name]
  end
end