import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure SpikeTimingPlasticityPackage where
  preSynapticSpikeTimes : Type u → Type v
  postSynapticSpikeTimes : Type u → Type w
  learningWindow : ℝ → ℝ → ℝ
  weightUpdateRule : (ℝ → ℝ) → ℝ
  stdpCurve : ℝ → ℝ

structure SpikeTimingPlasticityEvidence (S : SpikeTimingPlasticityPackage) where
  learningWindowBiologicallyPlausible : ∀ (t_pre t_post : ℝ), S.learningWindow t_pre t_post ≥ 0
  weightUpdateRuleClosed : S.weightUpdateRule S.stdpcCurve > 0
  stdpCurveClosed : ∀ Δt : ℝ, S.stdpcCurve Δt ≠ 0

def SpikeTimingPlasticityClosed (S : SpikeTimingPlasticityPackage) : Prop :=
  (∀ (t_pre t_post : ℝ), S.learningWindow t_pre t_post ≥ 0) ∧
  (S.weightUpdateRule S.stdpcCurve > 0) ∧
  (∀ Δt : ℝ, S.stdpcCurve Δt ≠ 0)

theorem spike_timing_plasticity_closed_from_evidence
    (S : SpikeTimingPlasticityPackage) (E : SpikeTimingPlasticityEvidence S) :
    SpikeTimingPlasticityClosed S :=
  And.intro E.learningWindowBiologicallyPlausible
    (And.intro E.weightUpdateRuleClosed E.stdpcCurveClosed)

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse
