# frozen_string_literal: true

# Controller for unathenticated landing pages
class LandingPageController < ApplicationController
  def index; end

  def skip_authentication?
    true
  end
end
