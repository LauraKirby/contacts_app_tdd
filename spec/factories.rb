FactoryGirl.define do
	factory :contact do
		first_name "laura"
		email "laura@mail.com"
	end

	factory :appointment do
		starts_at Date.new(2001, 10, 15)
	end
end
# only add required fields here

