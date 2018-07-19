# frozen_string_literal: true

# Description: API endpoint to everything concerning the current admin.
class AdminsController < ApplicationController
  def current_admin
    admin = super

    render json: {
      admin: {
        id: admin.id,
        email: admin.email
      }
    }
  end
end
