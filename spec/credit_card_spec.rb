require 'spec_helper'
require_relative '../lib/credit_card'

describe CreditCard do
	before(:all)do
		@first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)
		@second_credit_card = CreditCard.new(2741859, "10/15", 999, "John Smith", 12345)
		@third_credit_card = CreditCard.new(1234456778901234, "10/12", 999, "John Smith", 12345)
		@fourth_credit_card = CreditCard.new(1234456778901234, "9/15", 999, "John Smith", 12345)
		@fifth_credit_card = CreditCard.new(1234456778901234, "10/15", 99, "John Smith", 12345)
		@sixth_credit_card = CreditCard.new(1234456778901234, "10/15", 999, 89302, 12345)
		@seventh_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 1234)
	end

	it 'has a credit card #' do
		#first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)
		expect(@first_credit_card.credit_card_number).to eq 1234456778901234
		expect(@second_credit_card.credit_card_number).to eq 2741859
	end

	it 'has an expiration date' do
		#first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)

		expect(@first_credit_card.credit_card_expire). to eq "10/15"
	end

	it 'has a ccv #' do
		#first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)

		expect(@first_credit_card.credit_card_validation).to eq 999
	end

	it 'has a name' do
		#first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)
		expect(@first_credit_card.card_holder_name).to eq "John Smith"
	end

	it 'has a billing zip code' do
		#first_credit_card = CreditCard.new(1234456778901234, "10/15", 999, "John Smith", 12345)
		expect(@first_credit_card.billing_zip_code).to eq 12345
	end

	it 'checks if it is valid' do
		expect(@first_credit_card.valid?).to be(true)
		expect(@second_credit_card.valid?).to be(false)
		expect(@third_credit_card.valid?).to be(false)
		expect(@fourth_credit_card.valid?).to be(true)
		expect(@fifth_credit_card.valid?).to be(false)
		expect(@sixth_credit_card.valid?).to be(false)
		expect(@seventh_credit_card.valid?).to be(false)
	end
end