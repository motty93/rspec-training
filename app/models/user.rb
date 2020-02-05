class User < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true

  def greet
    if self.age <= 12
      "ぼくは#{self.name}だよ"
    else
      "僕は#{self.name}です"
    end
  end
end
