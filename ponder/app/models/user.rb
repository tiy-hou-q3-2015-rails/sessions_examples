class User < ActiveRecord::Base

  has_secure_password

  def full_name
    [last_name, first_name].join(", ")
  end

end
