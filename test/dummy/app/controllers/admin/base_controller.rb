class Admin::BaseController < ApplicationController
  helper_method :admin_resource, :admin_filter

  private

  def admin_resource
    resource.admin_resource
  end

  def admin_filter(*args)
    result = resource.filter_params
    args.each do |arg|
      result = result.try(:fetch, arg, nil)
    end
    result
  end
end
