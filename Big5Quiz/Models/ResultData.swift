import Foundation

struct ResultData{
    
let testScores: QuizTestScores?
    let resultData: [TraitData]
    
    init(quizTestScores: QuizTestScores){
        self.testScores = quizTestScores
        self.resultData = [TraitData(isOpened: false,title: Trait.Extraversion.rawValue, value: testScores!.Extraversion.traitScore, description: TraitDescription.Extraversion.rawValue , data:
                                        [SubtraitData(title: Subtrait.Activity.rawValue, value: testScores!.Extraversion.activityScore, description: SubTraitDescription.Actitity.rawValue),
                                         SubtraitData(title: Subtrait.Assertiveness.rawValue, value: testScores!.Extraversion.assertivenessScore, description: SubTraitDescription.Assertive.rawValue),
                                         SubtraitData(title: Subtrait.Cheerfulness.rawValue, value: testScores!.Extraversion.cheerfulnessScore, description: SubTraitDescription.Cheerfulness.rawValue),
                                         SubtraitData(title: Subtrait.Excitement_Seeking.rawValue, value: testScores!.Extraversion.excitementSeekingScore, description: SubTraitDescription.Excitement_Seeking.rawValue),
                                         SubtraitData(title: Subtrait.Friendliness.rawValue, value:testScores!.Extraversion.friendlinessScore, description: SubTraitDescription.Friendliness.rawValue),
                                         SubtraitData(title: Subtrait.Gregariouness.rawValue, value: testScores!.Extraversion.gregariounessScore, description: SubTraitDescription.Gregariouness.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Agreeableness.rawValue, value: testScores!.Agreeableness.traitScore, description: TraitDescription.Agreeableness.rawValue , data:
                                        [SubtraitData(title: Subtrait.Altruism.rawValue, value: testScores!.Agreeableness.altruismScore, description: SubTraitDescription.Altruism.rawValue),
                                         SubtraitData(title: Subtrait.Cooperation.rawValue, value: testScores!.Agreeableness.cooperationScore, description: SubTraitDescription.Cooperation.rawValue),
                                         SubtraitData(title: Subtrait.Modesty.rawValue, value: testScores!.Agreeableness.modestyScore, description: SubTraitDescription.Modesty.rawValue),
                                         SubtraitData(title: Subtrait.Morality.rawValue, value: testScores!.Agreeableness.moralityScore, description: SubTraitDescription.Morality.rawValue),
                                         SubtraitData(title: Subtrait.Sympathy.rawValue, value: testScores!.Agreeableness.sympathyScore, description: SubTraitDescription.Sympathy.rawValue),
                                         SubtraitData(title: Subtrait.Trust.rawValue, value: testScores!.Agreeableness.trustScore, description: SubTraitDescription.Trust.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Conscientiousness.rawValue, value: testScores!.Conscientiousness.traitScore, description: TraitDescription.Conscientiousness .rawValue , data:
                                            [SubtraitData(title: Subtrait.Achievement_Striving.rawValue, value: testScores!.Conscientiousness.achievementStrivingScore, description: SubTraitDescription.Achievement_Striving.rawValue),
                                             SubtraitData(title: Subtrait.Cautiousness.rawValue, value: testScores!.Conscientiousness.cautiousnessScore, description: SubTraitDescription.Cautiousness.rawValue),
                                             SubtraitData(title: Subtrait.Dutifulness.rawValue, value: testScores!.Conscientiousness.dutifulnessScore, description: SubTraitDescription.Dutifulness.rawValue),
                                             SubtraitData(title: Subtrait.Orderliness.rawValue, value: testScores!.Conscientiousness.orderlinessScore, description: SubTraitDescription.Orderliness.rawValue),
                                             SubtraitData(title: Subtrait.Self_Efficacy.rawValue, value: testScores!.Conscientiousness.selfEfficacyScore, description: SubTraitDescription.Self_Efficacy.rawValue),
                                             SubtraitData(title: Subtrait.Self_Discipline.rawValue, value: testScores!.Conscientiousness.selfDisciplineScore, description: SubTraitDescription.Self_Discipline.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Neuroticism.rawValue, value: testScores!.Neuroticism.traitScore, description: TraitDescription.Neuroticism.rawValue , data:
                                        [SubtraitData(title: Subtrait.Anger.rawValue, value: testScores!.Neuroticism.angerScore, description: SubTraitDescription.Anger  .rawValue),
                                         SubtraitData(title: Subtrait.Anxiety.rawValue, value: testScores!.Neuroticism.anxietyScore, description: SubTraitDescription.Anxiety    .rawValue),
                                         SubtraitData(title: Subtrait.Depression.rawValue, value: testScores!.Neuroticism.depressionScore, description: SubTraitDescription.Depression.rawValue),
                                         SubtraitData(title: Subtrait.Immoderation.rawValue, value: testScores!.Neuroticism.immoderationScore, description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Vulnerability.rawValue, value: testScores!.Neuroticism.vulnerabilityScore, description: SubTraitDescription.Immoderation.rawValue),
                                         SubtraitData(title: Subtrait.Self_Consciouness.rawValue, value: testScores!.Neuroticism.selfConsciounessScore, description: SubTraitDescription.Self_Consciouness.rawValue)]),
                             TraitData(isOpened: false, title: Trait.Openess.rawValue, value: testScores!.Openess.traitScore, description: TraitDescription.Openess.rawValue , data:
                                        [SubtraitData(title: Subtrait.Imagination.rawValue, value: testScores!.Openess.imaginationScore, description: SubTraitDescription.Imagination.rawValue),
                                         SubtraitData(title: Subtrait.Adventurousness.rawValue, value: testScores!.Openess.adventurousnessScore, description: SubTraitDescription.Adventurousness.rawValue),
                                         SubtraitData(title: Subtrait.Liberalism.rawValue, value: testScores!.Openess.liberalismScore, description: SubTraitDescription.Liberalism.rawValue),
                                         SubtraitData(title: Subtrait.Artistic_Interests.rawValue, value: testScores!.Openess.artisticInterestsScore, description: SubTraitDescription.Artistic_Interests.rawValue),
                                         SubtraitData(title: Subtrait.Intellect.rawValue, value: testScores!.Openess.intelectScore, description: SubTraitDescription.Intellect.rawValue),
                                         SubtraitData(title: Subtrait.Emotionality.rawValue, value: testScores!.Openess.emotionalityScore, description: SubTraitDescription.Emotionality.rawValue)])]
    }
}
