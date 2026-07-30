import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure PercolationThresholdPackage where
  criticalProbability : ℝ
  percolationProbability : ℝ
  latticeDimension : ℕ
  percolationHolds : Prop

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  P.percolationHolds

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse