class Sinner < ApplicationRecord
 validates :name, presence: true,
                    length: { minimum: 3 }

 validates :sin, presence: true,
                    length: { minimum: 5 }
end
/this is to ensure that all sins that are entered are longer than 5 letters
and that all names are longer than 3 letters/
