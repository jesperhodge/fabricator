class HomeController < ApplicationController
  def index
  end

  def test
    render json: 'Tested.'
  end
end
