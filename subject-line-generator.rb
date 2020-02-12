class SubjectLineGenerator

  def initialize(industry, amount)
    @industry = industry.capitalize
    @amount = amount.to_i
  end

  def create_lines
    lines = all_lines.sample(@amount)
    lines.each do |line|
      puts line.gsub! '{industry}', @industry
    end
  end

  def all_lines
    [
      'The Full Story Of My Career In {industry}',
      '{industry} Changed My Income Forever',
      'How To Start A Career In {industry}',
      'Here’s Why {industry} Is A Great Side-Hustle',
      'I Felt I Wasn’t Good Enough For {industry} & Could Never Succeed In It',
      'How To Be The Michael Phelps Of {industry} & Crush Everyone Else',
      'Here’s Why {industry} Is A Great Long-Term Skill To Learn',
      'How Much I Make Doing {industry}',
      'The Pro’s & Con’s Of A Career In {industry}',
      'The Economy Is Shifting & People In The {industry} Industry Can Thrive'
    ]
  end
end

puts 'Enter Your Industry:'
industry = gets.chomp

puts 'How Many Subject Lines:'
amount = gets.chomp

generator = SubjectLineGenerator.new(industry, amount)
generator.create_lines
