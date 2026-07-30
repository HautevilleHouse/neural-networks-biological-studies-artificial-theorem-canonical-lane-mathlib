import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure LearningRulePackage where
  learningRate : Float
  gradient : Array Float
  parameterUpdate : Array Float
  updateRule : Float → Array Float → Array Float
  updateRuleClosed : updateRule = λ _ _ => #[]

structure LearningRuleEvidence (L : LearningRulePackage) where
  updateRuleDefined : L.updateRule = λ _ _ => #[]

def LearningRuleClosed (L : LearningRulePackage) : Prop :=
  L.updateRule = λ _ _ => #[]

theorem learning_rule_closed_from_evidence
    (L : LearningRulePackage) (E : LearningRuleEvidence L) :
    LearningRuleClosed L := by
  exact E.updateRuleDefined

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse