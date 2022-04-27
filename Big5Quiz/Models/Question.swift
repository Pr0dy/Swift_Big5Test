import Foundation

class Question{
    let questionContent: String
    let questionTrait: String
    let questionSubTrait: String
    
    init(content: String, trait: String, SubTrait: String){
        self.questionContent = content
        self.questionTrait = trait
        self.questionSubTrait = SubTrait
    }
}
