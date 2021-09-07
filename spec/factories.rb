
FactoryBot.define do
	factory :user do

		sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@factory.com" }
		password { "password" }
		roles_mask { 2 }

		#factory :admin do
		#	email {'factory_admin@olympus.com'}
		#	password {'password'}
		#	roles_mask { 2 }
		#end

		#factory :gymClient do
		#	email {'factory_client@olympus.com'}
		#	password {'password'}
		#	roles_mask { 1 }
		#end
	end
end