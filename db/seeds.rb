puts 'Cleaning db'

puts 'Cleaning AIRDROPS'
Airdrop.destroy_all

puts 'Cleaning USERS'
User.destroy_all

require 'faker'


puts 'Seed done for airdrop, user'

User.create!(email: 'airtop@gmail.com', password: 'airtop',
    public_key: "sadlfgjd;fzgadjgjkls;fgjk",
    nickname: "Julien",
    wallet_balance: 4,
    photo: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/67444491_2393169547624893_3356167537644535808_o.jpg?_nc_cat=104&_nc_oc=AQkprhNozYg7lNipYdrhW4D_tV_M9PsQWYKDL1jvVgvzCNNxOIzr_JJ0Zr1p3P_o6pk&_nc_ht=scontent-lhr3-1.xx&oh=5b84eb83e55523fdc327cf40a54eeb10&oe=5DD5F29A"
    )

User.create!(email: 'airtop@hotmail.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Paul")

User.create!(email: 'marco@lewagon.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Marco")

User.create!(email: 'sam@lewagon.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Sam")

User.create!(email: 'arthur@lewagon.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Arthur")

User.create!(email: 'lucien@lewagon.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Lucien")

User.create!(email: 'saunier@lewagon.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Sebastien",
    photo: "https://avatars1.githubusercontent.com/u/414418?s=460&v=4"
    )

quote = ["in btc we trust", "in tech we trust", 'btc to the moon', 'i hodl ripple', 'btc-eth-ltc = <3']

2.times do |i|
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
  user.public_key = "sadlfgjd;fzgadjgjkls;fgjk"
  user.save!

  airdrop = Airdrop.new(
    crypto: "ethereum",
    amount: rand(1..15),
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    # photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://ih0.redbubble.net/image.536846432.7858/flat,550x550,075,f.u1.jpg"
  )

  airdrop.save!
end

2.times do |i|
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
  user.public_key = "sadlfgjd;fzgadjgjkls;fgjk"
  user.save!

  airdrop = Airdrop.new(
    crypto: "bitcoin",
    amount: rand(1..5),
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    # photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/9/9a/BTC_Logo.svg"
  )

  airdrop.save!
end

2.times do |i|
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
  user.public_key = "sadlfgjd;fzgadjgjkls;fgjk"
  user.save!

  airdrop = Airdrop.new(
    crypto: "ltc",
    amount: rand(1..30),
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    # photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "http://cdn.onlinewebfonts.com/svg/img_103118.png"
  )

  airdrop.save!
end

Invite.create!(airdrop_id: Airdrop.first.id,
               user_id: User.find_by_nickname("Julien").id,
               status: "accepted"
               )

Invite.create!(airdrop_id: Airdrop.last.id,
               user_id: User.find_by_nickname("Julien").id,
               status: "accepted"
               )

puts "Added the Airtop user to make thing easier"

puts 'Every thing is very okay'

puts 'Finished!'
