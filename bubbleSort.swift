let range = Int(CommandLine.arguments[1]) ?? 0

var dataSet = (0..<range).map { _ in Int.random(in: 1..<1000) }

func bubbleSort(data: [Int]) -> [Int] 
{
	var swap = true
	var mutableData = data

	while swap == true 
	{
		swap = false
		for i in 0..<data.count - 1
		{
			if mutableData[i] > mutableData[i + 1] 
			{
				let temp = mutableData[i + 1]
				mutableData[i + 1] = mutableData[i]
				mutableData[i] = temp
				
				swap = true
			}
		}
	}

	return mutableData
}