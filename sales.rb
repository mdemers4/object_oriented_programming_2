=begin
Basic sales tax is applicable at a rate of 10% on all 
goods, except books, food, and medical products that 
are exempt. Import duty is an additional sales tax 
applicable on all imported goods at a rate of 5%

know about instance variables and class variables
a class contains class variables and instance methods 
a instance has instance variables and instance methods
=end

class Items

	def initialize(quantity, item_name, price, tax_type)
		@quantity = quantity
		@item_name = item_name
		@price = price
		@tax_type = tax_type
		@total_tax = 0
	end

		def calc_tax()
		if @tax_type == "sales"
			@total_tax+= @quantity * @price * 0.1
		elsif @tax_type == "food"
			@total_tax += @quantity * @price * 0.05
		elsif @tax_type == "exempt"
			@total_tax = @total_tax
		else
			puts "item type not found"
		end
		return [@total_tax, @price, @quantity, @item_name]
	end
end


class Receipt
	def initialize(item1, item2, item3)
=begin
	
[0, total tax ; 1, price ; 2, quantity ; 3, item name]
	
=end

		@item1 = item1
		@item2 = item2
		@item3 = item3 
	end

	def print_recept()
		#for item in @item1
		puts "#{@item1[2]} #{@item1[3]} : #{@item1[0]+@item1[1]}"
		puts "#{@item2[2]} #{@item2[3]} : #{@item2[0]+@item2[1]}"
		puts "#{@item3[2]} #{@item3[3]} : #{@item3[0]+@item3[1]}"
		
		total_tax = (@item1[0] +@item2[0] +@item3[0]).round(2)
		puts "Sales Taxes: #{total_tax}"

		total_price = (@item1[0]+@item1[1] +@item2[0]+@item2[1] +@item3[0]+@item3[1]).round(2)
		puts "Total:#{total_price}"
	end


end




item1 = Items.new(1, "book", 12.49, "exempt")
item1_info = item1.calc_tax
item2 = Items.new(1, "music CD", 14.99, "sales")
item2_info = item2.calc_tax
item3 = Items.new(1, "chocolate bar", 0.85, "food")
item3_info = item3.calc_tax

receipt = Receipt.new(item1_info, item2_info, item3_info)

receipt.print_recept

item4 = Items.new(1, "chocolate", 10.00, "imported")
item1_info = item1.calc_tax

item5 = Items.new(1, "perfume", 47.50, "imported")
item1_info = item1.calc_tax

















