# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  # Just to show that everything works
  # TODO: Remove after everything runs well
  def test
    render json: { test: 'Tested.' }
  end

  # TODO: Remove
  # Allows developers to reach the frontend, for now.
  def skip_authentication?
    true
  end
end
