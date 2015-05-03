module Binary
  def self.to_dec(binary)
    dec = 0
    
    binary.each_char do |c|
      dec *= 2
      if c == '0'
        # This is blank on purpose
      elsif c == '1'
        dec += 1
      else
        raise StandardError.new("You have not entered valid binary.")
      end
    end

    dec
  end
end
