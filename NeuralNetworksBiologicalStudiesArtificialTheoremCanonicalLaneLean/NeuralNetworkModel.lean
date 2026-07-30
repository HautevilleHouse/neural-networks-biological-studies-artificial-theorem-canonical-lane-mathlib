import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure NeuralNetworkModelPackage where
  inputLayerSize : Nat
  hiddenLayerSize : Nat
  outputLayerSize : Nat
  weights : (Nat × Nat) → Float
  activationFunction : Float → Float
  forwardPass : Array Float → Array Float
  forwardPassClosed : forwardPass = λ _ => #[]

structure NeuralNetworkModelEvidence (N : NeuralNetworkModelPackage) where
  forwardPassDefined : N.forwardPass = λ _ => #[]

def NeuralNetworkModelClosed (N : NeuralNetworkModelPackage) : Prop :=
  N.forwardPass = λ _ => #[]

theorem neural_network_model_closed_from_evidence
    (N : NeuralNetworkModelPackage) (E : NeuralNetworkModelEvidence N) :
    NeuralNetworkModelClosed N := by
  exact E.forwardPassDefined

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse