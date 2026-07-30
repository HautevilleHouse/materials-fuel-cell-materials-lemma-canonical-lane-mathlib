import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure StackPerformancePackage where
  cellCount : Nat
  voltagePerCell : Float
  currentDensity : Float
  powerDensity : Float
  efficiency : Float

structure StackPerformanceEvidence (S : StackPerformancePackage) where
  positiveCellCount : S.cellCount > 0
  voltagePositive : S.voltagePerCell > 0
  currentPositive : S.currentDensity > 0
  powerPositive : S.powerDensity > 0
  efficiencyBetweenZeroAndOne : S.efficiency > 0 ∧ S.efficiency ≤ 1

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
