import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure SmallWorldNetworkPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  isSmallWorld : Prop
  networkSize : ℕ

def SmallWorldNetworkClosed (S : SmallWorldNetworkPackage) : Prop :=
  S.isSmallWorld

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse