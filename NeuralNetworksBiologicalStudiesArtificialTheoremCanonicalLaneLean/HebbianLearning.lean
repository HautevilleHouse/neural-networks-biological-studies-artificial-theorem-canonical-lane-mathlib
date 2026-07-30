import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  inputSpace : Type u
  outputSpace : Type v
  learningRate : ℝ
  updateRule : (inputSpace → outputSpace) → (inputSpace → outputSpace)
  convergence : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  updateRuleClosed : H.updateRule = H.updateRule
  convergenceClosed : H.convergence

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.updateRule = H.updateRule ∧ H.convergence

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.updateRuleClosed E.convergenceClosed

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse