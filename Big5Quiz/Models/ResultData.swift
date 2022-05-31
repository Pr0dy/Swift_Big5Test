import Foundation

struct ResultData{
    
let testScores: QuizTestScores?
    let resultData: [TraitData]
    
    init(quizTestScores: QuizTestScores){
        self.testScores = quizTestScores
        self.resultData = [TraitData(isOpened: false,title: Trait.Extraversion.rawValue, value: testScores!.Extraversion.traitScore, description: TraitDescription.Extraversion.rawValue , data:
                                        [SubtraitData(title: Subtrait.Activity.rawValue, value: testScores!.subtraitScore(score:  testScores!.Extraversion.activityScore), description: SubTraitDescription.Actitity.rawValue),
                                         SubtraitData(title: Subtrait.Assertiveness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Extraversion.assertivenessScore), description: SubTraitDescription.Assertive.rawValue),
                                         SubtraitData(title: Subtrait.Cheerfulness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Extraversion.assertivenessScore), description: SubTraitDescription.Cheerfulness.rawValue),
                                         SubtraitData(title: Subtrait.Excitement_Seeking.rawValue, value: testScores!.subtraitScore(score:  testScores!.Extraversion.excitementSeekingScore), description: SubTraitDescription.Excitement_Seeking.rawValue),
                                         SubtraitData(title: Subtrait.Friendliness.rawValue, value:testScores!.subtraitScore(score:  testScores!.Extraversion.friendlinessScore), description: SubTraitDescription.Friendliness.rawValue),
                                         SubtraitData(title: Subtrait.Gregariouness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Extraversion.gregariounessScore), description: SubTraitDescription.Gregariouness.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Agreeableness.rawValue, value: testScores!.Agreeableness.traitScore, description: TraitDescription.Agreeableness.rawValue , data:
                                        [SubtraitData(title: Subtrait.Altruism.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.altruismScore), description: SubTraitDescription.Altruism.rawValue),
                                         SubtraitData(title: Subtrait.Cooperation.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.cooperationScore), description: SubTraitDescription.Cooperation.rawValue),
                                         SubtraitData(title: Subtrait.Modesty.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.modestyScore), description: SubTraitDescription.Modesty.rawValue),
                                         SubtraitData(title: Subtrait.Morality.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.moralityScore), description: SubTraitDescription.Morality.rawValue),
                                         SubtraitData(title: Subtrait.Sympathy.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.sympathyScore), description: SubTraitDescription.Sympathy.rawValue),
                                         SubtraitData(title: Subtrait.Trust.rawValue, value: testScores!.subtraitScore(score:  testScores!.Agreeableness.trustScore), description: SubTraitDescription.Trust.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Conscientiousness.rawValue, value: testScores!.Conscientiousness.traitScore, description: TraitDescription.Conscientiousness .rawValue , data:
                                            [SubtraitData(title: Subtrait.Achievement_Striving.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.achievementStrivingScore), description: SubTraitDescription.Achievement_Striving.rawValue),
                                             SubtraitData(title: Subtrait.Cautiousness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.cautiousnessScore), description: SubTraitDescription.Cautiousness.rawValue),
                                             SubtraitData(title: Subtrait.Dutifulness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.dutifulnessScore), description: SubTraitDescription.Dutifulness.rawValue),
                                             SubtraitData(title: Subtrait.Orderliness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.orderlinessScore), description: SubTraitDescription.Orderliness.rawValue),
                                             SubtraitData(title: Subtrait.Self_Efficacy.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.selfEfficacyScore), description: SubTraitDescription.Self_Efficacy.rawValue),
                                             SubtraitData(title: Subtrait.Self_Discipline.rawValue, value: testScores!.subtraitScore(score:  testScores!.Conscientiousness.selfDisciplineScore), description: SubTraitDescription.Self_Discipline.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Neuroticism.rawValue, value: testScores!.Neuroticism.traitScore, description: TraitDescription.Neuroticism.rawValue , data:
                                        [SubtraitData(title: Subtrait.Anger.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.angerScore), description: SubTraitDescription.Anger  .rawValue),
                                         SubtraitData(title: Subtrait.Anxiety.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.anxietyScore), description: SubTraitDescription.Anxiety    .rawValue),
                                         SubtraitData(title: Subtrait.Depression.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.depressionScore), description: SubTraitDescription.Depression.rawValue),
                                         SubtraitData(title: Subtrait.Immoderation.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.immoderationScore), description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Vulnerability.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.vulnerabilityScore), description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Self_Consciouness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Neuroticism.selfConsciounessScore), description: SubTraitDescription.Self_Consciouness.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Openess.rawValue, value: testScores!.Openess.traitScore, description: TraitDescription.Openess.rawValue , data:
                                        [SubtraitData(title: Subtrait.Imagination.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.imaginationScore), description: SubTraitDescription.Imagination.rawValue),
                                         SubtraitData(title: Subtrait.Adventurousness.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.adventurousnessScore), description: SubTraitDescription.Adventurousness.rawValue),
                                         SubtraitData(title: Subtrait.Liberalism.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.liberalismScore), description: SubTraitDescription.Liberalism.rawValue),
                                         SubtraitData(title: Subtrait.Artistic_Interests.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.artisticInterestsScore), description: SubTraitDescription.Artistic_Interests.rawValue),
                                         SubtraitData(title: Subtrait.Intellect.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.intelectScore), description: SubTraitDescription.Intellect.rawValue),
                                         SubtraitData(title: Subtrait.Emotionality.rawValue, value: testScores!.subtraitScore(score:  testScores!.Openess.intelectScore), description: SubTraitDescription.Emotionality.rawValue)])]
    }
}
