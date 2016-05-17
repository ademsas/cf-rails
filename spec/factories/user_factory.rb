FactoryGirl.define do

	sequence "email" do |n|
		"person#{n}@example.com"
	end

	factory :user do
		email
		password "testing1234"
		first_name "Ben"
		last_name "Clarke"
		admin false
	end

	factory :admin, class: User do
		email
		password "admin1234"
		first_name "Admin"
		last_name "Example"
		admin true
	end

end