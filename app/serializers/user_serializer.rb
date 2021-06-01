# frozen_string_literal: true

class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :created_at, :username

  attribute :created_date do |user|
    user.created_at && user.created_at.strftime("%d/%m/%Y")
  end
end
