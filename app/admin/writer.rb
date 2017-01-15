ActiveAdmin.register Writer do
 	menu parent: "Movier",priority: 2
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

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
		column :writer_name, sortable: true do |w|
			Person.find(w.person_id).chinese_name
		end
		column :writer_movie, sortable: true do |w|
			Movie.find(w.movie_id).chinese_name
		end
		actions
	end 


	show do
		attributes_table do
			row :id
			row :movie do
				link_to "#{Movie.find(writer.movie_id).chinese_name}", admin_movie_path(id: writer.movie.id)
			end
			row :person do
				link_to "#{Person.find(writer.person_id).chinese_name}", admin_person_path(id: writer.person.id)
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
