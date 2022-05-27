import Foundation

struct QuestionDatabase{
        
    let extraversionQuestions = [
    //Activity
        Question(content: "I react quickly", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: true),
        Question(content: "I love action", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: true),
        Question(content: "I like a leisurely lifestyle", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: false),
        Question(content: "I dislike loud music", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: false),
        Question(content: "I am always busy", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: true),
        Question(content: "I enjoy being part of a loud crowd", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: true),
        Question(content: "I am always prepared", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: true),
        Question(content: "I like to take it easy", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: false),
        Question(content: "I react slowly", trait: Trait.Extraversion, Subtrait: Subtrait.Activity, positiveQuestion: false),
    //Cheerfulness
        Question(content: "I laugh my way through life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I look at the bright side of life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "Im not easily amused", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: false),
        Question(content: "I have a lot of fun", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I love life", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I radiate joy", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I love surprise parties", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I express childlike joy", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I see beauty in things that others might not notice", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
        Question(content: "I laugh aloud", trait: Trait.Extraversion, Subtrait: Subtrait.Cheerfulness, positiveQuestion: true),
    //Gregariousness
        Question(content: "I make friends easily", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I have little to say", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: false),
        Question(content: "I feel comfortable around other people", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I only feel confortable with friends", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I amuse my friends", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I avoid contact with others", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: false),
        Question(content: "I talk to a lot of different people at parties", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I love large parties", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
        Question(content: "I often feel uncomfortable around others", trait: Trait.Extraversion, Subtrait: Subtrait.Gregariouness, positiveQuestion: true),
    //Assertiveness
        Question(content: "I wait for others to lead the way", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: false),
        Question(content: "I try to lead others", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: true),
        Question(content: "I can talk others into doing things", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: true),
        Question(content: "I take control of things", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: true),
        Question(content: "I take charge", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: true),
        Question(content: "I seek to influence others", trait: Trait.Extraversion, Subtrait: Subtrait.Assertiveness, positiveQuestion: true), //?
    //Friendliness
        Question(content: "I prefer to be alone", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I seek quiet", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I am not really interested in others", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I enjoy being part of a group", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: true),
        Question(content: "I want to be left alone", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I dont like crowded events", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I keep others at a distance", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
        Question(content: "I avoid crowds", trait: Trait.Extraversion, Subtrait: Subtrait.Friendliness, positiveQuestion: false),
    //Excitement Seeking
        Question(content: "I love a good fight", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: true),
        Question(content: "I dislike changes", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: false),
        Question(content: "I love action", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: true),
        Question(content: "I enjoy wild fights of fantasy", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: true),
        Question(content: "I love excitement", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: true),
        Question(content: "I would never try very high adrenaline sports or activities", trait: Trait.Extraversion, Subtrait: Subtrait.Excitement_Seeking, positiveQuestion: false),
    ]
    
    let agreeablenessQuestions = [
    //Cooperation
        Question(content: "I am hard to get to know", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation, positiveQuestion: false), //correct subtrait
        Question(content: "I value cooperation to competition", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation, positiveQuestion: true),
        Question(content: "I obstruct other's plans", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation, positiveQuestion: false),
        Question(content: "I involve others in what im doing", trait: Trait.Agreeableness, Subtrait: Subtrait.Cooperation, positiveQuestion: true),
    //Morality
        Question(content: "I take revenge on others", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),
        Question(content: "I use flattery to get ahead", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),
        Question(content: "I turn my back on others", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),
        Question(content: "I misrepresent the facts", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),
        Question(content: "I listen to my conscience", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: true),
        Question(content: "I take advantage of others", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),
        Question(content: "I stick to the rules", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: true),
        Question(content: "I try to follow the rules", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: true),
        Question(content: "I break rules", trait: Trait.Agreeableness, Subtrait: Subtrait.Morality, positiveQuestion: false),

    //Sympathy
        Question(content: "I feel sympathy for those who are worse off than myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: true),
        Question(content: "I tend to dislike softhearted people", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: false),
        Question(content: "I have a good word for everyone", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: true),
        Question(content: "I listen to my conscience", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: true),
        Question(content: "I make people feel welcome", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: true),
        Question(content: "I cheer up people", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: true),
        Question(content: "I make people feel uncomfortable", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: false),
        Question(content: "I am indifferent to the feelings of others", trait: Trait.Agreeableness, Subtrait: Subtrait.Sympathy, positiveQuestion: false),

    //Altruism
        Question(content: "I believe that people should to things without help", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: false),
        Question(content: "I love to help others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: true),
        Question(content: "Im not interested in other people's problems", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: false),
        Question(content: "I am concerned about others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: true),
        Question(content: "I sympathize with the homeless", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: true),
        Question(content: "I pretend to be concerned for others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: false),
        Question(content: "I take time for others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: true),
        Question(content: "I anticipate the needs of others", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: true),
        Question(content: "I try not to think about the needy", trait: Trait.Agreeableness, Subtrait: Subtrait.Altruism, positiveQuestion: false),
    //Modesty
        Question(content: "I think highly of myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false),
        Question(content: "I talk with proud about my achievements", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false),
        Question(content: "I hate to seem pushy", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: true),
        Question(content: "I look down on others", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false),
        Question(content: "I have a high opinion of myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: true),
        Question(content: "I hold a grudge from negative past experiences", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false),
        Question(content: "I put people under pressure", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false),
        Question(content: "I cant stand week people", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: false), //?
        Question(content: "I rarely brag about myself", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: true),
        Question(content: "I believe that I am better than other", trait: Trait.Agreeableness, Subtrait: Subtrait.Modesty, positiveQuestion: true),
    //Trust
        Question(content: "I distrust people", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: false),
        Question(content: "I believe most people are moral", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
        Question(content: "I believe that others have good intentions", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
        Question(content: "I trust others", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
        Question(content: "I believe in human goodness", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
        Question(content: "I trust what people say", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
        Question(content: "I believe that people are essentially evil", trait: Trait.Agreeableness, Subtrait: Subtrait.Trust, positiveQuestion: true),
    ]
    
    let conscientiounessQuestions = [
    //Self Efficacy
        Question(content: "I carry out my plans", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true), //? maybe "I start my plans" instead of I complete them
        Question(content: "I come up with good solutions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I excel at what i do", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I know the answers to many questions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I stick to my chosen path", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I find it difficult to get down to work", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: false),
        Question(content: "I can manage many things at the same time", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I easily overcome obstacles", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I have little to contribute", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: false), //maybe depression?
        Question(content: "I can handle complex problems", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I can handle tasks smoothly", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        
    //Orderliness COMPLETE
        Question(content: "I leave a mess in my room", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness , positiveQuestion: false),
        Question(content: "I like to tidy up", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: true),
        Question(content: "I love order and regularity", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: true),
        Question(content: "I like order", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: true),
        Question(content: "I often forget to put things back in their proper place", trait: Trait.Openess, Subtrait: Subtrait.Orderliness, positiveQuestion: false),
        Question(content: "I am not bothered by messy people", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: false),
        Question(content: "I want everything to be just right", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: false),
        Question(content: "I enjoy being reckless", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: false),
        Question(content: "I leave my belongings around", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: false),
        Question(content: "I do things according to a plan", trait: Trait.Conscientiousness, Subtrait: Subtrait.Orderliness, positiveQuestion: false), //?

    //Dutifulness
        Question(content: "I pay my bills on time", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: true),
        Question(content: "I keep my promises", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: true),
        Question(content: "I get others to do my duties", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: false),
        Question(content: "I break my promises", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: false),
        Question(content: "I would never cheat on my taxes", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: true),
        Question(content: "I do the opposite of what im asked", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: false),
        Question(content: "I tell the truth", trait: Trait.Conscientiousness, Subtrait: Subtrait.Dutifulness, positiveQuestion: true),
  
    //Cautiouness
        Question(content: "I postpone decisions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I rush into things", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I avoid mistakes", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: true),
        Question(content: "I hold back my options", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: true),
        Question(content: "I often make last minute plans", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I act without thinking", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I like to take my time", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: true),
        Question(content: "I go straight for the goal", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I dont know why I do some of the things I do", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: false),
        Question(content: "I choose my words with care", trait: Trait.Conscientiousness, Subtrait: Subtrait.Cautiousness, positiveQuestion: true),
    //Self-Discipline
        Question(content: "I get to work at once", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
        Question(content: "I start tasks right away", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
        Question(content: "I do a lot in my spare time", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
        Question(content: "I waste my time", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: false),
        Question(content: "I get to work at once", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
        Question(content: "I need a push to get started", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: false),
        Question(content: "I get chores done right away", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
        Question(content: "I turn my plans into actions", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Discipline, positiveQuestion: true),
    //Achievement Striving
        Question(content: "I am highly motivated to succeed", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: true),
        Question(content: "I do more than what's expected of me", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: true),
        Question(content: "I am not highly motivated to succeed", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: false),
        Question(content: "I put little time and effort into my work", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: false),
        Question(content: "I do just enough work to get by", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: false),
        Question(content: "I work hard", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: true),
        Question(content: "I plunge into tasks with all my heart", trait: Trait.Conscientiousness, Subtrait: Subtrait.Achievement_Striving, positiveQuestion: true),
    ]
    
    let neuroticismQuestions = [
    //Anger
        Question(content: "I get angry easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I rarely get irritaded", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: false),
        Question(content: "I get irritaded easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I am easily bothered by things", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true), //? right trait and subtrait?
        Question(content: "I lose my temper", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I get stressed out easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I get upset easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I keep my cool", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: false),
        Question(content: "I yell at people", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
        Question(content: "I insult people", trait: Trait.Neuroticism, Subtrait: Subtrait.Anger, positiveQuestion: true),
    //Depresion COMPLETE
        Question(content: "I have frequent mood swings", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true), //? right trait and subtrait?
        Question(content: "I am often in a bad mood", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I dislike myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I am very pleased with myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I seldom feel blue", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: false), //? right trait and subtrait?
        Question(content: "I am often in a bad mood", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I dislike myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I am very pleased with myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: false),
        Question(content: "I have a low opinion of myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
        Question(content: "I am often down in the dumps", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression, positiveQuestion: true),
    //Vulnerability COMPLETE
        Question(content: "I feel relaxed most of the time", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false), //? right trait and subtrait? Anger?
        Question(content: "I get overwhelmed by emotions", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true), //? right trait and subtrait?
        Question(content: "I feel calm even in tense situations", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false),
        Question(content: "I am not bothered by difficult social situations", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false),
        Question(content: "I am not easily disturbed by events", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false),
        Question(content: "I get caught up in my problems", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true),
        Question(content: "I am not easily affected by my emotions", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true),
        Question(content: "I am easily intimidated", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true),
        Question(content: "I can stand up for myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false),
        Question(content: "I know how to cope with something difficult", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: false),
        Question(content: "I become oberwhelmed by events", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true),
        Question(content: "I feel that im unable to deal with things", trait: Trait.Neuroticism, Subtrait: Subtrait.Vulnerability, positiveQuestion: true),
        
    //Anxiety
        Question(content: "Im afraid i will do the wrong thing", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: true),
        Question(content: "Im afraid of many things", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: true),
        Question(content: "I think all will be well", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: false),
        Question(content: "I fear for the worst", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: true),
        Question(content: "I feel desperate", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: true),
        Question(content: "I panic easily", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: true),
        Question(content: "I remain calm under pressure", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: false),
        Question(content: "I dont worry about things that have already happened", trait: Trait.Neuroticism, Subtrait: Subtrait.Anxiety, positiveQuestion: false),
    //Self Constiouness
        Question(content: "I dislike being in the centre of attention", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: true),
        Question(content: "I feel comfortable with myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: true),
        Question(content: "I am not easily embarrassed", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I make myself the center of attention", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I spend time refelecting on things", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I dont like to draw attention to myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I keep in the background", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I am afraid to draw attention to myself", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false),
        Question(content: "I consider myself an average person", trait: Trait.Neuroticism, Subtrait: Subtrait.Self_Consciouness, positiveQuestion: false), //?
    //Immoderation
        Question(content: "I often eat to much", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I love to eat", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I never spend money extravagantantly", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I never spend more than I can afford", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I am able to control my cravings", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I go on binges", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I rearely overindulge", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
        Question(content: "I easily resist temptations", trait: Trait.Neuroticism, Subtrait: Subtrait.Immoderation, positiveQuestion: true),
    ]
    
    let openessQuestions = [
    //Artistic Interests
        Question(content: "I do not like art", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I do not like concerts", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I believe in the importance of art", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: true),
        Question(content: "I do not enjoy going to art museums", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I like music", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: true),
        Question(content: "I do not like poetry", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I enjoy the beauty of nature", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: true),
        Question(content: "I enjoy watching dance performances", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: true),
    //Adventurousness
        Question(content: "I am a creature of habit", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: false),
        Question(content: "I dislike changes", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: false),
        Question(content: "I feel confortable with unfamiliar situations", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
        Question(content: "I dislike new foods", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: false),
        Question(content: "I seek danger", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
        Question(content: "I like to begin new things", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
        Question(content: "Im willing to try anything once", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
        Question(content: "I prefer to stick with things that I know", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
    
        Question(content: "I seek adventure", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: false),
        Question(content: "I prefer variety to routine", trait: Trait.Openess, Subtrait: Subtrait.Adventurousness, positiveQuestion: true),
    //Imagination
        Question(content: "I very rarely get lost on my thoughts", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: false),
        Question(content: "I have a very good imagination", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: true),
        Question(content: "I have dificulty imagining things", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: false),
        Question(content: "I love to daydream", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: true),
        Question(content: "I do not have a good imagination", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: false),
        Question(content: "I indulge in my fantasies", trait: Trait.Openess, Subtrait: Subtrait.Imagination, positiveQuestion: true),
        Question(content: "I enjoy thinking about things", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I have vivid imagination", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: true),
        Question(content: "I rarely daydream", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy, positiveQuestion: false),
    //Intelect -> COMPLETE
        Question(content: "I have a rich vocabulary", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: true),//?
        Question(content: "I dont have interest in abstract ideas", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: false),
        Question(content: "I am interested in many things", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: true),
        Question(content: "I love reading challenging material", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: true),
        Question(content: "I am not interested in theoretical discussions", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: false),
        Question(content: "I like to solve complex problems", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: true),
        Question(content: "I have a sharp tongue", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: true),
        Question(content: "I avoid difficult reading material", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: false),
        Question(content: "I have difficulty understading abstract ideas", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: false),
        Question(content: "I stumble over my words", trait: Trait.Openess, Subtrait: Subtrait.Intellect, positiveQuestion: false),
    //Emotionality
        Question(content: "I am passionate about causes", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: true),
        Question(content: "I don't understand people who get emotional", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: false),
        Question(content: "I feel others' emotions", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: true),
        Question(content: "I suffer from others' sorrows", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: true),
        Question(content: "I rarely notice my emotional reactions", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: true),
        Question(content: "I rarely get emotional", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: false),
        Question(content: "I experience very few emotuional highs and lows", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: false),
        Question(content: "I experience my emotions intensely", trait: Trait.Openess, Subtrait: Subtrait.Emotionality, positiveQuestion: true),
    //Liberalism
        Question(content: "I would consider voting for conservative party", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: false),
        Question(content: "I believe its just to apply equal punishment to the kind of offense that was made", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: true), //right trait?
        Question(content: "I believe laws should be strictly enforced", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: true),
        Question(content: "I believe that criminals should receive help rather than punishment", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: true),
        Question(content: "I believe that we should be tough on crime", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: true),
        Question(content: "I believe in eye for an eye", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: false), //?
        Question(content: "I believe there is no absolute right or wrong", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: true),
        Question(content: "I believe we are to soft on criminals", trait: Trait.Openess, Subtrait: Subtrait.Liberalism, positiveQuestion: false),
        Question(content: "I would consider voting for liberal political candidates", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I believe in one true religion", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
        Question(content: "I like to stand during the national anthem", trait: Trait.Openess, Subtrait: Subtrait.Artistic_Interests, positiveQuestion: false),
    ]
}

//Question(content: "I love a good fight", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I cant stand confrontations", trait: Trait.Neuroticism, Subtrait: Subtrait.Depression),
//Question(content: "I love flowers", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I feel my life lacks direction", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I believe its just to apply equal punishment to the kind of offense that was made", trait: Trait.Conscientiousness, Subtrait: Subtrait.Self_Efficacy)
//Question(content: "I focus on my problems more than anything else)
//Question(content: "I rarely complain)
//Question(content: "I do crazy things)
//Question(content: "I do things i later regret)
//Question(content: "I missjudge situations)
//Question(content: "I act wild and crazy)
//Question(content: "I dislike talking about myself)
//I enjoy examining myself and my life
//I contradict others
//I set high standards for myself and others
//I cant make up my mind
//I warm quickly to others
//I let things proceed at their own pace
//I can handle a lot of information
//I demand quality
//I act on a whim
//I seldom joke around
//I am not easily annoyed
//I find it dificult to approach others
// I act comfortably with others
// I try to understand myself
// I adapt easily to new situations
