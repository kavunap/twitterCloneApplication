class Twee < ApplicationRecord
    validates :content,    length: { maximum: 140, message:"140 characters is the maximum allowed"} 
    validates :content, presence: { message: "must be given please" }
end
