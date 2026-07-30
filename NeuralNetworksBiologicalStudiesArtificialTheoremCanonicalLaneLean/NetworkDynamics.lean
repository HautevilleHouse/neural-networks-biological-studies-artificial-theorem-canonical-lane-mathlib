import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean

structure NetworkDynamicsPackage where
  stateVector : Array Float
  dynamicsEquation : Array Float → Array Float
  fixedPoint : Array Float
  convergenceProperty : Prop
  dynamicsClosed : dynamicsEquation = λ _ => #[]

structure NetworkDynamicsEvidence (D : NetworkDynamicsPackage) where
  dynamicsDefined : D.dynamicsEquation = λ _ => #[]

def NetworkDynamicsClosed (D : NetworkDynamicsPackage) : Prop :=
  D.dynamicsEquation = λ _ => #[]

theorem network_dynamics_closed_from_evidence
    (D : NetworkDynamicsPackage) (E : NetworkDynamicsEvidence D) :
    NetworkDynamicsClosed D := by
  exact E.dynamicsDefined

end NeuralNetworksBiologicalStudiesArtificialTheoremCanonicalLaneLean
end HautevilleHouse