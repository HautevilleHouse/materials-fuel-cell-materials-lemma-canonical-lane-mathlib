import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure MaterialsAdmissibleClass where
  crystalPackage : CrystalStructurePackage
  phasePackage : PhaseDiagramPackage
  elasticityPackage : ElasticityModelPackage
  fracturePackage : FractureMechanicsPackage
  fuelCellPackage : FuelCellMaterialsLemmaPackage
  allClosed : Prop

structure MaterialsAdmissibleEvidence (M : MaterialsAdmissibleClass) where
  crystalClosed : CrystalStructureClosed M.crystalPackage
  phaseClosed : PhaseDiagramClosed M.phasePackage
  elasticityClosed : ElasticityModelClosed M.elasticityPackage
  fractureClosed : FractureMechanicsClosed M.fracturePackage
  fuelCellClosed : FuelCellMaterialsLemmaClosed M.fuelCellPackage
  allClosedTerm : M.allClosed

def MaterialsAdmissibleClosed (M : MaterialsAdmissibleClass) : Prop :=
  CrystalStructureClosed M.crystalPackage ∧ PhaseDiagramClosed M.phasePackage ∧ ElasticityModelClosed M.elasticityPackage ∧ FractureMechanicsClosed M.fracturePackage ∧ FuelCellMaterialsLemmaClosed M.fuelCellPackage ∧ M.allClosed

theorem materials_admissible_closed_from_evidence (M : MaterialsAdmissibleClass) (E : MaterialsAdmissibleEvidence M) : MaterialsAdmissibleClosed M :=
  And.intro E.crystalClosed (And.intro E.phaseClosed (And.intro E.elasticityClosed (And.intro E.fractureClosed (And.intro E.fuelCellClosed E.allClosedTerm))))

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
