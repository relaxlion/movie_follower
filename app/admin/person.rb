ActiveAdmin.register Person do
	menu parent: "movier",priority: 4
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :chinese_name,:english_name,:country_id,:gender,:birthday
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	show do
		attributes_table do
			rows :id, :chinese_name, :english_name, :country, :gender
			row :birthday do
				person.birthday.strftime("%Y-%m-%d")
			end
		end
	end


	form do |f|
		f.actions
		f.inputs do
			f.input :chinese_name
			f.input :english_name
			f.input :country
			f.input :gender,collection: ["male","female"]
			f.input :birthday, as: :date_time_picker,datepicker_options: { format: "Y-m-d"}
		end
		f.actions
	end




end
