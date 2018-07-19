# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_authentic do |conf|
    conf.crypto_provider = Authlogic::CryptoProviders::BCrypt
    conf.validates_format_of_email_field_options = (
      { with: Authlogic::Regex.email_nonascii }
    )
  end
end
