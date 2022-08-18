@pieces = Array.new(10){Array.new(10){0}}

col_label = ["A","B","C","D","E","F","G","H","I","J"]

row_label = ["10","9","8","7","6","5","4","3","2","1"]

for i in 0..9

    for j in 0..9

        @pieces[i][j] = "#{col_label[j]}#{row_label[i]}"

    end

end

@pieces.each{|row|

    puts row.join(" ")

}

public

def coordinates(element) #return the piece's current\initial coordinates

    each_with_index do |subarray, i|

        j = subarray.index(element)

        return i, j if j

    end

end

def movePiece(currentCoords, horizontal, vertical) #moves the piece and returns final coordinates

    if horizontal[1] == "R"

         currentCoords[1] += horizontal[0].to_i

    else

        currentCoords[1] -= horizontal[0].to_i

    end

    if vertical[1] == "D"

         currentCoords[0] += vertical[0].to_i

    else

        currentCoords[0] -= vertical[0].to_i

    end

    return currentCoords

end

def movePhantom(currentCoords, horizontal, vertical) #moves the phantom and return final coordinates

    if horizontal[1] == "R"

         currentCoords[1] -= horizontal[0].to_i * 2

    else

        currentCoords[1] += horizontal[0].to_i * 2

    end


    if vertical[1] == "D"

         currentCoords[0] -= vertical[0].to_i * 2

    else

        currentCoords[0] += vertical[0].to_i * 2

    end

    return currentCoords

end

def getPiece(newCords) #return the piece in the given coordinates

    return @pieces[newCords[0]][newCords[1]]

end

puts "Enter an input: "

input = gets.chomp.strip

initialPoint = input[0..1]

lr = input[3..4]

ud = input[6..7]

startCoordinates = @pieces.coordinates(initialPoint) 

newCoordinates = movePiece(startCoordinates, lr, ud) 

piece = getPiece(newCoordinates) 

phantomCoordinates = movePhantom(newCoordinates, lr, ud)

phantom = getPiece(phantomCoordinates)

puts "piece: #{piece}, phantom piece: #{phantom}"