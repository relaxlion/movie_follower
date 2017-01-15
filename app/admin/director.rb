ActiveAdmin.register Director do
	menu parent: "Movier",priority: 3
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :movie_id, :person_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	index do
		id_column
		column :director_name do |d|
			Person.find(d.person_id).chinese_name
		end
		column :director_movie do |d|
			Movie.find(d.movie_id).chinese_name
		end
		actions
	end 


	show do
		attributes_table do
			row :id
			row :movie do
				link_to "#{Movie.find(director.movie_id).chinese_name}"
			end
			row :person do
				link_to "#{Person.find(director.person_id).chinese_name}"
			end
		end
	end



	form do |f|
		f.actions
		f.inputs do
			f.input :movie_id, as: :select, :collection => Movie.all.map{|m| ["#{m.chinese_name}", m.id]}
			f.input :person_id, as: :select, :collection => Person.all.map{|p| ["#{p.chinese_name}", p.id]}
		end
		f.actions
	end
	config.filters = false

end
