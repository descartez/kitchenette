class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipes

  def self.grab_admin
    where(admin: true)
  end

  def make_admin!
    set_admin_status(true)
  end

  def remove_admin!
    set_admin_status(false)
  end

  private
  def set_admin_status(bool)
    self.admin = bool
    self.save
  end
end
