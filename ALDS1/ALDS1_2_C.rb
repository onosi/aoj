def BubbleSort( cards, n )
    for k in 1..(n-1) do
        for i in (k..(n-1)).to_a.reverse do
            tmp = 0
            if cards[ i ][ 1 ].to_i < cards[ i - 1 ][ 1 ].to_i
                tmp = cards[i]
                cards[ i ] = cards[ i - 1 ]
                cards[ i - 1 ] = tmp
            end
        end
    end
    cards
end

def SelectionSort( cards, n )
    for i in 0..(n-1)
        tmp = 0
        minj = i
        for j in (i + 1)..(n-1) do
            if  cards[ minj ][ 1 ].to_i > cards[ j ][ 1 ].to_i
                minj = j
            end
        end
        tmp = cards[ minj ]
        cards[ minj ] =  cards[ i ]
        cards[ i ] = tmp
    end
    cards
end

def isStable(a, b, n)
    for i in 0..(n-1)
        for k in (i+1)..(n-1)
            for l in 0..(n-1)
                for m in (l+1)..(n-1)
                    return "Not stable" if a[i][1].to_i ==  a[k][1].to_i &&  a[i] == b[m] && a[k] == b[l]
                end
            end
        end
    end
    "Stable"
end

n = gets.to_i
card = gets.split

a = BubbleSort(card.clone, n)
puts a.join(' ')
puts isStable(a, card, n)

b = SelectionSort(card.clone, n)
puts b.join(' ')
puts isStable(b, card, n)