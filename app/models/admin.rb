class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:full_access, :restricted_access]

  def role_access
    return 'Total' if self.role == 'full_access'
    return 'Restrito' if self.role == 'restricted_access'
  end
end
