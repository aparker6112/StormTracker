class Expense < ActiveRecord::Base
	has_many :user_expense
	has_many :user, through: :user_expense
	has_many :company_expenses
	has_many :company, through: :expense
	validates :name, presence: true
	validates :amount, presence: true
	validates :description, presence: true
	validates :company?, default: false
	validates :picture, default: false
end