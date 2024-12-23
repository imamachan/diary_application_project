class ApplicationController < ActionController::Base
  # # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  # before_action :require_login, unless: -> { controller_name == 'top' && action_name == 'index' }

  # private

  # def not_authenticated
  #   redirect_to login_path, alert: "ログインが必要です。"
  # end
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path
  end

end
