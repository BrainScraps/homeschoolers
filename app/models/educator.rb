class Educator < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :family_id,
    :profile_picture, :profile, :city, :forums

  serialize :forums, Array

  # attr_accessible :title, :body
  has_many :resources
  belongs_to :family
  validates :username, uniqueness: true

  after_create :redirect_to_profile

  def to_s
    username
  end


  def moderates_category?(category_id) 
    forums.include? category_id
  end

  def redirect_to_profile
    redirect_to  'http://google.com'
  end
  
end
