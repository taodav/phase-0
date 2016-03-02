puts 'Hi there! What\'s your first name?'
firstName = gets.chomp
puts 'what\'s your middle name?'
middleName = gets.chomp
puts 'what\'s your last name?'
lastName = gets.chomp
puts 'Hi ' + firstName + ' ' + middleName + ' ' + lastName + '! Hope you have a great day!'

puts 'So what\'s your favorite number?'
favoriteNum = gets.chomp
biggerNum = favoriteNum.to_i + 1
puts 'Ha ha! But ' + biggerNum.to_s + ' is an even bigger number!'