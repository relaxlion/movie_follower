ActiveAdmin.register Oscar do
	menu parent: "pride",priority: 1
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :year, :best_picture_id, :best_supporting_actor_id, :best_supporting_actress_id, :best_actress_id, :best_actor_id, :best_adapted_screenplay_id,:best_original_screenplay_id, :best_director_id, :best_animated_feature_flim_id, :best_foreign_language_flim_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		
		column :year
		actions
	end 


	show do
		attributes_table do
			row :id
			row :best_picture do
				link_to "#{Movie.find(oscar.best_picture_id).chinese_name}"
			end
			row :best_director do
				link_to "#{Person.find(Director.find(oscar.best_director_id).person_id).chinese_name}"
			end
			row :best_actor do
				link_to "#{Person.find(Actor.find(oscar.best_actor_id).person_id).chinese_name}"
			end
			row :best_actress do
				link_to "#{Person.find(Actor.find(oscar.best_actress_id).person_id).chinese_name}"
			end
			row :best_supporting_actor do
				link_to "#{Person.find(Actor.find(oscar.best_supporting_actor_id).person_id).chinese_name}"
			end
			row :best_supporting_actress do
				link_to "#{Person.find(Actor.find(oscar.best_supporting_actress_id).person_id).chinese_name}"
			end
			row :best_animated_feature_flim do
				link_to "#{Movie.find(oscar.best_animated_feature_flim_id).chinese_name}"
			end
			row :best_foreign_language_flim do
				link_to "#{Movie.find(oscar.best_foreign_language_flim_id).chinese_name}"
			end
			row :best_original_screenplay do
				link_to "#{Movie.find(Writer.find(oscar.best_original_screenplay_id).movie_id).chinese_name}"
			end
			row :best_adapted_screenplay do
				link_to "#{Movie.find(Writer.find(oscar.best_adapted_screenplay_id).movie_id).chinese_name}"
			end

		end
	end


	form do |f|
		f.actions
		f.inputs do
			f.input :year
			f.input :best_picture_id, as: :select, :collection => Movie.all.map{|m| ["#{m.chinese_name}", m.id]}
			f.input :best_director_id, as: :select, :collection => Director.all.map{|d| ["#{Person.find(d.person_id).chinese_name}", d.id]}
			f.input :best_actor_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}", a.id]}
			f.input :best_actress_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}", a.id]}
			f.input :best_supporting_actor_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}", a.id]}
			f.input :best_supporting_actress_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}", a.id]}
			f.input :best_animated_feature_flim_id, as: :select, :collection => Movie.all.map{|m| ["#{m.chinese_name}", m.id]}
			f.input :best_foreign_language_flim_id, as: :select, :collection => Movie.all.map{|m| ["#{m.chinese_name}", m.id]}
			f.input :best_original_screenplay_id, as: :select, :collection => Writer.all.map{|w| ["#{Person.find(w.person_id).chinese_name}", w.id]}
			f.input :best_adapted_screenplay_id, as: :select, :collection => Writer.all.map{|w| ["#{Person.find(w.person_id).chinese_name}", w.id]}
		
		end
		f.actions
	end

end
