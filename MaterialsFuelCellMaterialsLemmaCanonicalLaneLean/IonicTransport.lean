import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse
open HautevilleHouse.MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure IonicTransportPackage where
  ionicConductivity : ℝ → ℝ
  diffusivity : ℝ → ℝ
  hoppingBarrier : ℝ
  percolationThreshold : ℝ
  nernstEinsteinRelation : Prop
  conductivityAnisotropy : Prop

structure IonicTransportEvidence (I : IonicTransportPackage) where
  ionicConductivityClosed : ∀ T : ℝ, T > 0 → I.ionicConductivity T > 0
  hoppingBarrierClosed : I.hoppingBarrier > 0
  nernstEinsteinRelationClosed : I.nernstEinsteinRelation
  conductivityAnisotropyClosed : I.conductivityAnisotropy

def IonicTransportClosed (I : IonicTransportPackage) : Prop :=
  (∀ T : ℝ, T > 0 → I.ionicConductivity T > 0) ∧ (I.hoppingBarrier > 0) ∧ I.nernstEinsteinRelation ∧ I.conductivityAnisotropy

theorem ionic_transport_closed_from_evidence (I : IonicTransportPackage) (E : IonicTransportEvidence I) :
    IonicTransportClosed I := by
  exact And.intro E.ionicConductivityClosed (And.intro E.hoppingBarrierClosed (And.intro E.nernstEinsteinRelationClosed E.conductivityAnisotropyClosed))

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse