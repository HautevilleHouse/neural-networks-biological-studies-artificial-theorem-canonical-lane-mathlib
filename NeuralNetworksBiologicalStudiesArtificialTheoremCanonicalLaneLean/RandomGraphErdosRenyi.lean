import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure RandomGraphErdosRenyiPackage where
  vertexCount : ℕ
  edgeProbability : ℝ
  connectedness : Prop
  giantComponent : Prop
  degreeDistribution : Prop

structure RandomGraphErdosRenyiEvidence (R : RandomGraphErdosRenyiPackage) where
  connectednessClosed : R.connectedness
  giantComponentClosed : R.giantComponent
  degreeDistributionClosed : R.degreeDistribution

def RandomGraphErdosRenyiClosed (R : RandomGraphErdosRenyiPackage) : Prop :=
  R.connectedness ∧ R.giantComponent ∧ R.degreeDistribution

theorem random_graph_erdos_renyi_closed_from_evidence (R : RandomGraphErdosRenyiPackage) (E : RandomGraphErdosRenyiEvidence R) :
    RandomGraphErdosRenyiClosed R := by
  exact And.intro E.connectednessClosed (And.intro E.giantComponentClosed E.degreeDistributionClosed)

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse