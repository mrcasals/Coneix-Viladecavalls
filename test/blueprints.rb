require 'machinist/active_record'

Location.blueprint do
  name {"Location #{sn}"}
  description {"This is the location number #{sn}"}
  lat {Random.rand}
  long {Random.rand}
end

User.blueprint(:admin) do
  email { "admin@patrimonivila.com" }
  password { "test1234" }
  password_confirmation { object.password }
end
