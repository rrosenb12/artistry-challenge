class Artist < ApplicationRecord
    has_many :sessions
    has_many :instruments, through: :sessions

    validates :name, :age, :title, presence: true
    validates :title, uniqueness: true

    def instrument_count
        self.instruments.count
    end
end
