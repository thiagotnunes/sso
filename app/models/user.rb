class User < ActiveRecord::Base

  attr_accessible :uid, :provider, :name, :email

  def self.create_with_omniauth!(omni_data)
    create! do |user|
      user.uid = omni_data[:uid]
      user.provider = omni_data[:provider]
      user.name = omni_data[:info][:name]
      user.email = omni_data[:info][:email]
    end
  end
end
