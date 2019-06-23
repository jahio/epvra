FactoryBot.define do
  factory :person do
    first_name { "John" }
    last_name  { "Doe"  }
    address    { "123 Summerset Ln." }
    city       { "El Paso" }
    state      { "TX" }
    zip        { "79912-3324" }
    phone      { "9155551234" }
    email      { "jah@jah.io" }
    facebook   { }
    instagram  { }
    twitter    { "jahrocks" }
    linkedin   { "jahio" }
    bio        { SecureRandom.hex(256) }
  end
end
