import Foundation

let range = Int(CommandLine.arguments[1]) ?? 0

var dataSet = (0..<range).map { _ in Int.random(in: 1..<1000) }

func merge(left: [Int], right: [Int]) -> [Int] {
	var output =  [Int]()
	
	var mutableLeft = left
	var mutableRight = right
	while mutableLeft.count > 0 && mutableRight.count > 0 
	{    
		if let firstElement = mutableLeft.first, let secondElement = mutableRight.first 
		{
			if firstElement > secondElement 
			{
				output.append(secondElement)
				mutableRight.remove(at: 0)
			}
			else 
			{
				output.append(firstElement)
				mutableLeft.remove(at: 0)
			}
		}
	}
	
	output.append(contentsOf: mutableLeft)
	output.append(contentsOf: mutableRight)

	return output
}
	
func _emMergeSort(data: [Int]) -> [Int] {
	if data.count < 2 { return data }
	
	let leftArray = Array(data[..<Int(data.count / 2)]) 
	let rightArray = Array(data[Int(data.count / 2)..<data.count]) 
	return merge(left: _emMergeSort(data: leftArray), right: _emMergeSort(data: rightArray)) 
}

