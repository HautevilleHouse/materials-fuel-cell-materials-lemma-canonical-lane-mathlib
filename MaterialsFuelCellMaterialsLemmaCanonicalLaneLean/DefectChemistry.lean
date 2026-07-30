import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsFuelCellMaterialsLemmaCanonicalLaneLean

structure DefectChemistryPackage (C : CrystalStructurePackage) where
  defectTypes : Type u
  formationEnergies : Type v
  equilibriumConcentrations : Prop
  chargeStates : Prop
  transportCoefficients : Prop

structure DefectChemistryEvidence {C : CrystalStructurePackage}
    (D : DefectChemistryPackage C) where
  equilibriumConcentrationsClosed : D.equilibriumConcentrations
  chargeStatesClosed : D.chargeStates
  transportCoefficientsClosed : D.transportCoefficients

def DefectChemistryClosed {C : CrystalStructurePackage}
    (D : DefectChemistryPackage C) : Prop :=
  D.equilibriumConcentrations ∧ D.chargeStates ∧ D.transportCoefficients

theorem defect_chemistry_closed_from_evidence
    {C : CrystalStructurePackage} (D : DefectChemistryPackage C)
    (E : DefectChemistryEvidence D) : DefectChemistryClosed D := by
  exact And.intro E.equilibriumConcentrationsClosed
    (And.intro E.chargeStatesClosed E.transportCoefficientsClosed)

end MaterialsFuelCellMaterialsLemmaCanonicalLaneLean
end HautevilleHouse