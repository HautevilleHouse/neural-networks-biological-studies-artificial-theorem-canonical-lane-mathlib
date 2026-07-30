import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure SynapticConnectivityPackage where
  networkGraph : Type u
  adjacencyMatrix : networkGraph → networkGraph → Prop
  synapticStrength : networkGraph → networkGraph → ℝ
  plasticityRule : Prop
  spikeTimingDependentPlasticity : Prop
  hebbianLearning : Prop

structure SynapticConnectivityEvidence (S : SynapticConnectivityPackage) where
  adjacencyMatrixClosed : ∀ x y : S.networkGraph, S.adjacencyMatrix x y → S.synapticStrength x y > 0
  plasticityRuleClosed : S.plasticityRule
  spikeTimingDependentPlasticityClosed : S.spikeTimingDependentPlasticity
  hebbianLearningClosed : S.hebbianLearning

def SynapticConnectivityClosed (S : SynapticConnectivityPackage) : Prop :=
  (∀ x y : S.networkGraph, S.adjacencyMatrix x y → S.synapticStrength x y > 0) ∧
  S.plasticityRule ∧ S.spikeTimingDependentPlasticity ∧ S.hebbianLearning

theorem synaptic_connectivity_closed_from_evidence (S : SynapticConnectivityPackage)
    (E : SynapticConnectivityEvidence S) : SynapticConnectivityClosed S :=
  And.intro E.adjacencyMatrixClosed
    (And.intro E.plasticityRuleClosed
      (And.intro E.spikeTimingDependentPlasticityClosed E.hebbianLearningClosed))

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse
