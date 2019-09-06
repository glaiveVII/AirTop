puts 'Cleaning db'

puts 'Cleaning AIRDROPS'
Airdrop.destroy_all

puts 'Cleaning USERS'
User.destroy_all

require 'faker'


puts 'Seed done for airdrop, user'
public_key_btc_1 = '0x32be343b94f860124dc4fee278fdcbd38c102d88'
public_key_eth_1 = '93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh'
public_key_ltc_1 = 'a5a91d9970908d73d568b406188accae6d26d302b34dc1d613262eaa26a70579'

public_key_btc_2 = '0xa910f92acdaf488fa6ef02174fb86208ad7722ba'
public_key_eth_2 = '372f2f8f815fdb885bc1e6c811c9a4cc9af769e5288f926d7b975e44b6f6cef6'
public_key_ltc_2 = 'b18abc40c188e2b7b1caca279192d744c269761aec9857d6c14b417532e669c7'


wallet_balance_btc_1 = 0.8
wallet_balance_eth_1 = 14
wallet_balance_ltc_1 = 56

wallet_balance_btc_2 = 0
wallet_balance_eth_2 = 1.5
wallet_balance_ltc_2 = 6


User.create!(email: 'julien@gmail.com', password: 'airtop',
    public_key: public_key_btc_1,
    public_key_eth: public_key_eth_1,
    public_key_ltc: public_key_ltc_1,
    nickname: "Julien",
    wallet_balance: wallet_balance_btc_1,
    wallet_balance_eth: wallet_balance_eth_1,
    wallet_balance_ltc: wallet_balance_ltc_1,
    first_name: "Julien",
    last_name: "Pelegri",
    photo: "https://avatars3.githubusercontent.com/u/52655562?s=460&v=4"
    )

User.create!(email: 'julien@hotmail.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Paul",
    photo: "https://avatars1.githubusercontent.com/u/42438530?v=4")

