Inductive tvl : Set := 
vrai:tvl | faux:tvl | peutEtre:tvl.

Definition and3 (a b : tvl) : tvl :=
match a,b with
|vrai, _ => b
|faux, _ => faux
|peutEtre, faux => faux
|peutEtre, _ => peutEtre
end. 

Definition or3 (a b : tvl) : tvl :=
match a,b with
|vrai,_ => vrai
|faux,_ => b
|peutEtre,vrai => vrai
|peutEtre,_=>peutEtre
end.

Definition not3 (a : tvl) : tvl :=
match a with
|vrai => faux
|faux => vrai
|peutEtre => peutEtre
end. 
 
Theorem and3Comm :
forall a b, and3 a b = and3 b a.
intros.
induction a.
induction b.
trivial.
trivial.
trivial.
induction b.
trivial.
trivial.
trivial.
induction b.
trivial.
trivial.
trivial.
Qed.

Theorem or3Comm :
forall a b, or3 a b = or3 b a.
intros.
induction a.
induction b.
trivial.
trivial.
trivial.
induction b.
trivial.
trivial.
trivial.
induction b.
trivial.
trivial.
trivial.
Qed.

Print bool.
Definition bool2tvl (a:bool) : tvl :=
match a with
| true => vrai
| false => faux
end.

Theorem and3Proof :
forall a b, bool2tvl (andb a b) = and3 (bool2tvl a)(bool2tvl b).
intros.
induction a.
simpl.
trivial.
simpl.
trivial.
Qed.

Theorem and3maybe:
forall a b, (and3 a b) = peutEtre -> (a=peutEtre) \/ (b=peutEtre).
intros.
induction a.
right.
apply H.
destruct H.
left.
trivial.
left.
trivial.
Qed.

Theorem or3Proof :
forall a b, bool2tvl (orb a b) = or3 (bool2tvl a)(bool2tvl b).
intros.
induction a.
simpl.
trivial.
simpl.
trivial.
Qed.

Theorem or3maybe:
forall a b, (or3 a b) = peutEtre -> (a=peutEtre) \/ (b=peutEtre).
intros.
induction a.
discriminate.
right.
apply H.
left.
trivial.
Qed.

