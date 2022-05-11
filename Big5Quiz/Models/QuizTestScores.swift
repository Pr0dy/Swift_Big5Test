import Foundation

struct QuizTestScores{
    var Extraversion = ExtraversionScore()
    var Agreeableness =  AgreeablenessScore()
    var Conscientiousness = ConscientiousnessScore()
    var Neuroticism = NeuroticismScore()
    var Openess = OpenessScore()
}

struct ExtraversionScore{
    var activityScore = 0, sympathyScore = 0, cheerfulnessScore = 0,  excitementSeekingScore = 0, friendlinessScore = 0, gregariounessScore = 0
    
    var traitScore: Int {
        get{
            return (activityScore + sympathyScore + cheerfulnessScore + excitementSeekingScore + friendlinessScore + gregariounessScore / 6) * 100
        }
    }
    
    mutating func updateScore(trait: Subtrait, scoreValue: Int){
        switch trait{
        case .Activity: activityScore += scoreValue; break;
        case .Sympathy: sympathyScore += scoreValue; break;
        case .Cheerfulness: cheerfulnessScore += scoreValue; break;
        case .Excitement_Seeking: excitementSeekingScore += scoreValue; break;
        case .Friendliness: friendlinessScore += scoreValue; break;
        case .Gregariouness: gregariounessScore += scoreValue; break;
        default: break
        }
    }
}

struct AgreeablenessScore{
    var altruismScore = 0, cooperationScore = 0, modestyScore = 0, moralityScore = 0, assertivenessScore = 0 ,trustScore = 0
    var traitScore: Int {
        get{
            return (altruismScore + cooperationScore + modestyScore + moralityScore + assertivenessScore + trustScore / 6) * 100
        }
    }
    
    mutating func updateScore(trait: Subtrait, scoreValue: Int){
        switch trait{
        case .Altruism: altruismScore += scoreValue; break;
        case .Cooperation: cooperationScore += scoreValue; break;
        case .Modesty: modestyScore += scoreValue; break;
        case .Morality: moralityScore += scoreValue; break;
        case .Assertiveness: altruismScore += scoreValue; break;
        case .Trust: trustScore += scoreValue; break;
        default: break
        }
    }
}

struct ConscientiousnessScore{
    var achievementStrivingScore = 0, cautiousnessScore = 0, dutifulnessScore = 0, orderlinessScore = 0, selfDisciplineScore = 0, selfEfficacyScore = 0
    var traitScore: Int {
        get{
            return (achievementStrivingScore + cautiousnessScore + dutifulnessScore + orderlinessScore + selfDisciplineScore + selfEfficacyScore / 6) * 100
        }
    }
    
    mutating func updateScore(trait: Subtrait, scoreValue: Int){
        switch trait{
        case .Achievement_Striving: achievementStrivingScore += scoreValue; break;
        case .Cautiousness: cautiousnessScore += scoreValue; break;
        case .Dutifulness: dutifulnessScore += scoreValue; break;
        case .Orderliness: orderlinessScore += scoreValue; break;
        case .Self_Discipline: selfEfficacyScore += scoreValue; break;
        case .Self_Efficacy: selfEfficacyScore += scoreValue; break;
        default: break
        }
    }
}

struct NeuroticismScore{
    var angerScore = 0, anxietyScore = 0, depressionScore = 0, immoderationScore = 0, selfConsciounessScore = 0, vulnerabilityScore = 0
    var traitScore: Int {
        get{
            return (angerScore + anxietyScore + depressionScore + immoderationScore + selfConsciounessScore + vulnerabilityScore / 6) * 100
        }
    }
    
    mutating func updateScore(trait: Subtrait, scoreValue: Int){
        switch trait{
        case .Anger: angerScore += scoreValue; break;
        case .Anxiety: anxietyScore += scoreValue; break;
        case .Depression: depressionScore += scoreValue; break;
        case .Immoderation: immoderationScore += scoreValue; break;
        case .Self_Consciouness: selfConsciounessScore += scoreValue; break;
        case .Vulnerability: vulnerabilityScore += scoreValue; break;
        default: break
        }
    }
}

struct OpenessScore{
    var adventurousnessScore = 0, artisticInterestsScore = 0, emotionalityScore = 0, imaginationScore = 0, intelectScore = 0, liberalismScore = 0
    var traitScore: Int {
        get{
            return (adventurousnessScore + artisticInterestsScore + emotionalityScore + imaginationScore + intelectScore + liberalismScore / 6) * 100
        }
    }
    
    mutating func updateScore(trait: Subtrait, scoreValue: Int){
        switch trait{
        case .Adventurousness: adventurousnessScore += scoreValue; break;
        case .Artistic_Interests: artisticInterestsScore += scoreValue; break;
        case .Emotionality: emotionalityScore += scoreValue; break;
        case .Imagination: imaginationScore += scoreValue; break;
        case .Intellect: intelectScore += scoreValue; break;
        case .Liberalism: liberalismScore += scoreValue; break;
        default: break
        }
    }
}

