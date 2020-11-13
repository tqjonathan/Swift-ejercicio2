// Lectura de parametros y codificacion y decodificacion de string.

// variable de codificacion > letra actual le asigna la siguiente
let code = [
"a" : "b", "b" : "c", "c" : "d", "d" : "e",
"e" : "f", "f" : "g", "g" : "h", "h" : "i",
"i" : "j", "j" : "k", "k" : "l", "l" : "m",
"m" : "n", "n" : "o", "o" : "p", "p" : "q",
"q" : "r", "r" : "s", "s" : "t", "t" : "u",
"u" : "v", "v" : "w", "w" : "x", "x" : "y",
"y" : "z", "z" : "a" 
] 


// variable con Operacion y String
var line = CommandLine.arguments


// convierte los elemetos dl array en un unico string
func arg2String(_ argv: [String]) -> String {
    var string = ""
    for i in line[2...] {
        string += i + " "
    }
    return string
}

// codifica el string
func encode(_ string: String) -> String {
    var codedString = ""
    for char in string {
        let char = String(char)
        codedString += code[char] ?? char
    }
    return codedString
}

func decode(_ string: String) -> String {
    var decodedString = ""
    for char in string{
        var exist = false
        let char = String(char)
        for (key,value) in code{
            if value == char {
                decodedString += key
                exist = true
            }
        }
        if exist == false {
            decodedString += char
        }
    }
    return decodedString
}


if line[1] == "encode" {
    let string = arg2String(line)
    print("\nString-> \(string)\r")
    let codedString = encode(string)
    print("Encoded String -> \(codedString)\n")
}else if line[1] == "decode" {
    let string = arg2String(line)
    print("\nString-> \(string)\r")
    let decodedString = decode(string)
    print("Decoded String -> \(decodedString)\n")
}else {
    print("\nUsage error:\r")
    print("   encode + string\n   decode + string\n")

}
