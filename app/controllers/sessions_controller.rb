# -*- coding: utf-8 -*-

  class SessionsController < ApplicationController
  skip_before_filter :check_logined
    def new
    end

    def create
      user = User.find_by_name(params[:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to mypage_path(user.id), :notice => "ログインしました"
      else
        redirect_to login_path, :notice => "アカウント名とパスワードを確認してもう一度やり直してください"
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path, :notice => "ログアウトしました"
    end
end
