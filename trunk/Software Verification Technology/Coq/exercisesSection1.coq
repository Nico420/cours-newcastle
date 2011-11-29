Theorem or1 :
forall A B : Prop, A -> (A \/ B).
intros A B a.
left .
apply a.

Theorem or2 :
forall A B : Prop, B -> (A \/ B).
intros A B b.
right .
apply b.

Theorem and1:
forall A B : Prop, (A /\ B) -> A.
intros A B AandB.
destruct AandB.
apply H.

Theorem and2:
forall A B : Prop, (A /\ B) -> B.
intros A B AandB.
destruct AandB.
apply H0.

Theorem andImpOr:
forall A B : Prop, (A/\B)->(A\/B).
intros A B AandB.
destruct AandB.
left.
assumption.

Theorem or_comm:
forall A B : Prop, (A\/B)->(B\/A).
intros A B AorB.
destruct AorB.
right.
apply H.
left.
apply H.

Theorem or_assoc : 
forall A B C : Prop, (A\/(B\/C))->((A\/B)\/C).
intros A B C AorBorC.
destruct AorBorC.
left.
left.
apply H.
destruct H.
left.
right.
assumption.
right.
assumption.

Theorem and_assoc : 
forall A B C : Prop, (A/\(B/\C))->((A/\B)/\C).
intros A B C AandBandC.
destruct AandBandC.
split.
split.
apply H.
apply H0.
destruct H0.
assumption.

