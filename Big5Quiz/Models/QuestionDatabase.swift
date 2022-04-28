import Foundation

struct QuestionDatabase{
        
    let extraversionQuestions = [
    //Activity
        Question(content: "I react quickly", trait: Trait.Extraversion, Subtrait: Subtrait.Activity),
        Question(content: "I love action", trait: Trait.Extraversion, Subtrait: Subtrait.Activity),
    //Cheerfulness
        Question(content: "I laugh my way through life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness),
        Question(content: "I look at the bright side of life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness),
        Question(content: "Im not easily amused", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness),
    //Gregariousness
        Question(content: "I make friends easily", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness),
        Question(content: "I have little to say", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness),
    //Assertiveness
        Question(content: "I wait for others to lead the way", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness),
        Question(content: "I try to lead others", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness),
        
    //Friendliness
        Question(content: "I prefer to be alone", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness),
    ]
    
    let agreeablenessQuestions = [
    //Cooperation
        Question(content: "I am hard to get to know", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation), //correct subtrait
        Question(content: "I value cooperation to competition", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation),
    //Morality
        Question(content: "I take revenge on others", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality),
    //Sympathy
        Question(content: "I feel sympathy for those who are worse off than myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy),
    //Altruism
        Question(content: "I believe that people should to things without help", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism),
        Question(content: "I love to help others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism),
    //Modesty
        Question(content: "I think highly of myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty),
        Question(content: "I talk with proud about my achievements", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty),
        Question(content: "I hate to seem pushy", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty),
    //Trust
        Question(content: "I distrust people", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust),

    ]
    
    let conscientiounessQuestions = [
    //Self Efficacy
        Question(content: "I carry out my plans", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy), //? maybe "I start my plans" instead of I complete them
        Question(content: "I come up with good solutions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy),
        Question(content: "I excel at what i do", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy),
        Question(content: "I have little to contribute", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy), //maybe depression?
    //Orderliness
        Question(content: "I leave a mess in my room", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness),
        Question(content: "I like to tidy up", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness),
        Question(content: "I love order and regularity", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness),
    //Cautiouness
        Question(content: "I postpone decisions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness),
        Question(content: "I rush into things", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness),
        Question(content: "I avoid mistakes", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness),
    //Self-Discipline
        Question(content: "I get to work at once", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline),
    //Achievement Striving
        Question(content: "I am highly motivated to succeed", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving),
        Question(content: "I do more than what's expected of me", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving),
    ]
    
    let neuroticismQuestions = [
    //Anger
        Question(content: "I get angry easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
        Question(content: "I rarely get irritaded", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
        Question(content: "I get irritaded easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
        Question(content: "I am easily bothered by things", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger), //? right trait and subtrait?
        Question(content: "I loose my temper", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger),
    //Depresion
        Question(content: "I have frequent mood swings", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression), //? right trait and subtrait?
        Question(content: "Im often in a bad mood", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression),
        Question(content: "I dislike myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression),
    //Vulnerability
        Question(content: "I feel relaxed most of the time", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability), //? right trait and subtrait? Anger?
        Question(content: "I get overwhelmed by emotions", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability), //? right trait and subtrait?
        Question(content: "I feel calm even in tense situations", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability),
        Question(content: "I am not bothered by difficult social situations", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability),
    //Anxiety
        Question(content: "Im afraid i'll do the wrong thing", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety),
        Question(content: "Im of many things", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety),
        Question(content: "I think all will be well", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety),

    //Self Constiouness
        Question(content: "I dislike being in the centre of attention", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness),
    //Immoderation
        Question(content: "I often eat to much", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation)
    ]
    
    let openessQuestions = [
    //Adventurousness
        Question(content: "I am a creature of habit", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
        Question(content: "I dislike changes", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
        Question(content: "I feel confortable with unfamiliar situations", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
        Question(content: "I dislike new foods", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness),
    //Imagination
        Question(content: "I very rarely get lost on my thoughts", trait: Trait.Openess, Subtrait: Subtrait.Imagination),
        Question(content: "I have a very good imagination", trait: Trait.Openess, Subtrait: Subtrait.Imagination),
    //Intelect
        Question(content: "I believe there is no absolute right or wrong", trait: Trait.Openess, Subtrait: Subtrait.Intellect),
        Question(content: "I dont have interest in abstract ideas", trait: Trait.Openess, Subtrait: Subtrait.Intellect),
        Question(content: "I enjoy examining myself and my life", trait: Trait.Openess, Subtrait: Subtrait.Intellect),
        Question(content: "I love reading challenging material", trait: Trait.Openess, Subtrait: Subtrait.Intellect),
    //Emotionality
        Question(content: "I am passionate about causes", trait: Trait.Openess, Subtrait: Subtrait.Emotionality),
    //Liberalism
        Question(content: "I would consider voting for conservative party", trait: Trait.Openess, Subtrait: Subtrait.Emotionality),
        Question(content: "I believe its just to apply equal punishment to the kind of offense that was made", trait: Trait.Openess, Subtrait: Subtrait.Liberalism), //right trait?
    ]
}

//Question(content: "I love a good fight", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I cant stand confrontations", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression),
//Question(content: "I love flowers", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I feel my life lacks direction", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I believe its just to apply equal punishment to the kind of offense that was made", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I focus on my problems more than anything else)
