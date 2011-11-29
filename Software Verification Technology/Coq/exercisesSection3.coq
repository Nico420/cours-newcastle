Theorem neutralityOfZero:
forall a, plus a 0 =a.
induction a.
trivial.
simpl.
rewrite IHa.
trivial.
Qed.


Theorem neutralityOfZero_bis:
forall a, plus 0 a =a.
induction a.
trivial.
simpl.
trivial.
Qed.


Theorem addAssociativity:
forall a b c, plus a (plus b c) = plus (plus a b) c.
induction a.
trivial.
intros.
simpl.
rewrite IHa.
trivial.
Qed.

Theorem hint:
forall a b,S(a+b)=a+(S b).
induction a.
simpl.
trivial.
simpl.
intros.
rewrite IHa.
trivial.
Qed.

Theorem addComm :
forall a b, plus a b = plus b a.
induction a.
intros.
trivial.
intros.
simpl.
rewrite IHa.
apply hint.
Qed.

Theorem mulNeutralityOne:
forall a, 1*a=a.
induction a.
trivial.
simpl.
rewrite neutralityOfZero.
trivial.
Qed.

Theorem mulNeutralityOne_bis:
forall a, a*1=a.
induction a.
trivial.
simpl.
rewrite IHa.
trivial.
Qed.

Theorem mulNulZero:
forall a, 0*a = 0.
intros.
trivial.
Qed.

Theorem mulNulZero_bis:
forall a, a*0 = 0.
induction a.
trivial.
simpl.
trivial.
Qed.

Theorem mulDistributivity:
forall a b c, a*(b+c)=a*b+a*c.
induction a.
trivial.
intros.
simpl.
rewrite IHa.
rewrite addAssociativity.
rewrite addComm.
rewrite addComm.
trivial.





