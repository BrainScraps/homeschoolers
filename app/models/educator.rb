class Educator < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :family_id,
    :profile_picture, :profile, :city, :forums, :state, :forem_admin

  serialize :forums, Array


  # attr_accessible :title, :body
  has_many :resources
  belongs_to :family
  has_and_belongs_to_many :gettogethers
  validates :username, uniqueness: true


  def to_s
    username
  end


  def member_of_category?(category_id) 
    forums.include? category_id
  end

  def forum_array

    result = []
    if forums.length == 1 
      result << Forem::Category.find(forum_id)
    elsif forums.length > 1
      
      forums.each do |forum_id|

        result << Forem::Category.find(forum_id)

      end
    else
      result
    end

    result
  end

  def forum_params_save(stringy_array)

    arr = []
    stringy_array.each { |x| arr << x.to_i}

    self.forums = arr

    self.save

  end



  # def redirect_to_profile
  #   redirect_to  'http://google.com'
  # end
  
end
