import Foundation

struct ResultData{
    
let testScores: QuizTestScores?
    let resultData: [TraitData]
    
    init(quizTestScores: QuizTestScores){
        self.testScores = quizTestScores
        self.resultData = [TraitData(isOpened: false,title: Trait.Extraversion.rawValue, value: testScores!.extraversionScore, description: TraitDescription.Extraversion.rawValue , data:
                                        [SubtraitData(title: Subtrait.Activity.rawValue, value: testScores!.activityScore, description: SubTraitDescription.Actitity.rawValue),
                                         SubtraitData(title: Subtrait.Assertiveness.rawValue, value: testScores!.assertivenessScore, description: SubTraitDescription.Assertive.rawValue),
                                         SubtraitData(title: Subtrait.Cheerfulness.rawValue, value: testScores!.cheerfulnessScore, description: SubTraitDescription.Cheerfulness.rawValue),
                                         SubtraitData(title: Subtrait.Excitement_Seeking.rawValue, value: testScores!.excitementSeekingScore, description: SubTraitDescription.Excitement_Seeking.rawValue),
                                         SubtraitData(title: Subtrait.Friendliness.rawValue, value: testScores!.friendlinessScore, description: SubTraitDescription.Friendliness.rawValue),
                                         SubtraitData(title: Subtrait.Gregariouness.rawValue, value: testScores!.gregariounessScore, description: SubTraitDescription.Gregariouness.rawValue)]),
                           TraitData(isOpened: false, title: Trait.Agreeableness.rawValue, value: testScores!.agreeablenessScore, description: TraitDescription.Agreeableness.rawValue , data:
                                        [SubtraitData(title: Subtrait.Altruism.rawValue, value: testScores!.altruismScore ,description: SubTraitDescription.Altruism.rawValue),
                                         SubtraitData(title: Subtrait.Cooperation.rawValue, value: testScores!.cooperationScore, description: SubTraitDescription.Cooperation.rawValue),
                                         SubtraitData(title: Subtrait.Modesty.rawValue, value: testScores!.modestyScore, description: SubTraitDescription.Modesty.rawValue),
                                         SubtraitData(title: Subtrait.Morality.rawValue, value: testScores!.moralityScore, description: SubTraitDescription.Morality.rawValue),
                                         SubtraitData(title: Subtrait.Sympathy.rawValue, value: testScores!.sympathyScore, description: SubTraitDescription.Sympathy.rawValue),
                                         SubtraitData(title: Subtrait.Trust.rawValue, value: testScores!.trustScore, description: SubTraitDescription.Trust.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Conscientiousness.rawValue, value: testScores!.conscientiounessScore, description: TraitDescription.Conscientiousness .rawValue , data:
                                            [SubtraitData(title: Subtrait.Achievement_Striving.rawValue, value: testScores!.achievementStrivingScore, description: SubTraitDescription.Achievement_Striving.rawValue),
                                             SubtraitData(title: Subtrait.Cautiousness.rawValue, value: testScores!.cautiousnessScore, description: SubTraitDescription.Cautiousness.rawValue),
                                             SubtraitData(title: Subtrait.Dutifulness.rawValue, value: testScores!.activityScore, description: SubTraitDescription.Dutifulness.rawValue),
                                             SubtraitData(title: Subtrait.Orderliness.rawValue, value: testScores!.orderlinessScore, description: SubTraitDescription.Orderliness.rawValue),
                                             SubtraitData(title: Subtrait.Self_Efficacy.rawValue, value: testScores!.selfEfficacyScore, description: SubTraitDescription.Self_Efficacy.rawValue),
                                             SubtraitData(title: Subtrait.Self_Discipline.rawValue, value:testScores!.selfDisciplineScore, description: SubTraitDescription.Self_Discipline.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Neuroticism.rawValue, value: testScores!.neuroticismScore, description: TraitDescription.Neuroticism.rawValue , data:
                                        [SubtraitData(title: Subtrait.Anger.rawValue, value: testScores!.angerScore, description: SubTraitDescription.Anger  .rawValue),
                                         SubtraitData(title: Subtrait.Anxiety.rawValue, value:testScores!.anxietyScore, description: SubTraitDescription.Anxiety    .rawValue),
                                         SubtraitData(title: Subtrait.Depression.rawValue, value: testScores!.depressionScore, description: SubTraitDescription.Depression.rawValue),
                                         SubtraitData(title: Subtrait.Immoderation.rawValue, value: testScores!.immoderationScore, description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Vulnerability.rawValue, value: testScores!.vulnerabilityScore, description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Self_Consciouness.rawValue, value: testScores!.selfConsciounessScore, description: SubTraitDescription.Self_Consciouness.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Openess.rawValue, value: testScores!.openessScore, description: TraitDescription.Openess.rawValue , data:
                                        [SubtraitData(title: Subtrait.Imagination.rawValue, value: testScores!.imaginationScore, description: SubTraitDescription.Imagination.rawValue),
                                         SubtraitData(title: Subtrait.Adventurousness.rawValue, value: testScores!.adventurousnessScore, description: SubTraitDescription.Adventurousness.rawValue),
                                         SubtraitData(title: Subtrait.Liberalism.rawValue, value: testScores!.liberalismScore, description: SubTraitDescription.Liberalism.rawValue),
                                         SubtraitData(title: Subtrait.Artistic_Interests.rawValue, value: testScores!.artisticInterestsScore, description: SubTraitDescription.Artistic_Interests.rawValue),
                                         SubtraitData(title: Subtrait.Intellect.rawValue, value: testScores!.intelectScore, description: SubTraitDescription.Intellect.rawValue),
                                         SubtraitData(title: Subtrait.Emotionality.rawValue, value: testScores!.emotionalityScore , description: SubTraitDescription.Emotionality.rawValue)])]
    }
}
