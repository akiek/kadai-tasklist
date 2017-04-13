class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:session][:name].downcase
    password = params[:session][:password]
    if login(name, password)
      flash[:success] = 'ログインに成功しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render 'new'
    end
  end

  def destroy
  end
end
