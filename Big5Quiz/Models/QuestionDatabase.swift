import Foundation

struct Extraversion{
        
    let extraversionQuestions = [
        //Activity
        Question(content: "I react quickly", trait: Trait.Extraversion, Subtrait: Subtrait.Activity),
        //Cheerfulness
        Question(content: "I laugh my way through life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness)
    ]
    let agreeablenessQuestions = [
        //Cooperation
        Question(content: "I am hard to get to know", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation),
        //Cheerfulness
        Question(content: "I look at the bright side of life", trait: Trait.Agreeableness, Subtrait: Subtrait.Cheerfulness),
        //Sympathy
        Question(content: "I feel sympathy for those who are worse off than myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy)
    ]
    let conscientiounessQuestions = [
        //Efficacy
        Question(content: "I carry out my plans", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy), //? maybe "I start my plans" instead of I complete them
        Question(content: "I come up with good solutions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
    ]
    let neuroticismQuestions = [
        //Anger
        Question(content: "I get angry easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
        Question(content: "I rarely get irritaded", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
        Question(content: "I am easily bothered by things", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger), //? right trait and subtrait?
        //Depresion
        Question(content: "I have frequent mood swings", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression), //? right trait and subtrait?
        Question(content: "I dislike myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression),
        //Vulnerability
        Question(content: "I feel relaxed most of the time", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability), //? right trait and subtrait? Anger?
        Question(content: "I get overwhelmed by emotions", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability), //? right trait and subtrait?
        //Anxiety
        Question(content: "Im afraid i'll do the wrong thing", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety)
    ]
    let openessQuestions = [
        //Adventurousness
        Question(content: "I am a creature of habit", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
        Question(content: "I dislike changes", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
        //Imagination
        Question(content: "I very rarely get lost on my thoughts", trait: Trait.Openess, Subtrait: Subtrait.Imagination),
        //Intelect
        Question(content: "I believe there is no absolute right or wrong", trait: Trait.Openess, Subtrait: Subtrait.Intellect)
    ]
}
