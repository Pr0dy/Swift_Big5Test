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
}

struct AgreeablenessScore{
    var altruismScore = 0, cooperationScore = 0, modestyScore = 0, moralityScore = 0, assertivenessScore = 0 ,trustScore = 0
}

struct ConscientiousnessScore{
    var achievementStrivingScore = 0, CcutiousnessScore = 0, dutifulnessScore = 0, orderlinessScore = 0, selfDisciplineScore = 0, selfEfficacyScore = 0
}

struct NeuroticismScore{
    var angerScore = 0, anxietyScore = 0, depressionScore = 0, immoderationScore = 0, selfConsciounessScore = 0, vulnerabilityScore = 0
}

struct OpenessScore{
    var adventurousnessScore = 0, artisticInterestsScore = 0, emotionalityScore = 0, imaginationScore = 0, intelectScore = 0, liberalismScore = 0
}

