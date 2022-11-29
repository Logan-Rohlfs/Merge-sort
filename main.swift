// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [38, 27, 43, 3, 9, 82, 10]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
var integers = unsortedIntegers

// Add your code below:

func merge(arr1: [Int], arr2: [Int]) -> [Int] {
    var arr1Index = 0
    var arr2Index = 0

    var sortedArray = [Int]()

    while arr1Index < arr1.count && arr2Index < arr2.count {
        if arr1[arr1Index] < arr2[arr2Index] {
            sortedArray.append(arr1[arr1Index])
            arr1Index += 1
        } else if arr1[arr1Index] > arr2[arr2Index] {
            sortedArray.append(arr2[arr2Index])
            arr2Index += 1
        } else {
            sortedArray.append(arr1[arr1Index])
            arr1Index += 1
            sortedArray.append(arr2[arr2Index])
            arr2Index += 1

        }
    }

    while arr1Index < arr1.count {
        sortedArray.append(arr1[arr1Index])
        arr1Index += 1
    }
    while arr2Index < arr2.count {
        sortedArray.append(arr2[arr2Index])
        arr2Index += 1
    }

    return sortedArray
}


func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    var cutIndex = 0
    
    if array.count % 2 != 0 {
        cutIndex = (array.count / 2) + 1
    } else {
        cutIndex = array.count / 2
    }
    print("Array: \(array)")
    let arr1 = mergeSort(Array(array[0..<cutIndex]))
    print("Array: \(arr1)")
    let arr2 = mergeSort(Array(array[cutIndex..<array.count]))
    print("Array: \(arr2)")
    return merge(arr1: arr1, arr2: arr2)
}

print("Array: \(mergeSort(integers))")
