class User < ApplicationRecord
    before_save { self.email = email.downcase }

    validates :name,  presence: true
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true,  length: { minimum: 10 }
  
    has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  # Returns the Gravatar for the given user.
  def gravatar
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  def add_mailchimp_subscriber
    client = Mailchimp::API.new('2cc1d9a1810e3b6a4ff7815d9de3ec95-us14')
    client.lists.subscribe('d6db07f2b9', {email: self.email}, {'FNAME' => self.name, 'LNAME' => self.last_name})
  end
end
