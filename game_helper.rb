def generate_question(player) #generates a question and returns the answer
  first_num = rand(1..20)
  second_num = rand(1..20)
  puts "#{player}: What does #{first_num} plus #{second_num} equal?"
  first_num + second_num
end

def checker(question, answer)
  if question == answer
    true
  else
    false
  end
end