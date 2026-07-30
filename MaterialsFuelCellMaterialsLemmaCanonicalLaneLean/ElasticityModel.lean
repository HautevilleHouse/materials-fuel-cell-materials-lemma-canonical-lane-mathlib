import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure ElasticityModelPackage where
  elasticConstants : Type u
  stressStrainRelation : Prop
  anisotropyFactors : Prop
  mechanicalStability : Prop
  latticeDeformation : Prop

structure ElasticityModelEvidence (E : ElasticityModelPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  anisotropyFactorsClosed : E.anisotropyFactors
  mechanicalStabilityClosed : E.mechanicalStability
  latticeDeformationClosed : E.latticeDeformation

def ElasticityModelClosed (E : ElasticityModelPackage) : Prop :=
  E.stressStrainRelation ∧ E.anisotropyFactors ∧ E.mechanicalStability ∧ E.latticeDeformation

theorem elasticity_model_closed_from_evidence (E : ElasticityModelPackage) (Ev : ElasticityModelEvidence E) : ElasticityModelClosed E :=
  And.intro Ev.stressStrainRelationClosed (And.intro Ev.anisotropyFactorsClosed (And.intro Ev.mechanicalStabilityClosed Ev.latticeDeformationClosed))

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
