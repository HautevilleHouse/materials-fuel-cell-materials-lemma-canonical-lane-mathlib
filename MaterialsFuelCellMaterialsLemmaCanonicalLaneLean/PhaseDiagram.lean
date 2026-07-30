import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  pressureRange : Type v
  compositionRange : Type w
  phasesIdentified : Prop
  phaseBoundariesDetermined : Prop
  criticalPointsLocated : Prop
  phasesIdentifiedTerm : phasesIdentified
  phaseBoundariesDeterminedTerm : phaseBoundariesDetermined
  criticalPointsLocatedTerm : criticalPointsLocated

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phasesIdentifiedClosed : P.phasesIdentified
  phaseBoundariesDeterminedClosed : P.phaseBoundariesDetermined
  criticalPointsLocatedClosed : P.criticalPointsLocated

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phasesIdentified ∧ P.phaseBoundariesDetermined ∧ P.criticalPointsLocated

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phasesIdentifiedClosed
    (And.intro E.phaseBoundariesDeterminedClosed E.criticalPointsLocatedClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse