import Foundation

struct AppConstants{
    // MARK: Segue Identifiers
    let mainScreenToQuickQuestionSegue = "mainScreenToQuickQuestionSegue"
    let resultPageToMenuSegue = "backToMenu"
    let questionsToResultSegue = "questionsToResult"
    let menuToResultPageSegue = "menuToResults"
    let menuToBIG5traitsScreenSegue = "menuToBIG5traitsScreen"
    let menuToCustomTestSegue = "menuToCustomTest"
    let customTestToQuizSegue = "customTestToQuiz"
    
    // MARK: Labels
    let quickTest = "Quick Test"
    let customTest = "Custom Test"
    let resultCellIdentifier = "traitCell"
    let totalQuestionsSeleceted = "Total questions selected: "
    let agree = "Agree"
    let mostlyAgree = "Mostly Agree"
    let depends = "Depends"
    let mostlyDisagree = "Mostly Disagree"
    let disagree = "Disagree"
    let arrowImageName = "arrow.down.app.fill"
    let big5Label = "The BIG 5 Traits"
    
    // MARK: UI Alert Labels
    let noResultSaved = "No results saved :("
    let noResultMessage = "Make a test then save the results!"
    let alertActionTitle = "Back"
    let notTestedMessage = "Not tested :("
    let savingResults = "Saving results..."
    let removingResults = "Removing results..."
    let saveResults = "Save reults"
    let removeResults = "Remove results"
    let sucessfulMessage = "Sucessful!"
        
    // MARK: Default constants
    let cellHeight = 170
    let numberOfQuickTestQuestions = 3
    let numberOfTraits = 5
    let numberOfSubtraitsPerTrait = 6
    let indexDefaultNumber = -1
    let defaultNumberOfComponents = 1
    let agreeScores = [100,0]
    let mostlyAgreeScores = [75,25]
    let dependsScores = [50,50]
    let mostlyDisagreeScores = [25,75]
    let disagreeScores = [0,100]
}
