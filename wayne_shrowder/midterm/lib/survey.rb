class Survey
  attr_accessor :client_info, :questions

  def initialize
    @client_info
  end

  def ask
    puts "Please enter your Company's Name and Job title"
    self.client_info = gets.strip
  end

  def initialize
    @questions = []
  end

  def score

    score = 0

    @questions.each do |question|
      score += question.score
    end
score
    


    # Create an empty variable that is the default score for everyone, i.e. 1
    #
    # Loop through the questions, and for each question, loop through each of the keywords
    # that question has. If the `question.response` includes a keyword, increment the
    # score value.
  
  end
end