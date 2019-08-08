class Twee < ApplicationRecord
<<<<<<< HEAD
    validates :content, presence: true
    validates :content, length: { maximum: 140 }
=======
    validates :content,    length: { maximum: 140, message:"140 characters is the maximum allowed"} 
    validates :content, presence: { message: "must be given please" }
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0
end
