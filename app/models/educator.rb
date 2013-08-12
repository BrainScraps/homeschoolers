class Educator < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :family_id,
    :profile_picture, :profile, :city
  # attr_accessible :title, :body
  has_many :resources
  belongs_to :family
  has_and_belongs_to_many :gettogethers
end
