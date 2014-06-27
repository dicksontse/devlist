class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :email, presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }, :on => :create
  validates :password, length: { minimum: 6 }, allow_blank: true

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end
