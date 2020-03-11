class User < ApplicationRecord

  # ############# #
  # Class Methods #
  # ############# #

  # TODO - Add/check test coverage
  # Remove this so devise can't use it.
  def self.validates_uniqueness_of(*args)
  end

  # TODO - Add/check test coverage
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.github_data"]
        user.name = data["info"]["name"] if user.name.blank?
        user.email = data["info"]["email"] if user.email.blank?
        user.handle = data["info"]["nickname"] if user.handle.blank?
      end
    end
  end

  def self.authenticate_from_omniauth(*args)
    UserServices::AuthenticateFromOmniauth.(*args)
  end

  # ################### #
  # Model Specification #
  # ################### #

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :confirmable, :validatable,
         :omniauthable, omniauth_providers: [:github]

  validates :email, uniqueness: {message: "address is already registered. Try <a href='/users/sign_in'>logging in</a> or <a href='/users/password/new'> resetting your password</a>.", case_sensitive: false}, allow_blank: true, if: :will_save_change_to_email?
  validates :handle, presence: true, handle: true

  # ################ #
  # Instance Methods #
  # ################ #

end

