import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure ElectrodeReactionPackage where
  reactantSpecies : List String
  productSpecies : List String
  rateConstant : Float
  activationEnergy : Float
  exchangeCurrentDensity : Float

structure ElectrodeReactionEvidence (E : ElectrodeReactionPackage) where
  reactantNonempty : E.reactantSpecies ≠ []
  productNonempty : E.productSpecies ≠ []
  rateConstantPositive : E.rateConstant > 0
  activationEnergyPositive : E.activationEnergy > 0
  exchangeCurrentDensityPositive : E.exchangeCurrentDensity > 0

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
