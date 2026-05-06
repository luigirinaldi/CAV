| benchmark    |   #_parabit |   Nodes |   Classes |   Iterations |   Time(ms) |   Proof_len |   Time_w_Proof(ms) |   #_pbv |   PBV_Time(ms) |
|:-------------|------------:|--------:|----------:|-------------:|-----------:|------------:|-------------------:|--------:|---------------:|
| Alive (200)  |          57 |    3872 |      1506 |         5.44 |     500.4  |         320 |            5140.55 |     107 |         497.42 |
| Hydra (154)  |          56 |     443 |       177 |         3.93 |       3.85 |          23 |               9.82 |      93 |          79.91 |
| ROVER (28)   |          27 |    1101 |       488 |         4    |      28.67 |          22 |              73.7  |      10 |          52.32 |
| Industry (5) |           4 |   11556 |      4942 |         7.5  |     273.83 |         174 |             672.5  |       2 |         752    |
| Total (387)  |         144 |    2232 |       894 |         4.64 |     212.56 |         142 |            2027.89 |     212 |         295.67 |

# Proof failures
## Benchmark - Alive
- Benchmark file `AndOrXor_2285_values_0` was found to be equivalent in 33.45ms, but a proof certificate could not be generated after 62420ms because of `memory`.
- Benchmark file `AndOrXor_2647_values_0` was found to be equivalent in 90.41ms, but a proof certificate could not be generated after 48710ms because of `memory`.
