class AmountToInrWords
  class << self
    def amount_to_inr_words(amount)
      result = ""

      amount = amount.to_f.round(2)
      num = amount.to_s.split(".")[0].to_i
      decimal = amount.to_s.split(".")[1]

      if num > 99
      s = num.to_s.rjust(11,'0').insert(-4,'0').scan(/../)
      s.each_with_index{ |x,i|
        if i == s.count - 1 && decimal.to_i == 0 && x.to_i != 0 
          result += " And#{def_calc(x,i)}"
        else
          result += def_calc(x,i)
        end
      }
      else
       result = spell_two_digits(num)
      end

      result = result.strip()

      if decimal.to_i > 0
        if decimal.length == 1
          decimal = (decimal + "0").to_i
        end
        result += " And #{spell_two_digits(decimal.to_i)} Paise"
      end

      return result.strip()
    end

    private

    def def_calc(x,i)
      str=proc_unit(x)
      return '' if str.length==0
      return " #{str} #{suffixes[i]}"
    end

    def proc_unit(x)
      return "" unless x.to_i > 0
      return spell_two_digits(x.to_i)
    end

    def spell_two_digits(x)
     return words[x] if words[x]
     r,f = x.divmod(10)
     return "#{words[r*10]} #{words[f]}"
    end

    def words
      {
        0=>"Zero", 1=>"One", 2=>"Two", 3=>"Three", 4=>"Four", 5=>"Five",
        6=>"Six", 7=>"Seven", 8=>"Eight", 9=>"Nine", 10=>"Ten", 11=>"Eleven",
        12=>"Twelve", 13=>"Thirteen", 14=>"Fourteen", 15=>"Fifteen", 16=>"Sixteen",
        17=>"Seventeen", 18=>"Eighteen", 19=>"Nineteen", 20=>"Twenty", 30=>"Thirty",
        40=>"Forty", 50=>"Fifty", 60=>"Sixty", 70=>"Seventy", 80=>"Eighty", 90=>"Ninety"
      }
    end

    def suffixes
      {
        0=>"Hundred And", 1=>"Crore", 2=>"Lakh", 3=>"Thousand", 4=>"Hundred"
      }
    end
  end
end
