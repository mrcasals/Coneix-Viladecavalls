require 'machinist/active_record'

User.blueprint(:admin) do
  email { "admin@patrimonivila.com" }
  password { "test1234" }
  password_confirmation { object.password }
end
