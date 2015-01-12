class ViewerController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :verify_site

  include(
    ApplicationHelper, 
    RoutingHelper,
    ErrorsHelper,
    UsersHelper,
    SitesHelper,
    PagesHelper
  )

  private

    def verify_site
      not_found if current_site.nil?
    end

end
