require 'pry'
class CreditCard
	attr_reader :credit_card_number, :credit_card_expire, :credit_card_validation, :card_holder_name, :billing_zip_code
	def initialize(c_c_number, c_c_expire, c_c_validation, card_holder_name, zip_code)
		@credit_card_number = c_c_number
		@credit_card_expire = c_c_expire
		@credit_card_validation =  c_c_validation
		@card_holder_name = card_holder_name
		@billing_zip_code = zip_code
		@year = 14
		@month = 9
	end

	def valid?
		date_holder = []
		date_holder = @credit_card_expire.split("/")
		#binding.pry
		#puts date_holder.last
		#This logic is such that you'd have to go into the code and change the date when ever you want to run program in order to make absolutely certain that it would run right. 
		if @credit_card_number.to_s.length == 16 && date_holder.last.to_i >= @year && @credit_card_validation.to_s.length == 3 && @card_holder_name.class == String && @billing_zip_code.to_s.length == 5
			if date_holder.last.to_i == @year
				if date_holder.first.to_i >= @month
					false
				else
					true
				end
			else
				true
			end
		else
			false
		end
	end
end