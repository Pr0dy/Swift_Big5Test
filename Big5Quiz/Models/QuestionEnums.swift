import Foundation

enum Trait: String{
    case Extraversion = "Extraversion"
    case Agreeableness = "Agreeableness"
    case Conscientiousness = "Conscientiousness"
    case Neuroticism = "Neuroticism"
    case Openess = "Openess"
}

enum TraitDescription: String{
    case Extraversion = "Extraverts feel a lot of positive emotion, they are sociable, enjoy risk taking, enjoy interacting with others and are high energy."
    case Agreeableness = "Agreeable people go out of their way and make effort to have positive relationships with others, high agreeable people are modest, trustworthy and enjoy cooperation over competition."
    case Conscientiousness = "People high in conscientiousness are responsible, work hard, enjoy order and cleanliness and keep their word."
    case Neuroticism = "Neuroticism describes feedback to negative emotion, people low on neuroticism experience low levels of anger, stress, anxiety and overall unhapiness"
    case Openess = "This refers to openess of experience, generally highly open people like to experience various new experiences, whether intelectual, physical, artistic or cultural."
}

enum Subtrait: String{
    case Activity = "Activity"
    case Sympathy = "Sympathy"
    case Cheerfulness = "Cheerfulness"
    case Excitement_Seeking = "Excitement_Seeking"
    case Friendliness = "Friendliness"
    case Gregariouness = "Gregariouness"
    //Agreeableness Subtraits
    case Altruism = "Altruism"
    case Cooperation = "Cooperation"
    case Modesty = "Modesty"
    case Morality = "Morality"
    case Assertiveness = "Assertiveness"
    case Trust = "Trust"
    //Conscientiousness Subtraits
    case Achievement_Striving = "Achievement_Striving"
    case Cautiousness = "Cautiousness"
    case Dutifulness = "Dutifulness"
    case Orderliness = "Orderliness"
    case Self_Discipline = "Self_Discipline"
    case Self_Efficacy = "Self_Efficacy"
    //Neuroticism Subtraits
    case Anger = "Anger"
    case Anxiety = "Anxiety"
    case Depression = "Depression"
    case Immoderation = "Immoderation"
    case Self_Consciouness = "Self_Consciouness"
    case Vulnerability = "Vulnerability"
    //Openess Subtraits
    case Adventurousness = "Adventurousness"
    case Artistic_Interests = "Artistic_Interests"
    case Emotionality = "Emotionality"
    case Imagination = "Imagination"
    case Intellect = "Intellect"
    case Liberalism = "Liberalism"
}
