RSpec.describe "Super object functions" do

  context "Checking true?" do
    it "returns true for a string that contains 'true'" do
      expect("true".true?).to equal(true)
    end

    it "returns true for a boolean object that is set to true" do
      expect(true.true?).to equal(true)
    end

    it "returns false for a string that is not equal to 'true'" do
      expect("some string".true?).to equal(false)
    end

    it "returns false for a boolean object that is not set to true" do
      expect(false.true?).to equal(false)
    end
  end

  context "Checking false?" do
    it "returns true for a string that contains 'false'" do
      expect("false".false?).to equal(true)
    end

    it "returns false for a boolean object that is set to false" do
      expect(false.false?).to equal(true)
    end

    it "returns false for a string that is not equal to 'false'" do
      expect("some string".false?).to equal(false)
    end

    it "returns false for a boolean object that is not set to false" do
      expect(true.false?).to equal(false)
    end
  end

end
