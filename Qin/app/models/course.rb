class Course < ActiveRecord::Base
  belongs_to :mentor
  has_many :students, through: :enrollments
  attr_accessible :user_id, :capacity, :description, :location, :name, :price, :time

  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :capacity, :inclusion => 1..100 
  validates :price, :inclusion => 1..100
end
