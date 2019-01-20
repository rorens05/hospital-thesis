class Supplier < ApplicationRecord
  belongs_to :product, optional: true
end
