# frozen_string_literal: true

# Description: API endpoint to everything concerning the current user.
class UsersController < ApplicationController
  def create
    User.create(allowed_params)
  end

  def update
    user.update(allowed_params)
  end

  def destroy
    user.destroy unless user == current_user
  end

  def display_current_user
    user = current_user

    render json: {
      user: {
        id: user.id,
        email: user.email
      }
    }
  end

  protected

  def user
    User.find(params[:id])
  end

  def allowed_params
    params.fetch(:user).permit(
      :first_name,
      :last_name,
      :password,
      :password_confirmation,
      :email
    )
  end
end
