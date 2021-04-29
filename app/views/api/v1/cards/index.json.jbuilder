json.array! @cards do |card|
    json.index card.index
    json.title card.title 
    json.image card.image 
    json.keywords card.keywords
    json.interpretation card.interpretation
    json.question card.question 
    json.suggestion card.suggestion 
    json.mantra card.mantra
end