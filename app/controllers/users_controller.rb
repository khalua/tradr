class UsersController < ApplicationController
before_filter :check_if_logged_in, :except => [:new, :create, :index]
  def index
    @users = User.all
    @stocks = Stock.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = @auth
    render :new
  end

  def create
    @user = User.create(params[:user])
    @users = User.all
  end

  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end
end
