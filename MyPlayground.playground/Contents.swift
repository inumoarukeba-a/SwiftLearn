print(1 + 1)
var x = 2
print(x * x)


var sum = 0
for n in 1...100 {
    sum = sum + n
}
print(sum)

// 練習問題4-1
var todos = ["朝飯", "昼飯", "晩飯"]
print(todos[0])
for task in todos {
    print(task)
}

// 練習問題4-2
var testResults = [95, 75, 80]
var testSum = 0;
for value in testResults {
    testSum = testSum + value
}
print(testSum)

// 練習問題4-3
var tests = [
    "国語": 95,
    "数学": 75,
    "英語": 80
]
tests["数学"] = 100;
print(tests)

// 練習問題4-4
func areaOfSquare(withSideLength length:Int) {
    print(length * length)
}
areaOfSquare(withSideLength: 3)
