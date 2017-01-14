ActiveAdmin.register Movie do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :origin_id, :movie_type, :distributor_id, :productor_id, :chinese_name, :english_name, :played_at, :IMDB, :rating, :length, :box_office 
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
		column :chinese_name 
		column :IMDB
		actions
	end 

	form do |f|
		f.actions
		f.inputs do
			f.input :origin
			f.input :distributor
			f.input :productor
			f.input :movie_type
			f.input :chinese_name
			f.input :english_name
			f.input :played_at, as: :date_time_picker,datepicker_options: { format: "Y-m-d"}
			f.input :IMDB
			f.input :rating, collection: ["普遍級","保護級","輔導級","限制級"]
			f.input :length
			f.input :box_office
		end
		f.actions
	end
	filter :chinese_name
	filter :movie_type

end
