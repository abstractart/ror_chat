class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  validates :first_name, presence: :true, length: { maximum: 32 }
  validates :last_name,  presence: :true, length: { maximum: 64 }
  has_many :comments, dependent: :destroy
  
  def full_name
    first_name + ' ' + last_name
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]

      fullname = auth['info']['name'].split(' ')
      user.first_name = fullname.first
      user.last_name = fullname.last
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
        user.email = session['devise.facebook_data']['email'] if user.email.blank?
      end
    end
  end
end
