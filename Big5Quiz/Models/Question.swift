import Foundation

class Question{
    let questionContent: String
    let questionTrait: Trait
    let questionSubTrait: Subtrait
    let isPositive: Bool
    
    init(content: String, trait: Trait, Subtrait: Subtrait, positiveQuestion: Bool){
        self.questionContent = content
        self.questionTrait = trait
        self.questionSubTrait = Subtrait
        self.isPositive = positiveQuestion
    }
}
