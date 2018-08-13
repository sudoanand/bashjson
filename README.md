# BashJson
BashJson is very simple bash function to read values from json files in bash scripts, it simply wrapes Python's json module.

## Usage
A real-life/useful use of this code will be inside another bash script trying to read  values from complex JSON data. However, it can be used independently from any UNIX terminal.

- Clone the repo in any directory on your system: `git clone https://github.com/hack4mer/bashjson.git`
- Make the script executable: `chmod +x bashjson.sh`
- Run the following command to extract the key "name" from `test.json`
     ```
     ./bashjson.sh test.json name
     ```
Please note that the script takes at least 2 arguements. 
First one is the source of the json file and rest are the keys to be extracted.

If you pass multiple keys, make sure that they follow the hierarchy in the json data. See the example below

## Example
Let's consider this exmaple json data from the file `test.json` included in this project
```
{
	"name":"Test tool",
	"author":"hack4mer",
	"supported_os":{
		"osx":{
		    "foo":"bar",
			"min_version" : 10.12,
			"tested_on" : [10.1,10.13]
		},
		"ubuntu":{
			"min_version":14.04,
			"tested_on" : 16.04
		}
	}
}
```
**Following commands read data from this example json file**

 `./bashjson.sh test.json name`
 > Prints: Test Tool 
 
 `./bashjson.sh test.json supported_os osx foo`
 > Prints: bar
 
 `./bashjson.sh test.json supported_os osx tested_on`
> Prints: [10.1,10.13]

### Todo

- [ ] Add support to return array keys directly
- [ ] Read json from variable




License
----

MIT


****
