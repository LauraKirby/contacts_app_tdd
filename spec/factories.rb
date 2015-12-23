FactoryGirl.define do
	factory :appointment do
		starts_at Date.new(2001, 10, 15)
	end
end
# only add required fields here