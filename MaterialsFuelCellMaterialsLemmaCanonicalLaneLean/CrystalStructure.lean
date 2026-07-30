import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  unitCell : Type u
  latticeVectors : Type v
  atomicPositions : Type w
  symmetricGroup : Type x
  spaceGroupDetermined : Prop
  bravaisLatticeClassified : Prop
  symmetryOperationsClosed : Prop
  bravaisLatticeClassifiedTerm : bravaisLatticeClassified
  symmetryOperationsClosedTerm : symmetryOperationsClosed

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  symmetryOperationsClosedClosed : C.symmetryOperationsClosed

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.spaceGroupDetermined ∧ C.bravaisLatticeClassified ∧ C.symmetryOperationsClosed

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.spaceGroupDeterminedClosed
    (And.intro E.bravaisLatticeClassifiedClosed E.symmetryOperationsClosedClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse