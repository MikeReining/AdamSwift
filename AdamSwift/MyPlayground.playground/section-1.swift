// Playground - noun: a place where people can play

import Cocoa

var talkToAdam: String

enum AdamSays {
    case Question, Yelling, Nothing, Whatever
    func adamSays(talkToAdam: String) -> String {
        switch self {
        case .Question: return "Sure"
        case .Yelling: return "Woah, chill out!"
        case .Nothing: return ""
        case .Whatever: return "Whatever"
            
        }
    }
}


talkToAdam = "hello?"

// Does String contain a question?


for char in talkToAdam {
    if char == "?" {
        AdamSays.Question
    }
}

// Is String in ALL CAPS?

var output = ""
for char in talkToAdam {
    var tempString = String(char) //cast char as String
    if tempString.lowercaseString != tempString {
        output += tempString
    }
}
if talkToAdam == output {
    AdamSays.Yelling
}

// Is string empty?

if talkToAdam == "" {
    AdamSays.Nothing
}

// If else loop




var initialString = "test"
case "
