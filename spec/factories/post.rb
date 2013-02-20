FactoryGirl.define do
	factory :post do 
		factory :post_teste do |p|
			p.title "teste"
			p.author "Sergio"
			p.content "comentario"
		end

		factory :post_teste2 do |p|
			p.title "teste2"
			p.author "Sergio2"
			p.content "comentario2"
		end
	end
end