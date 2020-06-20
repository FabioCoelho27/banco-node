class Account < ApplicationRecord
  belongs_to :client

  validate on: :create do |r|
    unless r.status == 1
      r.errors.add(:status, "não pode ser diferente de 0 no momento da criação")
    end
    
  end

  validates :balance, numericality: { greater_than_or_equal_to: 0 }

  validates :client_id, uniqueness: true

  enum status: {active:0,inactive:1}
end
