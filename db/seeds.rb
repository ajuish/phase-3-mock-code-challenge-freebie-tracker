puts "Destroying companies..."
Company.destroy_all
puts "Destroying devs..."
Dev.destroy_all
puts "Destroying freebies..."
Freebie.destroy_all

puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
# id: nil, item_name: nil, value: nil, company_id: nil, dev_id: nil
50.times do
    Freebie.create(
        company_id: Company.all.ids.sample,
        dev_id: Dev.all.ids.sample,
        item_name: Faker::Commerce.product_name,
        value: rand(1..100)r
    )
end
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
