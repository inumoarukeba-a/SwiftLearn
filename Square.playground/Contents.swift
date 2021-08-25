struct Square {
    var slideLength = 3
    var area: Int {
        let result = slideLength * slideLength
        return result
    }
}

let square = Square()
print(square.area)