User.create!(email: 'marco@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Marco",
    photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/talgeknkk0sjgepvfezr.jpg")

User.create!(email: 'sam@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Sam",
    photo: "https://avatars3.githubusercontent.com/u/26303419?v=4")

User.create!(email: 'arthur@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Arthur",
    photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/onkzo1zsbde5taheslax.jpg")

User.create!(email: 'lucien@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Lucien",
    photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tsrufxymkfkjy80nk3ha.jpg")

User.create!(email: 'saunier@lewagon.com', password: 'airtop',
    nickname: "SEB",
    public_key: public_key_btc_2,
    public_key_eth: public_key_eth_2,
    public_key_ltc: public_key_ltc_2,
    wallet_balance: wallet_balance_btc_2,
    wallet_balance_eth: wallet_balance_eth_2,
    wallet_balance_ltc: wallet_balance_ltc_2,
    first_name: "Sebastien",
    last_name: "Saunier",
    photo: "https://avatars1.githubusercontent.com/u/414418?s=460&v=4"
    )

User.create!(email: 'phelim@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Phelim")

User.create!(email: 'ben-fanning@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Ben-F")

User.create!(email: 'gonzalo@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Gonzalo")


User.create!(email: 'ben-pham@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Ben-P")

User.create!(email: 'alex@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Alex")


User.create!(email: 'ben-wright@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Ben-w")


User.create!(email: 'ife@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Ife")


User.create!(email: 'leonard@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Leonard")

User.create!(email: 'jonny@lewagon.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Jonny")


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
    crypto: "Bitcoin",
    amount: 9,
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    description: "Crypto continues to remain the king and CryptoKitties is no exception. Here's a small bonus for all the hard work of the dev team over the last 2 months!",
    quote: "Crypto FURR-Ever",

    # photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://media.licdn.com/dms/image/C4D0BAQHszSGuo_jTgA/company-logo_200_200/0?e=2159024400&v=beta&t=PsyPmw2ZADCmXsYJKfqgkCxsUbo7l-e_4jS_HkjLj_g"
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
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    description: "Bonjour Monsieurs, je vous offre une petite recompense pour les performances remarquables de ce semestre !",
    quote: "Kerviel Jerome, rends l'argent!!!",
    # photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "http://www.legrowspot.com/wp-content/uploads/2017/08/LGS__0003_logo_societe-generale.png"
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
    crypto: "Ethereum",
    amount: 60,
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    description: "Great third quarter guys, here's a nice suprise for your revolutionary trainer designs - glow in the dark trainers - incredible!",
    quote: "Just do it, what ever it is",
    # photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin",
    remote_photo_url: "https://static.highsnobiety.com/thumbor/Yb1AO3afH_SdwE891suyLhbL8hM=/fit-in/320x213/smart/static.highsnobiety.com/wp-content/uploads/2012/08/the-cost-of-a-logo-01.jpg"
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
    amount: 0,
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    description: "Congrats deepmind team, the AI deep learning is coming along at a precipitous pace. Here's a small present for opening Pandora's box xD",
    quote: "Don't be evil, that's our job",
    # photo: "https://banner2.kisspng.com/20180805/hql/kisspng-litecoin-bitcoin-cryptocurrency-wallet-digital-wal-bitconnect-wallet-mac-bitcoin-cash-transaction-s-5b667f911cfec0.1647560515334439851188.jpg"
    remote_photo_url: "https://yt3.ggpht.com/a/AGF-l7-BBIcC888A2qYc3rB44rST01IEYDG3uzbU_A=s900-c-k-c0xffffffff-no-rj-mo"
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
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,

    description: "Trading volume was up 42%, enjoy some bitcoin for your hard work",
    quote: "Binance, but better",
    # photo: "https://png.icons8.com/dotty/1600/673AB7/bitcoin",
    remote_photo_url: "https://pbs.twimg.com/profile_images/1139570739747536896/HVEeWmV4.png"
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
    amount: 27,
    user_id: User.find_by_nickname("Julien").id,
    # address: Faker::Address.street_address,
    description: "After the sucess of our 999 monitor stand, I want to reward everyone in the design team with the extortionate profits we made.",
    quote: "ETH <3",
    # photo: "https://ludu-assets.s3.amazonaws.com/course-icons/26/xEtx9RpWSk24kkXaRicP"
    remote_photo_url: "https://image.freepik.com/icones-gratuites/mac-os_318-10374.jpg"
  )

  airdrop.save!
end


 # end invitation for the seed !!!!!!!!
Invite.create!(airdrop_id: Airdrop.find_by_quote("Don't be evil, that's our job").id,
               user_id: User.find_by_nickname("Julien").id,
               status: "accepted",
               jackpot: 40.0
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Don't be evil, that's our job").id,
               user_id: User.find_by_nickname("SEB").id,
               status: "accepted",
               jackpot: 40.0
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Don't be evil, that's our job").id,
               user_id: User.find_by_nickname("Lucien").id,
               status: "accepted",
               jackpot: 40.0
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Don't be evil, that's our job").id,
               user_id: User.find_by_nickname("Arthur").id,
               status: "accepted",
               jackpot: 40.0
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Don't be evil, that's our job").id,
               user_id: User.find_by_nickname("Marco").id,
               status: "accepted",
               jackpot: 40.0
               )




# Invite.create!(airdrop_id: Airdrop.first.id,
#                user_id: User.find_by_nickname("Julien").id,
#                status: "accepted"
#                )

Invite.create!(airdrop_id: Airdrop.last.id,
               user_id: User.find_by_nickname("Julien").id,
               status: "accepted"
               )

# the first invitation you want to release for the demo

User.create!(email: 'george@forbes-nixon.com', password: 'airtop',
    public_key: "93WZu1LBjzdiwQScYpr5JNeIlTKLQ9PbpKIy28zDiwWXXb7drmNh",
    nickname: "George")

User.create!(email: 'ali-kalkanel@gmail.com', password: 'airtop',
    public_key: "93WZu1LBjzjiwQScYpr5JNeIlTKLQ3BbpKIy28zDiwWXXb7drmNh",
    nickname: "Ali")

Invite.create!(airdrop_id: Airdrop.find_by_quote("Crypto FURR-Ever").id,
               user_id: User.find_by_nickname("Julien").id,
               status: "accepted",
               email: "julien@gmail.com"
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Crypto FURR-Ever").id,
               user_id: User.find_by_nickname("George").id,
               status: "accepted",
               email: "george@forbes-nixon.com"
               )

Invite.create!(airdrop_id: Airdrop.find_by_quote("Crypto FURR-Ever").id,
               user_id: User.find_by_nickname("Ali").id,
               status: "accepted",
               email: "ali-kalkanel@gmail.com"
               )

puts "Added the Airtop user to make thing easier"

puts 'Every thing is very okay'

puts 'Finished!'
