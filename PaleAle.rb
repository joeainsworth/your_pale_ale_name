class PaleAleName

  def initialize
    @mums_initial = {
      "a" => "Ostler's",
      "b" => "Cobbler's",
      "c" => "Chandler's",
      "d" => "Clerk's",
      "e" => "Groom's",
      "f" => "Tinker's",
      "g" => "Sheperd's",
      "h" => "Peeler's",
      "i" => "Farmer's",
      "j" => "Fisher's",
      "k" => "Waggoner's",
      "l" => "Mason's",
      "m" => "Weaver's",
      "n" => "Squire's",
      "o" => "Hooper's",
      "p" => "Fletcher's",
      "q" => "Carpenter's",
      "r" => "Cooper's",
      "s" => "Slater's",
      "t" => "Founder's",
      "u" => "Bodger's",
      "v" => "Clogger's",
      "w" => "Slater's",
      "x" => "Diggers",
      "y" => "Drover's",
      "z" => "Ghillie's"
    }

    @first_initial = {
      "a" => "Golden",
      "b" => "Ruby",
      "c" => "Dark",
      "d" => "Mutty",
      "e" => "Sweet",
      "f" => "Best",
      "g" => "Old",
      "h" => "Strong",
      "i" => "Hoppy",
      "j" => "Pale",
      "k" => "Heavy",
      "l" => "Amber",
      "m" => "Vintage",
      "n" => "Special",
      "o" => "Warm",
      "p" => "Zesty",
      "q" => "Rustic",
      "r" => "Fruity",
      "s" => "Smooth",
      "t" => "Bitter",
      "u" => "Smokey",
      "v" => "Velvet",
      "w" => "Oatmeal",
      "x" => "Tangy",
      "y" => "Malty",
      "z" => "Blonde"
    }

    @birth_month = [
      "Badger",
      "Cow",
      "Toad",
      "Rabbit",
      "Pheasent",
      "Cock",
      "Ferret",
      "Donkey",
      "Goat",
      "Lobster",
      "Rat",
      "Spaniel"
    ]

    @last_initial = {
      "a" => "Plucker",
      "b" => "Worrier",
      "c" => "Botherer",
      "d" => "Beater",
      "e" => "Fighter",
      "f" => "Wobbler",
      "g" => "Teaser",
      "h" => "Dodger",
      "i" => "Muncher",
      "j" => "Snapper",
      "k" => "Licker",
      "l" => "Slurper",
      "m" => "Fancier",
      "n" => "Choker",
      "o" => "Chaser",
      "p" => "Bitter",
      "q" => "Sniffer",
      "r" => "Tickler",
      "s" => "Lifter",
      "t" => "Shagger",
      "u" => "Fiddler",
      "v" => "Hunter",
      "w" => "Tosser",
      "x" => "Fixer",
      "y" => "Kisser",
      "z" => "Puller"
    }
  end

  def ask
    @q1 = response("What is your mother's initial? ", "char")
    @q2 = response("What is your first initial? ",    "char")
    @q3 = response("What is your birth month? ",      "int")
    @q4 = response("What is your last initial? ",     "char")
  end

  def response(question, type)
    print question
    case type
      when 'char'
        return gets.chomp.downcase
      when 'int'
        return gets.chomp.to_i
    end
  end

  def pale_ale
    return "Your pale ale name is: " +
           "#{@mums_initial[@q1]} " +
           "#{@first_initial[@q2]} " +
           "#{@birth_month[@q3]} " +
           "#{@last_initial[@q4]} "
  end

end

your_name = PaleAleName.new
your_name.ask
puts your_name.pale_ale
