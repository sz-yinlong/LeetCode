class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        let chars1 = Array(word1)
        let chars2 = Array(word2)
        
        var merged = ""
        let maxLength = max(chars1.count, chars2.count)
        
        for i in 0..<maxLength {
            if i < chars1.count {
                merged.append(chars1[i])
            }
            if i < chars2.count {
                merged.append(chars2[i])
            }
        }
        return merged
        
    }
}

