class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # POST /posts
  # POST /posts.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to log_in_path({:email => @user.email}), notice: 'user was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
