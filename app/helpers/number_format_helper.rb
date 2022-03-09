module NumberFormatHelper
    def format_dollar_amount dollar_amount_in_cents
        "$#{format_number_two_decimals_places dollar_amount_in_cents}"
    end

    def format_percentage percent_to_hundreth
        "#{format_number_two_decimals_places percent_to_hundreth}%"
    end

    def format_number_two_decimals_places number
        "#{number/100}.#{format( '%02d' ,number%100)}"
    end
end