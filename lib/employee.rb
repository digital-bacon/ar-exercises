class Employee < ActiveRecord::Base
  belongs_to:store
  validates :hourly_rate, inclusion: { in: 40..200 }
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates_associated :store
end
