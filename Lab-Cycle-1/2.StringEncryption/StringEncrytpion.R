sentence <- readLines(prompt="Enter your sentence:")
print(sentence)
cleaned_sentence <- unlist(strsplit(gsub("[[:punct:]]","",sentence),"\\s+"))
print(cleaned_sentence)
encryption