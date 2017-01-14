ActiveAdmin.register GoldenHorse do
	menu parent: "pride",priority: 2
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :year, :best_newconer_id, :best_supporting_actor_id, :best_supporting_actress_id, :best_actress_id, :best_actor_id, :best_screenplay_id, :best_director_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
