module Users
  class SessionsController < Devise::SessionsController
    def guest_sign_in
      sign_in User.guest
      redirect_to root_path, notice: "ゲストユーザーとしてログインしました。"
    end
  end
end
