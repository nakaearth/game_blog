class Blogger < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :entries
  has_one :blog_setting
  validates :name,:presence =>true
  def handle_name
    if name == ""
      email
    elsif name != ""
      name
    end
  end
end
