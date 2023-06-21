class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :company
  has_many :applicants

  def profile
    p = ProfileUser.find_by(id: self.id)
    Profile.find_by(id:p.id)
  end
end
