# BashJson
BashJson is very simple bash function to read values from json files in bash scripts, it simply wrapes Python's json module.

## Usage
A real-life/useful use of this code will be inside another bash script trying to read  values from complex JSON data. However, it can be used independently from any UNIX terminal.

- Clone the repo in any directory on your system
- Make the script executable by running the following command
    ```
    chmod +x bashjson.sh
    ```
- Now run the following command to extract values from your json file
     ```
     sh bashjson.h json_file source key1 key2 ....
     ```
Please note that the script takes at least 2 arguements. First one is the source of the json file and rest are the keys to be extracted.

If you pass multiple keys, make sure that they follow the hierarchy in the json data. See the example below

## Example
Let's consider this exmaple json to be read using a bash script;
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
And Let's assume this data is in the same directory as our script in a file named `tool.json`

**Then, following will be the way to call this function:**

 `sh bashjson tool.json name`
 Prints: Test Tool 
 
 `sh bashjson tool.json supported_os osx food`
 Prints: bar
 
 `sh bashjson tool.json supported_os osx tested_on`
 Prints: [10.1,10.13]

### Todos

- [ ] Add support to return array keys directly
- [ ] Read json from variable




License
----

MIT


****
