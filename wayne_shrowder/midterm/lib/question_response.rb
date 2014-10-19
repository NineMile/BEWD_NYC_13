class QuestionResponse
  attr_accessor :question, :response, :keywords

  def ask
    puts question
    self.response = gets.strip
  end

  def score
    score = 1

    keywords.each do |keyword|
      score *=10 if response.include? keyword
    end
    
    score
  end
end
