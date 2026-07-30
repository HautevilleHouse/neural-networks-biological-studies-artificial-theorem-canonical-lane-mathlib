import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure GraphSpectraPackage where
  adjacencyMatrix : Type u
  eigenvalues : List ℝ
  spectralGap : ℝ
  graphType : String

def GraphSpectraClosed (G : GraphSpectraPackage) : Prop :=
  G.spectralGap > 0

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse