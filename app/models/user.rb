class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  rolify

  attr_accessible :email, :password, :password_confirmation, :remember_me

  belongs_to :cart, dependent: :destroy

  after_create :attach_cart

  private

  def attach_cart
    create_cart
    cart.order_total = 0
    cart.user_id = id
    cart.save
  end
end
