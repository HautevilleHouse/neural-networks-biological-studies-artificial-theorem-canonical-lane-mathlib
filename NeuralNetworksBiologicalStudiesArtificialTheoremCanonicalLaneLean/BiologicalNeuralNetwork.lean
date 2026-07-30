import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure BiologicalNeuralNetworkPackage where
  neuronCount : ℕ
  synapseCount : ℕ
  firingRate : ℝ
  plasticityRule : Prop
  learningConverges : Prop

def BiologicalNeuralNetworkClosed (B : BiologicalNeuralNetworkPackage) : Prop :=
  B.learningConverges

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse