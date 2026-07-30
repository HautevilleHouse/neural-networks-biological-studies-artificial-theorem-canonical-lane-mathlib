import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure RandomGraph where
  vertexCount : Nat
  edgeProbability : Float
  expectedDegree : Float
  degreeDistribution : Type u
  connectivityProbability : Float
  giantComponentExists : Bool
  edgeProbabilityNonnegative : edgeProbability ≥ 0.0
  edgeProbabilityAtMostOne : edgeProbability ≤ 1.0
  expectedDegreeNonnegative : expectedDegree ≥ 0.0
  connectivityProbabilityNonnegative : connectivityProbability ≥ 0.0

def RandomGraphClosed (R : RandomGraph) : Prop :=
  R.edgeProbabilityNonnegative ∧ R.edgeProbabilityAtMostOne ∧
  R.expectedDegreeNonnegative ∧ R.connectivityProbabilityNonnegative

theorem random_graph_closed (R : RandomGraph) : RandomGraphClosed R := by
  exact And.intro R.edgeProbabilityNonnegative (And.intro R.edgeProbabilityAtMostOne
    (And.intro R.expectedDegreeNonnegative R.connectivityProbabilityNonnegative))

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse