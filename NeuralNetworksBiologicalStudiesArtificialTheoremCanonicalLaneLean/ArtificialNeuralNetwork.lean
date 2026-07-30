import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure ArtificialNeuralNetworkPackage where
  layerCount : ℕ
  activationFunction : Type u
  trainingError : ℝ
  generalizationError : ℝ
  universalApproximation : Prop

def ArtificialNeuralNetworkClosed (A : ArtificialNeuralNetworkPackage) : Prop :=
  A.universalApproximation

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse