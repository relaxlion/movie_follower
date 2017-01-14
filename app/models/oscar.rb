class Oscar < ApplicationRecord
  belongs_to :best_picture, class_name: "Movie"
  belongs_to :best_director, class_name: "Director"
  belongs_to :best_actor, class_name: "Actor"
  belongs_to :best_actress, class_name: "Actor"
  belongs_to :best_supporting_actor, class_name: "Actor"
  belongs_to :best_supporting_actress, class_name: "Actor"
  belongs_to :best_animated_feature_flim, class_name: "Movie"
  belongs_to :best_foreign_language_flim, class_name: "Movie"
  belongs_to :best_original_screenplay, class_name: "Writer"
  belongs_to :best_adapted_screenplay, class_name: "Writer"
end
