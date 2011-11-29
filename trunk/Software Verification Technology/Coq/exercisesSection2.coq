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

Theorem nAandFasle:
forall A:Prop, ~(A/\False).
unfold "~".
intros A AandFalse.
destruct AandFalse.
trivial.

Theorem AorTrueeqTrue:
forall A:Prop,(A\/True)<->True.