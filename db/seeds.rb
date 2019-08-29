puts 'Cleaning db'

puts 'Cleaning AIRDROPS'
Airdrop.destroy_all

puts 'Cleaning USERS'
User.destroy_all

require 'faker'


quote = ["in btc we trust", "in tech we trust", 'btc to the moon', 'i hodl ripple', 'btc-eth-ltc = <3']

5.times do |i|
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
    crypto: "ethereum",
    amount: rand(1..15),
    user_id: User.first.id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
  )

  airdrop.save!
end

5.times do |i|
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
    user_id: User.first.id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin"
    remote_photo_url: "https://banner2.cleanpng.com/20180802/kvj/kisspng-bitcoin-cash-cryptocurrency-bitcoin-gold-ethereum-chinese-smartphones-5b62cfe23990e0.8995731315332024022358.jpg"
  )

  airdrop.save!
end

5.times do |i|
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
    user_id: User.first.id,
    # address: Faker::Address.street_address,
    quote: quote[i],
    description: "Random description about the crypto event, when lambo moon, xrp will replace fiat currency tomorrow",
    photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
  )

  airdrop.save!
end



  # airdrop = Airdrop.new(
  #   crypto: "bitcoin",
  #   amount: 1
  # )
  # airdrop.save!

puts 'Seed done for airdrop, user'

User.create!(email: 'airtop@gmail.com', password: 'airtop',
    public_key: "sadlfgjd;fzgadjgjkls;fgjk",
    nickname: "Paul")

User.create!(email: 'airtop@hotmail.com', password: 'airtop',
    public_key: "sadlfgjd;fzgpdjgjkls;fgjk",
    nickname: "Julien")

puts "Added the Airtop user to make thing easier"

puts 'Every thing is very okay'

puts 'Finished!'
