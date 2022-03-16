# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual, format: { with:/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/, message: "must be a valid email address"}

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
end
