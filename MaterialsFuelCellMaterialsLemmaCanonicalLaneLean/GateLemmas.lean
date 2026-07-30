import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := w } => w

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := w } => w

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse