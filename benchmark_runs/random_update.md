
# Benchmark

Compares random element replacement.

For arrays, we check `Arrays.replace/3` as well as Access' `put_in`.
These are similar but slightly different APIs for element replacement.

For lists, `List.replace_at(list, index)` is used.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">7.60 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.0</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.0.1</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr>
</table>

## Statistics




__Input: 0000000032 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.90 M</td>
    <td style="white-space: nowrap; text-align: right">256.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±653.13%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">547.70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.61 M</td>
    <td style="white-space: nowrap; text-align: right">383.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±588.86%</td>
    <td style="white-space: nowrap; text-align: right">237 ns</td>
    <td style="white-space: nowrap; text-align: right">624.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.01 M</td>
    <td style="white-space: nowrap; text-align: right">496.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±668.46%</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
    <td style="white-space: nowrap; text-align: right">624.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">522.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±616.94%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">726.89 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap;text-align: right">3.90 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

</table>



<hr/>


__Input: 0000000064 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±425.76%</td>
    <td style="white-space: nowrap; text-align: right">248 ns</td>
    <td style="white-space: nowrap; text-align: right">822.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.01 M</td>
    <td style="white-space: nowrap; text-align: right">332.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±529.35%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">641.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">415.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±479.70%</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
    <td style="white-space: nowrap; text-align: right">832.56 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">428.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±594.35%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">757.73 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">3.13 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

</table>



<hr/>


__Input: 0000000128 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">325.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±451.44%</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
    <td style="white-space: nowrap; text-align: right">510 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.84 M</td>
    <td style="white-space: nowrap; text-align: right">352.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±473.39%</td>
    <td style="white-space: nowrap; text-align: right">263 ns</td>
    <td style="white-space: nowrap; text-align: right">928.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.27 M</td>
    <td style="white-space: nowrap; text-align: right">440.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±593.63%</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
    <td style="white-space: nowrap; text-align: right">806.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">684.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±394.98%</td>
    <td style="white-space: nowrap; text-align: right">468 ns</td>
    <td style="white-space: nowrap; text-align: right">3803.00 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">3.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.27 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">2.1x</td>
  </tr>

</table>



<hr/>


__Input: 0000000256 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">338.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±446.40%</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
    <td style="white-space: nowrap; text-align: right">561.73 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">369.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±442.41%</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
    <td style="white-space: nowrap; text-align: right">574.05 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">464.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±668.13%</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
    <td style="white-space: nowrap; text-align: right">787.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.81 M</td>
    <td style="white-space: nowrap; text-align: right">1228.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±285.59%</td>
    <td style="white-space: nowrap; text-align: right">845 ns</td>
    <td style="white-space: nowrap; text-align: right">14654.14 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">2.96 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.81 M</td>
    <td style="white-space: nowrap; text-align: right">3.64x</td>
  </tr>

</table>



<hr/>


__Input: 0000000512 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.72 M</td>
    <td style="white-space: nowrap; text-align: right">367.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±450.63%</td>
    <td style="white-space: nowrap; text-align: right">287 ns</td>
    <td style="white-space: nowrap; text-align: right">624.33 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">374.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±547.35%</td>
    <td style="white-space: nowrap; text-align: right">283 ns</td>
    <td style="white-space: nowrap; text-align: right">636 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">522.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±585.41%</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
    <td style="white-space: nowrap; text-align: right">1289.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">2282.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±219.89%</td>
    <td style="white-space: nowrap; text-align: right">1559 ns</td>
    <td style="white-space: nowrap; text-align: right">23520.80 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">2.72 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">6.22x</td>
  </tr>

</table>



<hr/>


__Input: 0000001024 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">374.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±437.81%</td>
    <td style="white-space: nowrap; text-align: right">288 ns</td>
    <td style="white-space: nowrap; text-align: right">724.89 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">414.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±484.47%</td>
    <td style="white-space: nowrap; text-align: right">302 ns</td>
    <td style="white-space: nowrap; text-align: right">1573.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">559.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±608.59%</td>
    <td style="white-space: nowrap; text-align: right">312 ns</td>
    <td style="white-space: nowrap; text-align: right">1076.75 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">4623.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±174.45%</td>
    <td style="white-space: nowrap; text-align: right">3127 ns</td>
    <td style="white-space: nowrap; text-align: right">54709.80 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">2.67 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">12.34x</td>
  </tr>

</table>



<hr/>


__Input: 0000002048 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.56 M</td>
    <td style="white-space: nowrap; text-align: right">390.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±402.53%</td>
    <td style="white-space: nowrap; text-align: right">299 ns</td>
    <td style="white-space: nowrap; text-align: right">783.14 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">397.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±436.84%</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
    <td style="white-space: nowrap; text-align: right">693.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">465.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±463.42%</td>
    <td style="white-space: nowrap; text-align: right">316 ns</td>
    <td style="white-space: nowrap; text-align: right">770.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.114 M</td>
    <td style="white-space: nowrap; text-align: right">8785.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±133.16%</td>
    <td style="white-space: nowrap; text-align: right">6031 ns</td>
    <td style="white-space: nowrap; text-align: right">60019.44 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">2.56 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.114 M</td>
    <td style="white-space: nowrap; text-align: right">22.51x</td>
  </tr>

</table>



<hr/>


__Input: 0000004096 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">466.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±542.54%</td>
    <td style="white-space: nowrap; text-align: right">339 ns</td>
    <td style="white-space: nowrap; text-align: right">738.11 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">500.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±478.87%</td>
    <td style="white-space: nowrap; text-align: right">354 ns</td>
    <td style="white-space: nowrap; text-align: right">997.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">578.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±553.25%</td>
    <td style="white-space: nowrap; text-align: right">310 ns</td>
    <td style="white-space: nowrap; text-align: right">992.23 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0566 M</td>
    <td style="white-space: nowrap; text-align: right">17675.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±105.18%</td>
    <td style="white-space: nowrap; text-align: right">12582 ns</td>
    <td style="white-space: nowrap; text-align: right">77247.28 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.15 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0566 M</td>
    <td style="white-space: nowrap; text-align: right">37.92x</td>
  </tr>

</table>



<hr/>


__Input: 0000008192 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">438.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±109.35%</td>
    <td style="white-space: nowrap; text-align: right">367 ns</td>
    <td style="white-space: nowrap; text-align: right">1130.14 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 M</td>
    <td style="white-space: nowrap; text-align: right">474.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±176.58%</td>
    <td style="white-space: nowrap; text-align: right">402 ns</td>
    <td style="white-space: nowrap; text-align: right">792.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">643.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±506.69%</td>
    <td style="white-space: nowrap; text-align: right">353 ns</td>
    <td style="white-space: nowrap; text-align: right">1423.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0282 M</td>
    <td style="white-space: nowrap; text-align: right">35463.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±87.53%</td>
    <td style="white-space: nowrap; text-align: right">26276 ns</td>
    <td style="white-space: nowrap; text-align: right">130773.76 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">2.28 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0282 M</td>
    <td style="white-space: nowrap; text-align: right">80.87x</td>
  </tr>

</table>



<hr/>


__Input: 0000016384 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">439.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±166.08%</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
    <td style="white-space: nowrap; text-align: right">840.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">489.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±152.37%</td>
    <td style="white-space: nowrap; text-align: right">386 ns</td>
    <td style="white-space: nowrap; text-align: right">1400.70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">542.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±513.64%</td>
    <td style="white-space: nowrap; text-align: right">356 ns</td>
    <td style="white-space: nowrap; text-align: right">717.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0149 M</td>
    <td style="white-space: nowrap; text-align: right">67304.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±81.33%</td>
    <td style="white-space: nowrap; text-align: right">57228.50 ns</td>
    <td style="white-space: nowrap; text-align: right">239126.43 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.28 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0149 M</td>
    <td style="white-space: nowrap; text-align: right">153.19x</td>
  </tr>

</table>



<hr/>


__Input: 0000032768 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1187.65 K</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±750.50%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">537.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±1339.21%</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">423.38 K</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±1581.71%</td>
    <td style="white-space: nowrap; text-align: right">0.46 μs</td>
    <td style="white-space: nowrap; text-align: right">3.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.46 K</td>
    <td style="white-space: nowrap; text-align: right">183.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.71%</td>
    <td style="white-space: nowrap; text-align: right">126.74 μs</td>
    <td style="white-space: nowrap; text-align: right">735.72 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">1187.65 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">537.84 K</td>
    <td style="white-space: nowrap; text-align: right">2.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">423.38 K</td>
    <td style="white-space: nowrap; text-align: right">2.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.46 K</td>
    <td style="white-space: nowrap; text-align: right">217.52x</td>
  </tr>

