class Oscar < ApplicationRecord
  belongs_to :best_picture
  belongs_to :best_director
  belongs_to :best_actor
  belongs_to :best_actress
  belongs_to :best_supporting_actor
  belongs_to :best_supporting_actress
  belongs_to :best_animated_feature_flim
  belongs_to :best_foreign_language_flim
  belongs_to :best_original_screenplay
  belongs_to :best_adapted_screenplay
end
