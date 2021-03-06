class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :validatable, password_length: 8..30
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :images
  has_attached_file :avatar, styles: { medium: "128x128#", small: "32x32#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :email, uniqueness: true
end
