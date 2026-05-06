theory add_assoc_1
    imports  arith_lemmas
begin

theorem motivational_example:
  fixes p q r :: nat 
  fixes a b c :: int
  assumes "p > 0" and "r > 0" and "q > 0"
  assumes "q >= r"
  shows "(bw r ((bw q ((bw p a) + (bw p b))) + (bw p c)))
        = (bw r ((bw p a) + (bw q ((bw p b) + (bw p c)))))" 
        (is "?lhs = ?rhs")
proof -
  have "?lhs = (bw r (((bw p a) + (bw p b)) + (bw p c)))" 
    using add_remove_prec_left assms 
    by (simp ; fail | simp only: add_remove_prec_left; fail | simp add: add_remove_prec_left; fail | blast; fail | metis)
  moreover have "... = (bw r ((bw p a) + ((bw p b) + (bw p c))))" 
    using add.assoc assms 
    by (simp ; fail | simp only: add.assoc; fail | simp add: add.assoc; fail | blast; fail | metis)
  moreover have "... = (bw r ((bw p a) + (bw q ((bw p b) + (bw p c)))))" 
    using add_remove_prec_right assms 
    by (simp ; fail | simp only: add_remove_prec_right; fail | simp add: add_remove_prec_right; fail | blast; fail | metis)
  ultimately show ?thesis by argo
qed

end
