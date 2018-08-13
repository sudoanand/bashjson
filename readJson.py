import sys, json; 

with open(sys.argv[1]) as f:
    data = json.load(f)




for x in range(2,len(sys.argv)):
	data = data[sys.argv[x]]

print data