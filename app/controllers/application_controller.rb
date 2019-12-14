class ApplicationController < ActionController::Base
  # ログインしてないユーザーを弾く
  before_action :authenticate_user!
end
