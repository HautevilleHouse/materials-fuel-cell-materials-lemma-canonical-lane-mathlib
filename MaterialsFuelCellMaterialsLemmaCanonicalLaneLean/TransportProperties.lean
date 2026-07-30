import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure TransportPropertiesPackage where
  ionicConductivity : Float
  electronicConductivity : Float
  diffusivity : Float
  temperatureDependence : (Float → Float)

structure TransportPropertiesEvidence (T : TransportPropertiesPackage) where
  ionicConductivityPositive : T.ionicConductivity > 0
  electronicConductivityPositive : T.electronicConductivity > 0
  diffusivityPositive : T.diffusivity > 0

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
