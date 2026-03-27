theory equation_abc
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem equation_abc_th:
"(bw w7 ((bw w7 ((bw w7 (signed w8 (bw w8 ((bw w4 ct) - (bw w1 a))))) * (bw w7 (signed w3 (bw w3 c))))) + (bw w7 ((bw w1 a) * (bw w7 d)))))=(bw w7 ((bw w7 ((bw w7 (signed w3 (bw w3 c))) * (bw w7 (signed w9 (bw w9 (bw w4 ct)))))) + (bw w7 ((bw w1 a) * (bw w7 ((bw w7 (signed w7 (bw w7 d))) - (bw w7 (signed w3 (bw w3 c)))))))))" (is "?lhs = ?rhs")
if "(w8 > w1)" and "(w8 > w4)" and "(w9 > w4)" and "(w1 > 0)" and "(w4 > 0)" and "(w3 > 0)" and "(w9 > 0)" and "(w8 > 0)" and "(w7 > 0)"
for w8 w1 w7 w3 w9 w4 :: nat and d ct c a :: int
proof -
  show ?thesis sorry
qed

end
