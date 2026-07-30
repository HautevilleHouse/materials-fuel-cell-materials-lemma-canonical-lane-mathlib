import MaterialsFuelCellMaterialsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : FuelCellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FuelCellWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
