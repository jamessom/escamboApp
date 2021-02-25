class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = {
    :full_access => 0,
    :restricted_access => 1
  }

  enum ROLES

  scope :with_full_access, -> { where(role: ROLES[:full_access]) }
  scope :with_restricted_access, -> { where(role: ROLES[:restricted_access]) }

  def role_access
    return 'Total' if self.role == 'full_access'
    return 'Restrito' if self.role == 'restricted_access'
  end
end
