class User < ApplicationRecord

  include Password

  validates :fname, presence: true #, length: { minimum: 2 }
  validates :lname, presence: true #, length: { minimum: 2 }
  validates :password, presence: true #, length: { minimum: 5 }
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  before_save :password_to_md5

  def full_name
  	"#{self.fname} #{self.lname}"
  end
  
end
