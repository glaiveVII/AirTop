puts 'Cleaning db'



# puts 'Cleaning AIRDROP'
# Airdrop.destroy_all

# puts 'Cleaning users'
# User.destroy_all

require 'faker'

20.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name,
  )
  domain = ["gmail", "hotmail", "yahoo"]
  domain_suffix = [".com", ".co.uk", ".org"]
  user.email = "#{user.first_name}#{user.last_name}@#{domain.sample}#{domain_suffix.sample}"
  user.nickname = "#{user.first_name}#{user.last_name}"
  user.password = 123456789
  user.admin = false
  user.public_key = "sadlfgjd;fzgadjgjkls;fgjk"
  user.save!
  airdrop = Airdrop.new(
    # crypto: "bitcoin",
    amount: 1
    # address: Faker::Address.street_address,
  )

  airdrop.save!
end

puts 'Seed done for airdrop, user'

User.create!(email: 'airtop@gmail.com', password: 'airtop',
    public_key: "sadlfgjd;fzgadjgjkls;fgjk",
    nickname: "Paul")

puts "Added the Airtop user to make thing easier"

puts 'Every thing is very okay'

puts 'Finished!'
