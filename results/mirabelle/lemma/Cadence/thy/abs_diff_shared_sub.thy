theory abs_diff_shared_sub
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem abs_diff_shared_sub_th:
"(bw w (sel (bw 1 s) (bw w ((bw w a) - (bw w b))) (bw w ((bw w b) - (bw w a)))))=(bw w ((bw w (sel (bw 1 s) (bw w a) (bw w b))) - (bw w (sel (bw 1 s) (bw w b) (bw w a)))))" (is "?lhs = ?rhs")
if "(1 > 0)" and "(w > 0)"
for w :: nat and a b s :: int
proof -
  show ?thesis sorry
qed

end
