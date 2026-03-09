# Encoder
An Encoder has 2ⁿ input lines and n output lines. At any given time, only one input is assumed to be active, and the encoder generates the binary equivalent of that active input at the output.

| D3 | D2 | D1 | D0 | Y1 | Y0 |
| -- | -- | -- | -- | -- | -- |
| 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 0  | 1  | 1  |
