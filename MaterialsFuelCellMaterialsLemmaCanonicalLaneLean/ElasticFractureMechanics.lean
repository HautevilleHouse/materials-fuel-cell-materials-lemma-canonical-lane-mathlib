import IonicConductivityPhaseDiagram

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure ElasticFractureMechanicsPackage (D : IonicConductivityPhaseDiagramPackage) where
  elasticModulus : Type u
  fractureToughness : Type v
  stressStrainRelationConstitutive : Prop
  crackPropagationThreshold : Prop
  thermalExpansionMismatchStress : Prop

structure ElasticFractureMechanicsEvidence {D : IonicConductivityPhaseDiagramPackage}
    (F : ElasticFractureMechanicsPackage D) where
  stressStrainRelationConstitutiveClosed : F.stressStrainRelationConstitutive
  crackPropagationThresholdClosed : F.crackPropagationThreshold
  thermalExpansionMismatchStressClosed : F.thermalExpansionMismatchStress

def ElasticFractureMechanicsClosed {D : IonicConductivityPhaseDiagramPackage}
    (F : ElasticFractureMechanicsPackage D) : Prop :=
  F.stressStrainRelationConstitutive ∧ F.crackPropagationThreshold ∧
  F.thermalExpansionMismatchStress

theorem elastic_fracture_mechanics_closed_from_evidence
    {D : IonicConductivityPhaseDiagramPackage}
    (F : ElasticFractureMechanicsPackage D)
    (E : ElasticFractureMechanicsEvidence F) :
    ElasticFractureMechanicsClosed F := by
  exact And.intro E.stressStrainRelationConstitutiveClosed
    (And.intro E.crackPropagationThresholdClosed
      E.thermalExpansionMismatchStressClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
