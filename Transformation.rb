str= gets
q = gets
while order = gets
    orders = order.split
    if orders[0] == "print"
        puts str[orders[1].to_i..orders[2].to_i]
    elsif orders[0] == "replace"
        str[orders[1].to_i..orders[2].to_i] = orders[3]
    else
        str[orders[1].to_i..orders[2].to_i] = str[orders[1].to_i..orders[2].to_i].reverse
    end
end