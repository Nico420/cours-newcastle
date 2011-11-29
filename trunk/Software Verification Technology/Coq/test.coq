Theorem hyp_syll : 
forall A B C : Prop, (A->B)->(B->C)->A->C.
intros.
apply H0.
apply H.
apply H1.
Qed.
