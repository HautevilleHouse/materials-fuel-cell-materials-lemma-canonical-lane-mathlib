import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure CrystallographyStructurePackage where
  lattice : Type u
  basis : Type v
  symmetryGroup : Type w
  latticeSites : List lattice
  speciesAtSites : List String
  cellVolume : Float
  coordinationNumbers : List Nat

structure CrystallographyStructureEvidence (C : CrystallographyStructurePackage) where
  latticeDefined : C.latticeSites.length = C.speciesAtSites.length
  symmetryGroupClosed : True

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
