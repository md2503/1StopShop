import sys
from sys import argv  

import string

def hello(s):
    v = s.split(",")
    listOfXs = []
    listOfYs = []
    for i in range(len(v)):
        if i%2 == 0:
            listOfXs += [int(v[i][:-2])]
        else:
            listOfYs += [int(v[i][:-2])]
            
    coordList = helper(listOfXs, listOfYs)
        
    route = optimumRoute(coordList)
   
    return route


def helper(xCoords, yCoords):
    listOfCoords = []
    for j in range(len(xCoords)):
        temp = [xCoords[j], yCoords[j]]
        listOfCoords += [temp]
    
    return listOfCoords
    
def xDist(x1,x2):
    return abs(x2-x1)

def yDist(y1,y2):
    return abs(y2-y1)

def distBetween2Points(pointA, pointB):
    return xDist(pointA[0],pointB[0]) + yDist(pointA[1],pointB[1])

def shortestPathInList(bins):
    least = 10000000000
    binA = 0
    binB = 0
    w = 0
    z = 0
    for b in range(len(bins)):
        for i in range(len(bins)):
            if b!=i:
                if xDist(bins[b][0],bins[i][0])+yDist(bins[b][1],bins[i][1])<least:
                    least = xDist(bins[b][0],bins[i][0])+yDist(bins[b][1],bins[i][1])
                    binA = bins[b]
                    binB = bins[i]
                    w = b
                    z = i
    return([binA,binB,w,z])

def minRouteFromPoint(point, bins):
    least = 1000000000000000
    index = 0
    for i in range(len(bins)):
        d = distBetween2Points(point, bins[i])
        if point != bins[i]:
            if d < least:
                    least = d
                    index = i
    return [bins[index],index]

def finder(b, bins):
    for i in range(len(bins)):
        if b == bins[i]:
            return i 

def optimumRoute(bins):
    route = ""
    s = shortestPathInList(bins)
    route += str(s[0][0]) + "," +  str(s[0][1]) + ","
    goFrom = s[1]
    bins.pop(s[2])
    while len(bins)>1:
        m = minRouteFromPoint(goFrom, bins)
        route += str(goFrom[0]) +  "," + str(goFrom[1]) +  ","
        bins.pop(finder(goFrom,bins))
        goFrom = m[0] 
    route += str(bins[0][0]) + "," + str(bins[0][1])
    return route

def trial(points):
    x = str(points[0][:-1])
    return hello(x) 
 

print trial(sys.argv[1:])    

#This is the route: [10, 341],[10, 213],[201, 243],[277, 370],[146, 10]
##[10, 341],[10, 213],[201, 243],[277, 370],[146, 10]