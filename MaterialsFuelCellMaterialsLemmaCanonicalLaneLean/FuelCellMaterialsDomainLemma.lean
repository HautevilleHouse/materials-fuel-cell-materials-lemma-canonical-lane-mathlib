import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure FuelCellCrystalStructure where
  unitCell : Type u
  latticeParameters : Type v
  symmetryGroup : Type w
  cubicOrTetragonal : Prop
  oxygenVacancyOrdering : Prop
  protonConductionChannel : Prop

structure FuelCellCrystalStructureEvidence (C : FuelCellCrystalStructure) where
  cubicOrTetragonalClosed : C.cubicOrTetragonal
  oxygenVacancyOrderingClosed : C.oxygenVacancyOrdering
  protonConductionChannelClosed : C.protonConductionChannel

def FuelCellCrystalStructureClosed (C : FuelCellCrystalStructure) : Prop :=
  C.cubicOrTetragonal ∧ C.oxygenVacancyOrdering ∧ C.protonConductionChannel

theorem fuel_cell_crystal_structure_closed_from_evidence
    (C : FuelCellCrystalStructure) (E : FuelCellCrystalStructureEvidence C) :
    FuelCellCrystalStructureClosed C := by
  exact And.intro E.cubicOrTetragonalClosed
    (And.intro E.oxygenVacancyOrderingClosed E.protonConductionChannelClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
