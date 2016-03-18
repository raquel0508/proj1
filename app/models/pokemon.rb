class Pokemon < ActiveRecord::Base
	validates :name, presence: true, on: :create
	validates :name, uniqueness: true, on: :create
	belongs_to :trainer
end
