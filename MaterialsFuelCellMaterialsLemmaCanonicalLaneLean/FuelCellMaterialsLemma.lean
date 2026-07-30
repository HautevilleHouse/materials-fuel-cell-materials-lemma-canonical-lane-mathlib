import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure FuelCellMaterialsLemmaPackage where
  electrolyteConductivity : Prop
  electrodeCatalyticActivity : Prop
  thermalStability : Prop
  chemicalCompatibility : Prop
  mechanicalIntegrity : Prop

structure FuelCellMaterialsLemmaEvidence (F : FuelCellMaterialsLemmaPackage) where
  electrolyteConductivityClosed : F.electrolyteConductivity
  electrodeCatalyticActivityClosed : F.electrodeCatalyticActivity
  thermalStabilityClosed : F.thermalStability
  chemicalCompatibilityClosed : F.chemicalCompatibility
  mechanicalIntegrityClosed : F.mechanicalIntegrity

def FuelCellMaterialsLemmaClosed (F : FuelCellMaterialsLemmaPackage) : Prop :=
  F.electrolyteConductivity ∧ F.electrodeCatalyticActivity ∧ F.thermalStability ∧ F.chemicalCompatibility ∧ F.mechanicalIntegrity

theorem fuel_cell_materials_lemma_closed_from_evidence (F : FuelCellMaterialsLemmaPackage) (E : FuelCellMaterialsLemmaEvidence F) : FuelCellMaterialsLemmaClosed F :=
  And.intro E.electrolyteConductivityClosed (And.intro E.electrodeCatalyticActivityClosed (And.intro E.thermalStabilityClosed (And.intro E.chemicalCompatibilityClosed E.mechanicalIntegrityClosed)))

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
