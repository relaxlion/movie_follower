class GoldenHorse < ApplicationRecord
  belongs_to :best_newcomer, class_name: "Actor"
  belongs_to :best_supporting_actor, class_name: "Actor"
  belongs_to :best_supporting_actress, class_name: "Actor"
  belongs_to :best_actor, class_name: "Actor"
  belongs_to :best_actress, class_name: "Actor"
  belongs_to :best_screenplay, class_name: "Writer"
  belongs_to :best_director, class_name: "Director"
end
