def generate_question #generates a question and returns the answer
  first_num = rand(1..20)
  second_num = rand(1..20)
  puts "What does #{first_num} plus #{second_num} equal?"
  first_num + second_num
end