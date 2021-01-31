class User < ApplicationRecord
  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :rememberable,:recoverable,,:confirmable
  devise :database_authenticatable, :registerable,
         :validatable
  def full_name
    return firstName+secondName;
  end
end
