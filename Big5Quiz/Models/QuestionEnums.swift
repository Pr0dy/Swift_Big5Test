import Foundation

enum Trait{
    case Extraversion
    case Agreeableness
    case Conscientiousness
    case Neuroticism
    case Openess
}

enum TraitDescription: String{
    case Extraversion = "Extraverts feel a lot of positive emotion, they are sociable, enjoy risk taking, enjoy interacting with others and are high energy."
    case Agreeableness = "Agreeable people go out of their way and make effort to have positive relationships with others, high agreeable people are modest, trustworthy and enjoy cooperation over competition."
    case Conscientiousness = "People high in conscientiousness are responsible, work hard, enjoy order and cleanliness and keep their word."
    case Neuroticism = "Neuroticism describes feedback to negative emotion, people low on neuroticism experience low levels of anger, stress, anxiety and overall unhapiness"
    case Openess = "This refers to openess of experience, generally highly open people like to experience various new experiences, whether intelectual, physical, artistic or cultural."
}

enum Subtrait{
    //Extraversion Subtraits
    case Activity
    case Sympathy
    case Cheerfulness
    case Excitement_Seeking
    case Friendliness
    case Gregariouness
    //Agreeableness Subtraits
    case Altruism
    case Cooperation
    case Modesty
    case Morality
    case Assertiveness
    case Trust
    //Conscientiousness Subtraits
    case Achievement_Striving
    case Cautiousness
    case Dutifulness
    case Orderliness
    case Self_Discipline
    case Self_Efficacy
    //Neuroticism Subtraits
    case Anger
    case Anxiety
    case Depression
    case Immoderation
    case Self_Consciouness
    case Vulnerability
    //Openess Subtraits
    case Adventurousness
    case Artistic_Interests
    case Emotionality
    case Imagination
    case Intellect
    case Liberalism
}
