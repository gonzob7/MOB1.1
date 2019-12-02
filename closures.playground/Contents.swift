import UIKit

var str = "Hello, playground"


let brunchOption: (String) -> () = { option in
    print(option)
}

brunchOption("pancakes")

let brunchOptionLocation: (String) -> (String) = { option in
    let message = option + " @Post St"
    return message
}

let result = brunchOptionLocation("20 pancakes")
print(result)
