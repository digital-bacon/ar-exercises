class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, numericality: { greater_than: 0 }
  validates :name, length: { minimum: 3 }
end
