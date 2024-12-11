// Created by Thomas Dohmke on 5/26/20.

import UIKit
import HealthKit

class Constants {
    static let loggingEnabled = true

    static var allSampleTypes: Set<HKSampleType>? {
        get {
            return buildAllSampleTypes()
        }

    }
}

// types generated using script
// swiftlint:disable:next function_body_length cyclomatic_complexity
fileprivate func buildAllSampleTypes() -> Set<HKSampleType> {
    var base: Set<HKSampleType> = [
        HKQuantityType.workoutType()
    ]

    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBodyFatPercentage"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBodyMass"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBodyMassIndex"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierElectrodermalActivity"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierHeight"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierLeanBodyMass"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWaistCircumference"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierActiveEnergyBurned"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBasalEnergyBurned"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierCrossCountrySkiingSpeed"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierCyclingCadence"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierCyclingFunctionalThresholdPower"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierCyclingPower"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierCyclingSpeed"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceCrossCountrySkiing"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceCycling"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceDownhillSnowSports"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistancePaddleSports"))!)
    }
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceRowing"))!)
    }
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceSkatingSports"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceSwimming"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceWalkingRunning"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDistanceWheelchair"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierFlightsClimbed"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierPaddleSportsSpeed"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierPhysicalEffort"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierPushCount"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRowingSpeed"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRunningPower"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRunningSpeed"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierStepCount"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierSwimmingStrokeCount"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierUnderwaterDepth"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWorkoutEffortScore"))!)
    }
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierEnvironmentalAudioExposure"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierEnvironmentalSoundReduction"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierHeadphoneAudioExposure"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierHeartRate"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierHeartRateRecoveryOneMinute"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierHeartRateVariabilitySDNN"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierPeripheralPerfusionIndex"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRestingHeartRate"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierVO2Max"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRunningGroundContactTime"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRunningStrideLength"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRunningVerticalOscillation"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierSixMinuteWalkTestDistance"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierStairAscentSpeed"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierStairDescentSpeed"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWalkingDoubleSupportPercentage"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWalkingSpeed"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWalkingStepLength"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryBiotin"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryCaffeine"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryCalcium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryCarbohydrates"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryChloride"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryCholesterol"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryChromium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryCopper"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryEnergyConsumed"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFatMonounsaturated"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFatPolyunsaturated"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFatSaturated"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFatTotal"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFiber"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryFolate"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryIodine"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryIron"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryMagnesium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryManganese"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryMolybdenum"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryNiacin"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryPantothenicAcid"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryPhosphorus"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryPotassium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryProtein"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryRiboflavin"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietarySelenium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietarySodium"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietarySugar"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryThiamin"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminA"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminB12"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminB6"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminC"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminD"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminE"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryVitaminK"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryWater"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierDietaryZinc"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBloodAlcoholContent"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBloodPressureDiastolic"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBloodPressureSystolic"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierInsulinDelivery"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierNumberOfAlcoholicBeverages"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierNumberOfTimesFallen"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierTimeInDaylight"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierUVExposure"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierWaterTemperature"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBasalBodyTemperature"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierForcedExpiratoryVolume1"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierForcedVitalCapacity"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierInhalerUsage"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierOxygenSaturation"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierPeakExpiratoryFlowRate"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierRespiratoryRate"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBloodGlucose"))!)
    base.insert(HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier(rawValue: "HKQuantityTypeIdentifierBodyTemperature"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierMindfulSession"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierHandwashingEvent"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierToothbrushingEvent"))!)
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierBleedingAfterPregnancy"))!)
    }
    if #available(iOS 18.0, *) {
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierBleedingDuringPregnancy"))!)
    }
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierCervicalMucusQuality"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierContraceptive"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierIntermenstrualBleeding"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierLactation"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierMenstrualFlow"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierOvulationTestResult"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierPregnancy"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierPregnancyTestResult"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierProgesteroneTestResult"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSexualActivity"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSleepAnalysis"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierAbdominalCramps"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierAcne"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierAppetiteChanges"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierBladderIncontinence"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierBloating"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierBreastPain"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierChestTightnessOrPain"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierChills"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierConstipation"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierCoughing"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierDiarrhea"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierDizziness"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierDrySkin"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierFainting"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierFatigue"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierFever"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierGeneralizedBodyAche"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierHairLoss"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierHeadache"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierHeartburn"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierHotFlashes"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierLossOfSmell"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierLossOfTaste"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierLowerBackPain"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierMemoryLapse"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierMoodChanges"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierNausea"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierNightSweats"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierPelvicPain"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierRapidPoundingOrFlutteringHeartbeat"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierRunnyNose"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierShortnessOfBreath"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSinusCongestion"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSkippedHeartbeat"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSleepChanges"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierSoreThroat"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierVaginalDryness"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierVomiting"))!)
    base.insert(HKQuantityType.categoryType(forIdentifier: HKCategoryTypeIdentifier(rawValue: "HKCategoryTypeIdentifierWheezing"))!)

    return base
}
