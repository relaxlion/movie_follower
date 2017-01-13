class GoldenHorse < ApplicationRecord
  belongs_to :best_newcomer
  belongs_to :best_supporting_actor
  belongs_to :best_supporting_actress
  belongs_to :best_actor
  belongs_to :best_actress
  belongs_to :best_screenplay
  belongs_to :best_director
end
