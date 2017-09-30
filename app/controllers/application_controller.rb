class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def user_is_admin?
    if current_user.admin?

    else
      redirect_to :root
    end
  end
end
