Theorem AandTeqA:
forall A:Prop, (A/\True)<->A.
intros.
split.
intros AandTrue.
destruct AandTrue.
assumption.
intros.
split.
assumption.
trivial.
Qed.

Theorem nAandFasle:
forall A:Prop, ~(A/\False).
unfold "~".
intros A AandFalse.
destruct AandFalse.
trivial.
Qed.

Theorem AorTrueeqTrue:
forall A:Prop,(A\/True)<->True.
intros.
split.
intros.
trivial.
intros.
right.
trivial.
Qed.

Theorem AorFalseeqA:
forall A:Prop, (A\/False)<->A.
intros.
split.
intros.
destruct H.
assumption.
destruct H.
intros.
left.
trivial.
Qed.

Theorem deMorgan1 : 
forall A B : Prop, ((A\/B) /\ ~A)->B.
unfold "~".
intros.
destruct H.
destruct H0.
destruct H.
trivial.
Qed.

Theorem deMorgan2 : 
forall A B : Prop, (A\/B) -> ~(~A/\ ~B).
unfold "~".
intros.
destruct H0.
destruct H.
apply H0.
assumption.
apply H1.
assumption.
Qed.