puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "stickers", value: 50, company: c4, dev: d3)
Freebie.create(item_name: "shirt", value: 17, company: c2, dev: d1)
Freebie.create(item_name: "backpack", value: 20, company: c1, dev: d2)
Freebie.create(item_name: "thingy", value: 70, company: c3, dev: d3)
Freebie.create(item_name: "stuff", value: 170, company: c4, dev: d2)
Freebie.create(item_name: "more stuff", value: 27, company: c4, dev: d4)
Freebie.create(item_name: "raccoon", value: 700, company: c2, dev: d2)
Freebie.create(item_name: "item", value: 5, company: c1, dev: d3)

puts "Seeding done!"
