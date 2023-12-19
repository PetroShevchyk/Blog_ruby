class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update]
  
  def show
    @user = current_user
  end

  # інші методи контролера...
end
