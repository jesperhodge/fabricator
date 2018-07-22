# frozen_string_literal: true

# Description: API endpoint to everything concerning the current user.
class UsersController < ApplicationController
  def current_user
    user = super

    render json: {
      user: {
        id: user.id,
        email: user.email
      }
    }
  end
end
