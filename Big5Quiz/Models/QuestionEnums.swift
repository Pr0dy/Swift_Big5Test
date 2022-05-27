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
    case Assertiveness = "Assertiveness"
    case Cheerfulness = "Cheerfulness"
    case Excitement_Seeking = "Excitement_Seeking"
    case Friendliness = "Friendliness"
    case Gregariouness = "Gregariouness"
    //Agreeableness Subtraits
    case Altruism = "Altruism"
    case Cooperation = "Cooperation"
    case Modesty = "Modesty"
    case Morality = "Morality"
    case Sympathy = "Sympathy"
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

enum SubTraitDescription: String{
    case Actitity = "If youre high on Activity means you prefer an active lifestyle where youre normally busy, you're always ready to engage in more activity and you enjoy them rather than prefering a quiet, leisurely and calm lifestyle."
    case Assertive = "If youre assertive means its probable you'll try to lead others and take lead on group decisions and projects, you're charismatic and can influence others to follow you or do something for you."
    case Cheerfulness = "Measures the levels of joy, hapiness and positive emotions you usually experience"
    case Excitement_Seeking = "The levels of thrills you seek in your life and how you perceive high adrenaline experiences"
    case Friendliness = "Your desire to have people around you and show interest in their lives"
    case Gregariouness = "How likely you are to aproach new people and be sociable around new groups of people"
    //Agreeableness Subtraits
    case Altruism = "How much you generally desire to help other people when in need and desire good to them regardless of knowing them or not"
    case Cooperation = "Higher your cooperation higher are the chances you will get along with other people and cooperate with them"
    case Modesty = "Modest people dont show off or brag about themselves or their achievements or display other behaviours that can be harmful to relationships with others"
    case Morality = "Treating people fairly and sticking to rules"
    case Sympathy = "Carrying about other people and wanting to be good to them"
    case Trust = "How much you trust other people's intentions and motives to be good"
    //Conscientiousness Subtraits
    case Achievement_Striving = "Your desire to work extra hard to succeed in your life goals"
    case Cautiousness = "Being cautious means how much you think before making a decision, planning something and avoiding making impulsive actions"
    case Dutifulness = "Sticking with your promises and obligations"
    case Orderliness = "Being clean, have your belonging in order and your daily activities planned and structured"
    case Self_Discipline = "Your ability to get to work imediately, being commited to your work, avoid procrastination and distractions"
    case Self_Efficacy = "Your perceived ability to get your work done correctly and effectively (more accurately, you believe you have high ability to get something done the right way)"
    //Neuroticism Subtraits
    case Anger = "Your general levels of anger and irritability"
    case Anxiety = "The amount of stress, worries and fears you experience in your daily life"
    case Depression = "The ammount of negative emmotion you experience like sadness, feeling unmotivated and how much you like yourself"
    case Immoderation = "Your self-control when it comes to addictive behaviors (eating, shopping, drugs and other vices) and how much you can resist temptations"
    case Self_Consciouness = "How you respond to high levels of attention draw to you, feeling embarassed easily or unease when interacting with other people"
    case Vulnerability = "The chances of you being overwhelmed by difficult situations"
    //Openess Subtraits
    case Adventurousness = "The variety of new experiences you prefer in your life"
    case Artistic_Interests = "Your interest towards muusic, art and culture"
    case Emotionality = "Your desire to feel real emotions and how much you feel others' emotions"
    case Imagination = "How much you get lost on thoughs and imagining things"
    case Intellect = "Your desire to play with ideas, philosophycal concepts and have deep discussions about meaning and life"
    case Liberalism = "Your political liberalism, desire for progressive change in society, lower levels of liberalism indicate you might have a conservative preference"
}
