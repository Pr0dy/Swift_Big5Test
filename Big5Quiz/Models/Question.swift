import Foundation

class Question{
    let questionContent: String
    let questionTrait: Trait
    let questionSubTrait: Subtrait
    
    init(content: String, trait: Trait, Subtrait: Subtrait){
        self.questionContent = content
        self.questionTrait = trait
        self.questionSubTrait = Subtrait
    }
}

