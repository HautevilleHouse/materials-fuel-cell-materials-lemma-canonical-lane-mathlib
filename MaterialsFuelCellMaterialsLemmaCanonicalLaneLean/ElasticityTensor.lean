import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : Type u
  complianceMatrix : Type v
  youngModulusCalculated : Prop
  poissonRatioCalculated : Prop
  shearModulusCalculated : Prop
  symmetryConditionsSatisfied : Prop
  youngModulusCalculatedTerm : youngModulusCalculated
  poissonRatioCalculatedTerm : poissonRatioCalculated
  shearModulusCalculatedTerm : shearModulusCalculated
  symmetryConditionsSatisfiedTerm : symmetryConditionsSatisfied

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  youngModulusCalculatedClosed : E.youngModulusCalculated
  poissonRatioCalculatedClosed : E.poissonRatioCalculated
  shearModulusCalculatedClosed : E.shearModulusCalculated
  symmetryConditionsSatisfiedClosed : E.symmetryConditionsSatisfied

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.youngModulusCalculated ∧ E.poissonRatioCalculated ∧
  E.shearModulusCalculated ∧ E.symmetryConditionsSatisfied

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.youngModulusCalculatedClosed
    (And.intro Ev.poissonRatioCalculatedClosed
      (And.intro Ev.shearModulusCalculatedClosed Ev.symmetryConditionsSatisfiedClosed))

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse