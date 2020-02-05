class User < ApplicationRecord
  def greet
    if self.age <= 12
      "ぼくは#{self.name}だよ"
    else
      "僕は#{self.name}です"
    end
  end
end
