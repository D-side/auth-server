class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:facebook]

  def self.from_facebook(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.info.name
    end
  end
end