</table>



<hr/>


__Input: 0000065536 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">739.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±835.72%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">1.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">381.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.02%</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">6.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">330.84 K</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.75%</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">18.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
    <td style="white-space: nowrap; text-align: right">350.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.33%</td>
    <td style="white-space: nowrap; text-align: right">253.71 μs</td>
    <td style="white-space: nowrap; text-align: right">1081.87 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">739.20 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">381.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">330.84 K</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.86 K</td>
    <td style="white-space: nowrap; text-align: right">258.73x</td>
  </tr>

</table>



<hr/>


__Input: 0000131072 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2059.09 K</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±246.57%</td>
    <td style="white-space: nowrap; text-align: right">0.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">236.46 K</td>
    <td style="white-space: nowrap; text-align: right">4.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.09%</td>
    <td style="white-space: nowrap; text-align: right">3.49 μs</td>
    <td style="white-space: nowrap; text-align: right">19.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.11%</td>
    <td style="white-space: nowrap; text-align: right">3.79 μs</td>
    <td style="white-space: nowrap; text-align: right">22.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">752.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.70%</td>
    <td style="white-space: nowrap; text-align: right">596.10 μs</td>
    <td style="white-space: nowrap; text-align: right">3917.37 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">2059.09 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">236.46 K</td>
    <td style="white-space: nowrap; text-align: right">8.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.71 K</td>
    <td style="white-space: nowrap; text-align: right">8.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">1548.86x</td>
  </tr>

</table>



<hr/>


__Input: 0000262144 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">797.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±109.99%</td>
    <td style="white-space: nowrap; text-align: right">0.80 μs</td>
    <td style="white-space: nowrap; text-align: right">7.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">239.06 K</td>
    <td style="white-space: nowrap; text-align: right">4.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±42.60%</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">17.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">228.08 K</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.03%</td>
    <td style="white-space: nowrap; text-align: right">4.00 μs</td>
    <td style="white-space: nowrap; text-align: right">18.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 K</td>
    <td style="white-space: nowrap; text-align: right">2115.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.97%</td>
    <td style="white-space: nowrap; text-align: right">1196.87 μs</td>
    <td style="white-space: nowrap; text-align: right">7700.02 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">797.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">239.06 K</td>
    <td style="white-space: nowrap; text-align: right">3.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">228.08 K</td>
    <td style="white-space: nowrap; text-align: right">3.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 K</td>
    <td style="white-space: nowrap; text-align: right">1685.95x</td>
  </tr>

</table>



<hr/>


__Input: 0000524288 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">546.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.25%</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">12.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">240.13 K</td>
    <td style="white-space: nowrap; text-align: right">4.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.29%</td>
    <td style="white-space: nowrap; text-align: right">3.73 μs</td>
    <td style="white-space: nowrap; text-align: right">6.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">217.69 K</td>
    <td style="white-space: nowrap; text-align: right">4.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.07%</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">17.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4526.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.79%</td>
    <td style="white-space: nowrap; text-align: right">3426.18 μs</td>
    <td style="white-space: nowrap; text-align: right">12688.42 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">546.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">240.13 K</td>
    <td style="white-space: nowrap; text-align: right">2.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">217.69 K</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">2472.31x</td>
  </tr>

</table>



<hr/>


__Input: 0001048576 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">514.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.94%</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">6.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">220.48 K</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.73%</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
    <td style="white-space: nowrap; text-align: right">6.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">206.21 K</td>
    <td style="white-space: nowrap; text-align: right">4.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.85%</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
    <td style="white-space: nowrap; text-align: right">7.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0792 K</td>
    <td style="white-space: nowrap; text-align: right">12625.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±116.70%</td>
    <td style="white-space: nowrap; text-align: right">9659.17 μs</td>
    <td style="white-space: nowrap; text-align: right">71374.42 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">514.33 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">220.48 K</td>
    <td style="white-space: nowrap; text-align: right">2.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">206.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0792 K</td>
    <td style="white-space: nowrap; text-align: right">6493.86x</td>
  </tr>

</table>



<hr/>

