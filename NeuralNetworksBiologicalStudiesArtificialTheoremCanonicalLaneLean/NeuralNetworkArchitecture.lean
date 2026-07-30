import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure NeuralNetworkArchitecturePackage where
  layerTypes : Type u → Type v
  activationFunctions : Type w
  connectivityPattern : Prop
  feedforwardConnections : Prop
  recurrentConnections : Prop
  numberHiddenLayers : ℕ
  layerSizes : ℕ → ℕ

structure NeuralNetworkArchitectureEvidence (N : NeuralNetworkArchitecturePackage) where
  connectivityPatternClosed : N.connectivityPattern
  feedforwardConnectionsClosed : N.feedforwardConnections
  recurrentConnectionsClosed : N.recurrentConnections
  layerSizesPositive : ∀ i : ℕ, i < N.numberHiddenLayers + 1 → N.layerSizes i > 0

def NeuralNetworkArchitectureClosed (N : NeuralNetworkArchitecturePackage) : Prop :=
  N.connectivityPattern ∧ N.feedforwardConnections ∧ N.recurrentConnections ∧
  (∀ i : ℕ, i < N.numberHiddenLayers + 1 → N.layerSizes i > 0)

theorem neural_network_architecture_closed_from_evidence
    (N : NeuralNetworkArchitecturePackage) (E : NeuralNetworkArchitectureEvidence N) :
    NeuralNetworkArchitectureClosed N :=
  And.intro E.connectivityPatternClosed
    (And.intro E.feedforwardConnectionsClosed
      (And.intro E.recurrentConnectionsClosed E.layerSizesPositive))

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse
