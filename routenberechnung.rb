@distance = "A-B>5|B-C>4|C-D>8|D-E>6|A-D>5|C-E>2|E-B>3|A-E>7".split('|')
@currentRoute = {}  
0.upto(@distance.length - 1) do |i| 
  tempDist = @distance[i].split('>')
  @currentRoute[tempDist[0]] = tempDist[1]
end
def currentRouteBerechnen(myRoute)
  summe = 0
  myRoute = myRoute.split('-')
  0.upto(myRoute.length - 2) do |i|

    tempDist = @currentRoute[myRoute[i] + '-' + myRoute[i+1]].to_i
        if(tempDist == 0)                                      
          return "Routenberechnung nicht moeglich."
        end
     summe += tempDist
  end
  return summe
end

# -- Aufruf der Funktion -- #
puts currentRouteBerechnen("A-B-C") #von e bis d = 6 von d bis c = 8 SUMME = 6 + 8 = 14