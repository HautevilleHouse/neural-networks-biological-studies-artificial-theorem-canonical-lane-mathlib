import canonicalLaneMathlib.AdmissibleClass
import NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse