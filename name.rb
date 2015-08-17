require "./initials"

def ask(question, type)
  puts question
  case type
    when "char"
      return gets.chomp.downcase
    when "int"
      return gets.chomp.to_i
  end
end

def pale_ale_name(mums_initial, first_initial, birth_month, last_initial)
  return "#{@mums_initial[mums_initial]} " +
         "#{@first_initial[first_initial]} " +
         "#{@birth_month[birth_month]} " +
         "#{@last_initial[last_initial]}"
end

mums_initial  = ask("What is your mothers initial: ", "char")
first_initial = ask("What is your first initial: ",   "char")
birth_month   = ask("What is your birth month: ",     "int")
last_initial  = ask("What is your last initial: ",    "char")

puts "Your pale ale name is: " +
     "#{pale_ale_name(mums_initial, first_initial, birth_month, last_initial)}"
