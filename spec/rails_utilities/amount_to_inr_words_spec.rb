require 'rails_utilities/amount_to_inr_words'

RSpec.describe "Amount to INR Words functions" do

  context "amount_to_inr_words" do
    it "returns words for amounts without decimals" do
      expect(AmountToInrWords.amount_to_inr_words(1)).to eq("One")
      expect(AmountToInrWords.amount_to_inr_words(10)).to eq("Ten")
      expect(AmountToInrWords.amount_to_inr_words(12)).to eq("Twelve")
      expect(AmountToInrWords.amount_to_inr_words(123)).to eq("One Hundred And Twenty Three")
      expect(AmountToInrWords.amount_to_inr_words(40)).to eq("Forty")
      expect(AmountToInrWords.amount_to_inr_words(1000)).to eq("One Thousand")
      expect(AmountToInrWords.amount_to_inr_words(1001)).to eq("One Thousand And One")
      expect(AmountToInrWords.amount_to_inr_words(999)).to eq("Nine Hundred And Ninety Nine")
      expect(AmountToInrWords.amount_to_inr_words(1234)).to eq("One Thousand Two Hundred And Thirty Four")
      expect(AmountToInrWords.amount_to_inr_words(12345)).to eq("Twelve Thousand Three Hundred And Forty Five")
      expect(AmountToInrWords.amount_to_inr_words(123456)).to eq("One Lakh Twenty Three Thousand Four Hundred And Fifty Six")
      expect(AmountToInrWords.amount_to_inr_words(1234567)).to eq("Twelve Lakh Thirty Four Thousand Five Hundred And Sixty Seven")
      expect(AmountToInrWords.amount_to_inr_words(12345678)).to eq("One Crore Twenty Three Lakh Forty Five Thousand Six Hundred And Seventy Eight")
      expect(AmountToInrWords.amount_to_inr_words(123456789)).to eq("Twelve Crore Thirty Four Lakh Fifty Six Thousand Seven Hundred And Eighty Nine")
    end

    it "returns words for amounts with paise" do
      expect(AmountToInrWords.amount_to_inr_words(1234.56)).to eq("One Thousand Two Hundred Thirty Four And Fifty Six Paise")
      expect(AmountToInrWords.amount_to_inr_words(1234.06)).to eq("One Thousand Two Hundred Thirty Four And Six Paise")
      expect(AmountToInrWords.amount_to_inr_words(12.00)).to eq("Twelve")
      expect(AmountToInrWords.amount_to_inr_words(1000.01)).to eq("One Thousand And One Paise")
    end

    it "returns words for amounts with paise and rounds them off to 2 decimal places" do
      expect(AmountToInrWords.amount_to_inr_words(1234.563)).to eq("One Thousand Two Hundred Thirty Four And Fifty Six Paise")
      expect(AmountToInrWords.amount_to_inr_words("1234.563")).to eq("One Thousand Two Hundred Thirty Four And Fifty Six Paise")
      expect(AmountToInrWords.amount_to_inr_words(1234.569)).to eq("One Thousand Two Hundred Thirty Four And Fifty Seven Paise")
      expect(AmountToInrWords.amount_to_inr_words(1234.999)).to eq("One Thousand Two Hundred And Thirty Five")
      expect(AmountToInrWords.amount_to_inr_words(99.995)).to eq("One Hundred")
      expect(AmountToInrWords.amount_to_inr_words(1000.019)).to eq("One Thousand And Two Paise")
      expect(AmountToInrWords.amount_to_inr_words("01.999")).to eq("Two")      
    end
  end

end
