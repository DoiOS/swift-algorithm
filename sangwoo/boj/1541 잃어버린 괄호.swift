func getEvalSum(eval: String) -> Int {
    return eval.split(separator: "+").map { Int($0)! }.reduce(0, +)
}

func solution() -> Int {
    let eval = readLine()!
    let splitEval = eval.split(separator: "-").map { String($0) }
    
    let ans = getEvalSum(eval: splitEval[0])
    if (splitEval.count == 1) {
        return ans
    }
    
    return splitEval[1..<splitEval.count].reduce(ans) { $0 - getEvalSum(eval: $1) }
}

print(solution())