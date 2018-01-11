RSpec.describe "Super string functions" do

  context "Checking is_i?" do
    it "returns true if a string contains only numbers" do
      expect("123".is_i?).to equal(true)
    end

    it "returns false if a string does not contain only numbers" do
      expect("ab123".is_i?).to equal(false)
    end
  end

  context "Checking is_email?" do
    it "returns true if a string contains an email" do
      expect("a@b.com".is_email?).to equal(true)
    end

    it "returns false if a string does not contain an email" do
      expect("Some random string".is_email?).to equal(false)
    end
  end

  context "Checking prepend_a_or_an" do
    it "prepends 'a' if a string does not start with vowel without changing the original string" do
      test_string = "bat"
      copy_of_test_string = test_string.dup

      expect(test_string.prepend_a_or_an).to eq("a #{test_string}")
      expect(test_string).to eq(copy_of_test_string)
    end

    it "prepends 'an' if a string starts with a vowel without changing the original string" do
      test_string = "apple"
      copy_of_test_string = test_string.dup

      expect(test_string.prepend_a_or_an).to eq("an #{test_string}")
      expect(test_string).to eq(copy_of_test_string)
    end

    it "returns the original string if string starts with a number without modifying the original" do
      test_string = "123"
      copy_of_test_string = test_string.dup

      expect(test_string.prepend_a_or_an).to eq(test_string)
      expect(test_string).to eq(copy_of_test_string)
    end
  end

  context "Checking strip_country_code" do
    it "returns a string which does not contain '+91' if string starts with '+91'. It does not modify the original string" do
      test_string = "+919999999999"
      copy_of_test_string = test_string.dup

      expect(test_string.strip_country_code).to eq("9999999999")
      expect(test_string).to eq(copy_of_test_string)
    end

    it "returns a string which is the same as the original string if the original does not contain '+91'. It does not modify the original string" do
      test_string = "9999999999"
      copy_of_test_string = test_string.dup

      expect(test_string.strip_country_code).to eq("9999999999")
      expect(test_string).to eq(copy_of_test_string)
    end
  end
end
