class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :food_id
end
