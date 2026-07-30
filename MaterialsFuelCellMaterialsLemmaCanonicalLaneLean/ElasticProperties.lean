import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure ElasticPropertiesPackage (C : CrystalStructurePackage) where
  elasticConstants : Type u
  youngModulus : Type v
  poissonRatio : Type w
  shearModulus : Prop
  bulkModulus : Prop
  anisotropyRatio : Prop

structure ElasticPropertiesEvidence {C : CrystalStructurePackage}
    (E : ElasticPropertiesPackage C) where
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropyRatioClosed : E.anisotropyRatio

def ElasticPropertiesClosed {C : CrystalStructurePackage}
    (E : ElasticPropertiesPackage C) : Prop :=
  E.shearModulus ∧ E.bulkModulus ∧ E.anisotropyRatio

theorem elastic_properties_closed_from_evidence
    {C : CrystalStructurePackage} (E : ElasticPropertiesPackage C)
    (Ev : ElasticPropertiesEvidence E) : ElasticPropertiesClosed E := by
  exact And.intro Ev.shearModulusClosed
    (And.intro Ev.bulkModulusClosed Ev.anisotropyRatioClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse