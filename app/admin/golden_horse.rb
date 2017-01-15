ActiveAdmin.register GoldenHorse do
	menu parent: "Pride",priority: 2
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :year, :best_newcomer_id, :best_supporting_actor_id, :best_supporting_actress_id, :best_actress_id, :best_actor_id, :best_screenplay_id, :best_director_id
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
			row :best_newcomer do
				begin
					actor = Person.find(Actor.find(golden_horse.best_newcomer_id).person_id)
				rescue
					actor = nil
				end
				link_to "#{actor.chinese_name}", admin_actor_path(id: golden_horse.best_newcomer.id)if actor.present?
			end
			row :best_director do
				begin
					director = Person.find(Director.find(golden_horse.best_director_id).person_id)
				rescue
					director = nil
				end
				link_to "#{director.chinese_name}", admin_director_path(id: golden_horse.best_director.id)if director.present?
			end
			row :best_actor do
				begin
					actor = Person.find(Actor.find(golden_horse.best_actor_id).person_id)
				rescue
					actor = nil
				end
					link_to "#{actor.chinese_name}", admin_actor_path(id: golden_horse.best_actor.id)if actor.present?
			end
			row :best_actress do
				begin
					actor = Person.find(Actor.find(golden_horse.best_actress_id).person_id)
				rescue
					actor = nil
				end
					link_to "#{actor.chinese_name}", admin_actor_path(id: golden_horse.best_actress.id)if actor.present?		
			end
			row :best_supporting_actor do
				begin
					actor = Person.find(Actor.find(golden_horse.best_supporting_actor_id).person_id)
				rescue
					actor = nil
				end
					link_to "#{actor.chinese_name}", admin_actor_path(id: golden_horse.best_supporting_actor.id)if actor.present?
			end
			row :best_supporting_actress do
				begin
					actor = Person.find(Actor.find(golden_horse.best_supporting_actress_id).person_id)
				rescue
					actor = nil
				end
					link_to "#{actor.chinese_name}", admin_actor_path(id: golden_horse.best_supporting_actress.id)if actor.present?
			end
			row :best_screenplay do
				begin
					movie = Movie.find(Writer.find(golden_horse.best_screenplay_id).movie_id)
				rescue
					movie = nil
				end
					link_to "#{movie.chinese_name}", admin_writer_path(id: golden_horse.best_screenplay.id)if movie.present?
			end
	

		end
	end


	form do |f|
		f.actions
		f.inputs do
			f.input :year
			f.input :best_director_id, as: :select, :collection => Director.all.map{|d| ["#{Person.find(d.person_id).chinese_name}/#{Movie.find(d.movie_id).chinese_name}", d.id]}
			f.input :best_actor_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}/#{Movie.find(a.movie_id).chinese_name}", a.id]}
			f.input :best_actress_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}/#{Movie.find(a.movie_id).chinese_name}", a.id]}
			f.input :best_supporting_actor_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}/#{Movie.find(a.movie_id).chinese_name}", a.id]}
			f.input :best_supporting_actress_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}/#{Movie.find(a.movie_id).chinese_name}", a.id]}
			f.input :best_screenplay_id, as: :select, :collection => Writer.all.map{|w| ["#{Person.find(w.person_id).chinese_name}/#{Movie.find(w.movie_id).chinese_name}", w.id]}
			f.input :best_newcomer_id, as: :select, :collection => Actor.all.map{|a| ["#{Person.find(a.person_id).chinese_name}/#{Movie.find(a.movie_id).chinese_name}", a.id]}
		
		end
		f.actions
	end
	config.filters = false
end
