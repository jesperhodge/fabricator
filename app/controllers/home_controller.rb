# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  # Just to show that everything works
  # TODO: Remove after everything runs well
  def test
    render json: { test: 'Tested.' }
  end

  def skip_authentication?
    true
  end
end
