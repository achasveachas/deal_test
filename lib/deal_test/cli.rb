class DealTest::CLI
  def call
    list_deals
    menu
    goodbye
  end
  def list_deals
    puts "Today's deals:"
    puts <<-DOC.gsub /^\s*/, ""
      1. PCH Digital Pulse Massager - $27 - Available
      2. Lenovo Think Pad - $199.00 - Available
    DOC
  end
  def menu
    input = nil
    while input != "exit"
      puts "Enter the deal number you want to learn more about or type list or exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on deal 1"
      when "2"
        puts "More info on deal 2"
      when "list"
        list_deals
      else
        puts "Please clarify"
      end
    end
  end
  def goodbye
    puts "Thanks for stopping by"
  end
end
