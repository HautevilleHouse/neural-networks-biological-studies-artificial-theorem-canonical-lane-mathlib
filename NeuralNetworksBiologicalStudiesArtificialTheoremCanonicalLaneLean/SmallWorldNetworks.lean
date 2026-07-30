import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure SmallWorldNetworkPackage where
  wiringProbability : ℝ
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  smallWorldProperty : Prop

structure SmallWorldNetworkEvidence (S : SmallWorldNetworkPackage) where
  clusteringCoefficientClosed : S.clusteringCoefficient > 0
  averagePathLengthClosed : S.averagePathLength < ∞
  smallWorldPropertyClosed : S.smallWorldProperty

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.clusteringCoefficient > 0 ∧ S.averagePathLength < ∞ ∧ S.smallWorldProperty

theorem small_world_network_closed_from_evidence (S : SmallWorldNetworkPackage) (E : SmallWorldNetworkEvidence S) :
    SmallWorldNetworkClosed S := by
  exact And.intro E.clusteringCoefficientClosed (And.intro E.averagePathLengthClosed E.smallWorldPropertyClosed)

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse