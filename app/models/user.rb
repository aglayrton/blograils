class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable esse é autentico via redes sociais
  devise :confirmable,
  :database_authenticatable, 
  :registerable,
  :recoverable, 
  :rememberable,
  :trackable, #gerencimaneto de ultimo login
  :validatable
end
