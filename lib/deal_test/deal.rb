class DealTest::Deal
  attr_accessor :name, :price, :availability, :url
  def self.today
    deal_1 = self.new
    deal_1.name = "PCH Digital Pulse Massager"
    deal_1.price = "$27"
    deal_1.availability = true
    deal_1.url = "dansdeals.com"

    deal_2 = self.new
    deal_2.name = "Lenovo Think Pad"
    deal_2.price = "$199.00"
    deal_2.availability = false
    deal_2.url = "dansdeals.com"

    [deal_1, deal_2]
  end
  def available
    self.availability == true ? "Available!" : "Dead."
  end
end
