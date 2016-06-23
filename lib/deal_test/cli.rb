class DealTest::CLI
  def call
    list_deals
    menu
    goodbye
  end
  def list_deals
    puts "Today's deals:"
    deals = DealTest::Deal.today
    @deals = []
    deals.each.with_index(1) do |deal, i|
      @deals << "#{i}, #{deal.name} - #{deal.price} - #{deal.available}"
    end
    puts @deals
  end
  def menu
    input = nil
    while input != "exit"
      puts "Enter the deal number you want to learn more about or type list or exit:"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @deals[input.to_i - 1]
      elsif input == "list"
        list_deals
      elsif input == "exit"
      else
        puts "Please clarify"
      end
    end
  end
  def goodbye
    puts "Thanks for stopping by"
  end
end
