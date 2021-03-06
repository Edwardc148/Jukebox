class User < ApplicationRecord
  validates :email, :name, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  has_attached_file :image, default_url: "empty_profile_listener.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  after_initialize :ensure_session_token

  attr_reader :password

  has_many :stations,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'Station'

  def self.find_by_credentials(email, password)
    @user = User.find_by(email: email)
    @user && @user.is_password?(password) ? @user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

end
