import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  crackPropagationCriterion : Prop
  fatigueLifePrediction : Prop
  fractureToughnessDetermined : Prop
  crackPropagationCriterionTerm : crackPropagationCriterion
  fatigueLifePredictionTerm : fatigueLifePrediction
  fractureToughnessDeterminedTerm : fractureToughnessDetermined

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fatigueLifePredictionClosed : F.fatigueLifePrediction
  fractureToughnessDeterminedClosed : F.fractureToughnessDetermined

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.fatigueLifePrediction ∧ F.fractureToughnessDetermined

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriterionClosed
    (And.intro E.fatigueLifePredictionClosed E.fractureToughnessDeterminedClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse