class HeadlineGenerator

  def initialize(industry, amount)
    @industry = industry.capitalize
    @amount = amount.to_i
  end

  def create_headlines
    headlines = all_headlines.sample(@amount)
    headlines.each do |headline|
      puts headline.gsub! '{industry}', @industry
    end
  end

  def all_headlines
    [
      'The Full Story Of My Career In {industry}',
      '{industry} Changed My Income Forever',
      'How To Start A Career In {industry}',
      'Here’s Why {industry} Is A Great Side-Hustle',
      'I Felt I Wasn’t Good Enough For {industry} & Could Never Succeed In It',
      'How To Be The Michael Phelps Of {industry} & Crush Everyone Else',
      'Here’s Why {industry} Is A Great Long-Term Skill To Learn',
      'How Much I Make Doing {industry}',
      'The Economy Is Shifting & People In The {industry} industry Can Thrive',
      'The Pro’s & Con’s Of A Career In {industry}',
      'What Can We Learn From {industry}?',
      'My {industry} Resources',
      '{industry} Is Exploding',
      '{industry} Book Giveaway!',
      'Here’s A {industry} Opportunity',
      'Your 2020 {industry} Strategy',
      'You Should Start Your Own {industry} Business',
      'A Mistake I Made In {industry}',
      'The #1 Most Valuable Thing I’ve Learned From {industry}',
      'The 32 Most Common Questions About {industry} - answered',
      '30 Min Masterclass On {industry}',
      'FAQs About {industry}',
      'Any Questions On {industry}?',
      '{industry} Opportunity Is Bigger Than You Think ',
      'An Overview Of {industry} Principles',
      'The Great {industry} Experiment',
      'The Rise Of {industry}',
      '{industry} Excercises For Monday',
      '{industry} Salaries',
      'How To Become A {industry} (With No Experience)',
      'Getting Your First {industry} Gig (As A Total Beginner)',
      '{industry} Tools For The Superhero {industry}',
      'Your {industry} Portfolio',
      'How To Think About {industry}',
      'A Checklist For {industry}',
      'Advaned {industry} Hack That Works In 30 Minutes (Seriously)',
      'I’m Hosting A {industry} Masterclass ... You’re Invited',
      '{industry} Doesn’t Have To Be A Long-Term Game',
      'The #1 Free {industry} Strategy In 2020 (Why Is No One Doing This?)',
      'Sorry, {industry}',
      '{industry} Update',
      'This {industry} Article Blew My Mind',
      'Ravinder, Are You Serious About Building Your {industry} Career',
      'Ravinder, It’s Time To Get Serious About Building Your {industry} Empire',
      'How To Know If {industry} Is Right For You',
      'I Wrote This {industry} Email In My Pajamas',
      'Here’s The {industry} Framework We Use',
      'These Are The Hottest {industry} Niches Available Right Now ... (No Pitches)',
      'Are You Making This Simple {industry} Mistake Ravinder?',
      'Free {industry} Cheat Sheet',
      'Use These {industry} Hacks To Get More Conversions',
      '5 Reasons You Should Not Hire A {industry} Consultant',
      'Advice From 8 {industry} Influencers',
      'The World’s Most Promising {industry} Startups',
      'Uh Oh {industry}',
      'Are You Ready For Some {industry}?',
      'New Rules For {industry}',
      '{industry} Goodies Inside',
      'OMG {industry}',
      'Need Some {industry} Inspiration?',
      'What Does The Future Hold For {industry}?',
      'Kickstart Your {industry} Career',
      '9 {industry} Best Practices To Follow In 2020',
      '{industry} Survival Guide',
      'Quick {industry} Question',
      'Why I’m Teaching Everything About {industry}',
      'Fear Of Succeeding In {industry} ... It’s A Real Thing',
      'Reply To This Email With Your {industry} Fears',
      'How To Explain {industry} To A 5 Year Old',
      'How To Leave Your {industry} Competition In The Dust',
      'Why I Spent $25,000+ On {industry}',
      '{industry} Used To Be Hard. Then I Tried This…',
      'Please Don’t Make This Mistake In Your {industry} business',
      'Get Our Proven, Step-By-Step {industry} Course (While Registration Is Open)',
      'Free Webinar: Build An Email List That Builds Your {industry} Business',
      'Check Out The 2020 {industry} Report',
      'Want To Be A Part Of My Next {industry} Article? Open This Email',
      'Oh, {industry} Controversy',
      'This Has Nothing To Do With {industry}...',
      'Steal This {industry} Campaign…',
      'The Complete Guide To {industry}',
      'Be Better At {industry}: 7 Lessons From 4 Legendary Books',
      '{industry} For Beginners: 70 Resources to Get You Started',
      'Stop Guessing: Here’s A {industry} Strategy That Works',
      'Do You Use Any Of These? ({industry} Stuff)',
      'Death Of A {industry}',
      'Now Is A Great Time To Learn {industry}',
      '9 {industry} Secrets That Top Websites Use (You Have To Check Out #9)',
      'You’re In {industry} ... So Now What?',
      'Why {industry} Is So Cool',
      'Can I Get Your Opinion On {industry}, Ravinder?',
      'Do You Know An {industry} Leader?',
      'The Story Behind My {industry} Career',
      'How {industry} Can Change Your Life (Not Just Your Business!)',
      'Build Your Personal {industry} Monopoly',
      '{industry}',
      '{industry} - How Would You Like Things To Be?',
      'Do You Want A {industry} Opportunity Analysis?',
      'Find The {industry} Clients Your Competitors Are Missing',
      'There’s A {industry} Revolution Happening, Will You Be Left Behind?',
      'Only 431 Spots Left In My New Course On {industry}',
      '{industry} Is My Latest Obsession',
      'A 5 Minute Task To Understand How {industry} Works',
      'Time To Catch Up With {industry}',
      'Is {industry} Not For You?',
      '{industry} Is Exploding',
      'Why I Love {industry}',
      'I Have Some Big {industry} News'
    ]
  end
end

puts 'Enter Your industry:'
industry = gets.chomp

puts 'How Many Headlines:'
amount = gets.chomp

generator = HeadlineGenerator.new(industry, amount)
generator.create_headlines
