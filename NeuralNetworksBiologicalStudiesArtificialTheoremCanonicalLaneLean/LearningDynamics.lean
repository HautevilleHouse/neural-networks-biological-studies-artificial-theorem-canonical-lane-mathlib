import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure LearningDynamicsPackage where
  lossFunction : Type u → ℝ
  gradientDescentStep : ℝ → ℝ → ℝ
  learningRateSchedule : ℕ → ℝ
  convergenceCondition : Prop
  generalizationBound : Prop

structure LearningDynamicsEvidence (L : LearningDynamicsPackage) where
  lossFunctionDifferentiable : L.lossFunction ℝ > 0
  gradientDescentStepClosed : ∀ (x r : ℝ), L.gradientDescentStep x r = x - r * (deriv L.lossFunction x)
  learningRateScheduleSumDivergent : ∑_{i=0}^{∞} L.learningRateSchedule i = ∞
  convergenceConditionClosed : L.convergenceCondition
  generalizationBoundClosed : L.generalizationBound

def LearningDynamicsClosed (L : LearningDynamicsPackage) : Prop :=
  (L.lossFunction ℝ > 0) ∧
  (∀ (x r : ℝ), L.gradientDescentStep x r = x - r * (deriv L.lossFunction x)) ∧
  (∑_{i=0}^{∞} L.learningRateSchedule i = ∞) ∧
  L.convergenceCondition ∧ L.generalizationBound

theorem learning_dynamics_closed_from_evidence
    (L : LearningDynamicsPackage) (E : LearningDynamicsEvidence L) :
    LearningDynamicsClosed L :=
  And.intro E.lossFunctionDifferentiable
    (And.intro E.gradientDescentStepClosed
      (And.intro E.learningRateScheduleSumDivergent
        (And.intro E.convergenceConditionClosed E.generalizationBoundClosed)))

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse
