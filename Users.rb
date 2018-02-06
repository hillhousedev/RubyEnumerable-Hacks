# Demonstarting various enumerables to students

# Let's create an array with 5 names

users = ["Olusola", "Trust", "Yinka", "Lolu", "Muyiwa"]

# Test for lenght of array, no of users
puts users.length

# Let's add another member to the end of the array
users.push "Jide"

puts users
puts "\n"

# Test for length again after adding to it
puts "New length after push #{users.length}"

# Lets get the first element
puts "First element is #{users[0]}"


# Let's try hashes

info_about_user = {
  name: "Olusola",
  work: "Programmer",
  skills: ["Datastructures & algorithms", "Analysis", "Devops", "Machine learning", "Embeded Systems", "Game development"]
}

# Mind you this data can be persisted in a redis store
# except that redis only supports flat data and not hierachical structures

# Let's get user name
puts info_about_user[:name]

# Get skills
puts "#{info_about_user[:name]} skills are #{info_about_user[:skills]}"


# Let's skill him up
info_about_user[:skills] << "Database Design"

#Show skills again

puts "#{info_about_user[:name]} skills are #{info_about_user[:skills]}"
