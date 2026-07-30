import FuelCellMaterialsDomainLemma

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure IonicConductivityPhaseDiagramPackage where
  temperatureRange : Type u
  oxygenPartialPressureRange : Type v
  phaseBoundariesMapped : Prop
  ionicConductivityIsolines : Prop
  electrolyteStabilityWindow : Prop

structure IonicConductivityPhaseDiagramEvidence
    (D : IonicConductivityPhaseDiagramPackage) where
  phaseBoundariesMappedClosed : D.phaseBoundariesMapped
  ionicConductivityIsolinesClosed : D.ionicConductivityIsolines
  electrolyteStabilityWindowClosed : D.electrolyteStabilityWindow

def IonicConductivityPhaseDiagramClosed (D : IonicConductivityPhaseDiagramPackage) : Prop :=
  D.phaseBoundariesMapped ∧ D.ionicConductivityIsolines ∧ D.electrolyteStabilityWindow

theorem ionic_conductivity_phase_diagram_closed_from_evidence
    (D : IonicConductivityPhaseDiagramPackage)
    (E : IonicConductivityPhaseDiagramEvidence D) :
    IonicConductivityPhaseDiagramClosed D := by
  exact And.intro E.phaseBoundariesMappedClosed
    (And.intro E.ionicConductivityIsolinesClosed E.electrolyteStabilityWindowClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
