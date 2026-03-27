theory abs_diff_shared_sub_signed
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem abs_diff_shared_sub_signed_th:
"(bw w (sel (bw 1 s) (bw w (signed w (bw w ((bw w (signed w (bw w a))) - (bw w (signed w (bw w b))))))) (bw w (signed w (bw w ((bw w (signed w (bw w b))) - (bw w (signed w (bw w a)))))))))=(bw w (signed w (bw w ((bw w (sel (bw 1 s) (bw w (signed w (bw w a))) (bw w (signed w (bw w b))))) - (bw w (sel (bw 1 s) (bw w (signed w (bw w b))) (bw w (signed w (bw w a)))))))))" (is "?lhs = ?rhs")
if "(w > 0)" and "(1 > 0)"
for w :: nat and s a b :: int
proof -
  show ?thesis sorry
qed

end
