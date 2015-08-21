class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    Rails.logger.debug access_token.inspect
    data = access_token.info
    user = User.where(
      provider:         access_token.provider,
      uid:              access_token.uid
    ).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(
          email: data['email'],
          password: Devise.friendly_token[0,20],
          provider: access_token.provider,
          uid: access_token.uid
        )
    end
    user
  end
end
