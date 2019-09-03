puts 'Cleaning db'

puts 'Cleaning AIRDROPS'
Airdrop.destroy_all

puts 'Cleaning USERS'
User.destroy_all

require 'faker'


puts 'Seed done for airdrop, user'


User.create!(email: 'julien@gmail.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Pel",
    wallet_balance: 4,
    first_name: "Julien",
    last_name: "Pelegri",
    photo: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/67444491_2393169547624893_3356167537644535808_o.jpg?_nc_cat=104&_nc_oc=AQkprhNozYg7lNipYdrhW4D_tV_M9PsQWYKDL1jvVgvzCNNxOIzr_JJ0Zr1p3P_o6pk&_nc_ht=scontent-lhr3-1.xx&oh=5b84eb83e55523fdc327cf40a54eeb10&oe=5DD5F29A"
    )

User.create!(email: 'airtop@hotmail.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Paul")

User.create!(email: 'marco@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Marco")

User.create!(email: 'sam@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Sam")

User.create!(email: 'arthur@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Arthur")

User.create!(email: 'lucien@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Lucien")

User.create!(email: 'saunier@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "CodingMaster",
    first_name: "Sebastien",
    last_name: "Saunier",
    photo: "https://avatars1.githubusercontent.com/u/414418?s=460&v=4"
    )


1.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
  domain = ["gmail", "hotmail", "yahoo"]
  domain_suffix = [".com", ".co.uk", ".org"]
  user.email = "#{user.first_name}#{user.last_name}@#{domain.sample}#{domain_suffix.sample}"
  user.nickname = "#{user.first_name}#{user.last_name}"
  user.password = 123456789
  user.admin = false
  user.wallet_balance = 0
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Ethereum",
    amount: rand(1..15),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,
    description: "Ninja giveaway, a big thank you to my supportive Community. Share love, share Crypto.",
    quote: "Vitalik where is new ETH?",

    # photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://ih0.redbubble.net/image.536846432.7858/flat,550x550,075,f.u1.jpg"
  )

  airdrop.save!
end

1.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name,
  )
  domain = ["gmail", "hotmail", "yahoo"]
  domain_suffix = [".com", ".co.uk", ".org"]
  user.email = "#{user.first_name}#{user.last_name}@#{domain.sample}#{domain_suffix.sample}"
  user.nickname = "#{user.first_name}#{user.last_name}"
  user.password = 123456789
  user.wallet_balance = 0
  user.admin = false
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Litecoin",
    amount: rand(1..30),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,
    description: "Giving away something Lite, not too heavy (like Gold). That you can recieve in the matter of minutes.",
    quote: "I hodl ripple, lol",
    # photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "http://cdn.onlinewebfonts.com/svg/img_103118.png"
  )

  airdrop.save!
end

1.times do |i|
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
  user.wallet_balance = 0
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Bitcoin",
    amount: rand(1..5),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,
    description: "If you own 1 BTC, you are mathematically guaranteed to be top 3/1000 richest in the world, in BTC terms (21/
    m/7B)",
    quote: "in btc we trust",
    # photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/BTC_Logo.svg"
  )

  airdrop.save!
end

1.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name,
  )
  domain = ["gmail", "hotmail", "yahoo"]
  domain_suffix = [".com", ".co.uk", ".org"]
  user.email = "#{user.first_name}#{user.last_name}@#{domain.sample}#{domain_suffix.sample}"
  user.nickname = "#{user.first_name}#{user.last_name}"
  user.password = 123456789
  user.wallet_balance = 0
  user.admin = false
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Litecoin",
    amount: rand(1..30),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,
    description: "Litecoin giveaway, a fork of Bitcoin.",
    quote: "LTC to the moon",
    # photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "http://cdn.onlinewebfonts.com/svg/img_103118.png"
  )

  airdrop.save!
end

1.times do |i|
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
  user.wallet_balance = 0
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Bitcoin",
    amount: rand(1..5),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,

    description: "Bitcoin gaming pool, giving away aidr to E-sports players.",
    quote: "In POW we don't trust",
    # photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/BTC_Logo.svg"
  )

  airdrop.save!
end

1.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
  domain = ["gmail", "hotmail", "yahoo"]
  domain_suffix = [".com", ".co.uk", ".org"]
  user.email = "#{user.first_name}#{user.last_name}@#{domain.sample}#{domain_suffix.sample}"
  user.nickname = "#{user.first_name}#{user.last_name}"
  user.password = 123456789
  user.admin = false
  user.wallet_balance = 0
  user.public_key = "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh"
  user.save!

  airdrop = Airdrop.new(
    crypto: "Ethereum",
    amount: rand(1..15),
    user_id: User.find_by_nickname("Pel").id,
    # address: Faker::Address.street_address,
    description: "A public blockchain based distributed computing platform featuring smart contract functionality.",
    quote: "ETH <3",
    # photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://ih0.redbubble.net/image.536846432.7858/flat,550x550,075,f.u1.jpg"
  )

  airdrop.save!
end

Invite.create!(airdrop_id: Airdrop.first.id,
               user_id: User.find_by_nickname("Pel").id,
               status: "accepted"
               )

Invite.create!(airdrop_id: Airdrop.last.id,
               user_id: User.find_by_nickname("Pel").id,
               status: "accepted"
               )

puts "Added the Airtop user to make thing easier"

puts 'Every thing is very okay'

puts 'Finished!'
