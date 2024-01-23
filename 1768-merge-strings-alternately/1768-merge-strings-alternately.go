func mergeAlternately(word1 string, word2 string) string {
        len1 := len(word1)
        len2 := len(word2)
        result := make([]byte, 0, len1+len2)

        i := 0

        for ; i < len1 && i < len2; i++ {
            result = append(result, word1[i])
            result = append(result, word2[i])
        }

        if i < len1 {
            result = append(result, word1[i:]...)
        } else if i < len2 {
            result = append(result, word2[i:]...)
        }
        return string(result)
}