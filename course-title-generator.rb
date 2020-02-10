class CourseTitleGenerator

  def initialize(topic, amount)
    @topic = topic.capitalize
    @amount = amount.to_i
  end

  def create_titles
    titles = all_titles.sample(@amount)
    titles.each do |title|
      puts title.gsub! '{topic}', @topic
    end
  end

  def all_titles
    [
      'The Complete 2020 {topic} Course',
      '{topic}: From Beginner To Expert',
      'The Ultimate {topic} Course',
      '{topic} In-Depth: Become A Complete Expert',
      'The {topic} Bootcamp',
      '100 {topic} Exercises: Evaluate & Improve Your Skills',
      '{topic} - The Practical Guide',
      'The Essential Guide To {topic}',
      '{topic} For Beginners - Master {topic} Quickly',
      'Complete {topic} Bootcamp: Go From Zero To Hero'
    ]
  end
end

puts 'Enter Your Topic:'
topic = gets.chomp

puts 'How Many Titles:'
amount = gets.chomp

generator = CourseTitleGenerator.new(topic, amount)
generator.create_titles
