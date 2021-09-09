
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
    <td style="white-space: nowrap; text-align: right">3.88 M</td>
    <td style="white-space: nowrap; text-align: right">257.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±673.62%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">541.07 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.78 M</td>
    <td style="white-space: nowrap; text-align: right">359.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±709.35%</td>
    <td style="white-space: nowrap; text-align: right">202 ns</td>
    <td style="white-space: nowrap; text-align: right">531.69 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">447.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±696.26%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">660.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.01 M</td>
    <td style="white-space: nowrap; text-align: right">497.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±702.45%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">611.81 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.88 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
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
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">270.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±454.63%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">488 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">311.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±534.98%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">542.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.03 M</td>
    <td style="white-space: nowrap; text-align: right">330.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±491.20%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">557.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">381.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±563.11%</td>
    <td style="white-space: nowrap; text-align: right">262 ns</td>
    <td style="white-space: nowrap; text-align: right">725.69 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.70 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.33 M</td>
    <td style="white-space: nowrap; text-align: right">300.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±554.00%</td>
    <td style="white-space: nowrap; text-align: right">226 ns</td>
    <td style="white-space: nowrap; text-align: right">436.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.32 M</td>
    <td style="white-space: nowrap; text-align: right">301.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±486.30%</td>
    <td style="white-space: nowrap; text-align: right">232 ns</td>
    <td style="white-space: nowrap; text-align: right">419.78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">447.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±693.36%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">622.78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">681.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±465.19%</td>
    <td style="white-space: nowrap; text-align: right">442 ns</td>
    <td style="white-space: nowrap; text-align: right">3438.64 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.33 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.32 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">2.27x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.08 M</td>
    <td style="white-space: nowrap; text-align: right">325.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.32%</td>
    <td style="white-space: nowrap; text-align: right">245 ns</td>
    <td style="white-space: nowrap; text-align: right">472.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.86 M</td>
    <td style="white-space: nowrap; text-align: right">350.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±569.70%</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
    <td style="white-space: nowrap; text-align: right">542 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">394.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±537.27%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">714.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">1160.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±312.57%</td>
    <td style="white-space: nowrap; text-align: right">789 ns</td>
    <td style="white-space: nowrap; text-align: right">14639.00 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.08 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.86 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">3.57x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.72 M</td>
    <td style="white-space: nowrap; text-align: right">368.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±669.04%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">588.54 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">385.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.82%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">646.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.92 M</td>
    <td style="white-space: nowrap; text-align: right">520.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±602.99%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">2373.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">2250.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±250.92%</td>
    <td style="white-space: nowrap; text-align: right">1500 ns</td>
    <td style="white-space: nowrap; text-align: right">24895.52 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.72 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.92 M</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">6.11x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.81 M</td>
    <td style="white-space: nowrap; text-align: right">355.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±468.26%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">643.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.61 M</td>
    <td style="white-space: nowrap; text-align: right">383.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±652.65%</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
    <td style="white-space: nowrap; text-align: right">676.11 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">536.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±617.76%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">724.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">4577.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±176.49%</td>
    <td style="white-space: nowrap; text-align: right">3097 ns</td>
    <td style="white-space: nowrap; text-align: right">54780.96 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.81 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">12.88x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.64 M</td>
    <td style="white-space: nowrap; text-align: right">379.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±441.49%</td>
    <td style="white-space: nowrap; text-align: right">283 ns</td>
    <td style="white-space: nowrap; text-align: right">804.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">385.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±403.59%</td>
    <td style="white-space: nowrap; text-align: right">291 ns</td>
    <td style="white-space: nowrap; text-align: right">1035.05 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">543.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±587.35%</td>
    <td style="white-space: nowrap; text-align: right">271 ns</td>
    <td style="white-space: nowrap; text-align: right">1053.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.112 M</td>
    <td style="white-space: nowrap; text-align: right">8934.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±137.26%</td>
    <td style="white-space: nowrap; text-align: right">6184.50 ns</td>
    <td style="white-space: nowrap; text-align: right">67426.91 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.64 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.112 M</td>
    <td style="white-space: nowrap; text-align: right">23.55x</td>
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
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">413.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±394.15%</td>
    <td style="white-space: nowrap; text-align: right">315 ns</td>
    <td style="white-space: nowrap; text-align: right">1116.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">422.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±392.83%</td>
    <td style="white-space: nowrap; text-align: right">319 ns</td>
    <td style="white-space: nowrap; text-align: right">868.43 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">562.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±636.83%</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
    <td style="white-space: nowrap; text-align: right">809.26 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0523 M</td>
    <td style="white-space: nowrap; text-align: right">19113.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±100.34%</td>
    <td style="white-space: nowrap; text-align: right">14030.50 ns</td>
    <td style="white-space: nowrap; text-align: right">87666.67 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.42 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0523 M</td>
    <td style="white-space: nowrap; text-align: right">46.2x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.32 M</td>
    <td style="white-space: nowrap; text-align: right">431.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±166.09%</td>
    <td style="white-space: nowrap; text-align: right">365 ns</td>
    <td style="white-space: nowrap; text-align: right">781.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.21 M</td>
    <td style="white-space: nowrap; text-align: right">453.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±184.23%</td>
    <td style="white-space: nowrap; text-align: right">366 ns</td>
    <td style="white-space: nowrap; text-align: right">1064.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">624.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±591.12%</td>
    <td style="white-space: nowrap; text-align: right">322 ns</td>
    <td style="white-space: nowrap; text-align: right">937.33 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0293 M</td>
    <td style="white-space: nowrap; text-align: right">34151.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±91.94%</td>
    <td style="white-space: nowrap; text-align: right">25099 ns</td>
    <td style="white-space: nowrap; text-align: right">138539.20 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.32 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0293 M</td>
    <td style="white-space: nowrap; text-align: right">79.1x</td>
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
    <td style="white-space: nowrap; text-align: right">438.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±186.41%</td>
    <td style="white-space: nowrap; text-align: right">343 ns</td>
    <td style="white-space: nowrap; text-align: right">834.77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">499.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±184.41%</td>
    <td style="white-space: nowrap; text-align: right">393 ns</td>
    <td style="white-space: nowrap; text-align: right">983.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">522.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±560.33%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">694.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0152 M</td>
    <td style="white-space: nowrap; text-align: right">65928.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±79.73%</td>
    <td style="white-space: nowrap; text-align: right">56816.50 ns</td>
    <td style="white-space: nowrap; text-align: right">236198.20 ns</td>
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
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0152 M</td>
    <td style="white-space: nowrap; text-align: right">150.42x</td>
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
    <td style="white-space: nowrap; text-align: right">1381.80 K</td>
    <td style="white-space: nowrap; text-align: right">0.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±735.21%</td>
    <td style="white-space: nowrap; text-align: right">0.34 μs</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">588.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±1366.79%</td>
    <td style="white-space: nowrap; text-align: right">0.46 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">397.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±1298.22%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.49 K</td>
    <td style="white-space: nowrap; text-align: right">182.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.57%</td>
    <td style="white-space: nowrap; text-align: right">123.06 μs</td>
    <td style="white-space: nowrap; text-align: right">751.07 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1381.80 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">588.71 K</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">397.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.49 K</td>
    <td style="white-space: nowrap; text-align: right">251.72x</td>
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
    <td style="white-space: nowrap; text-align: right">724.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±871.66%</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">348.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.78%</td>
    <td style="white-space: nowrap; text-align: right">2.45 μs</td>
    <td style="white-space: nowrap; text-align: right">16.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">337.73 K</td>
    <td style="white-space: nowrap; text-align: right">2.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.91%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">19.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">341.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.93%</td>
    <td style="white-space: nowrap; text-align: right">252.07 μs</td>
    <td style="white-space: nowrap; text-align: right">1088.80 μs</td>
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
    <td style="white-space: nowrap;text-align: right">724.25 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">348.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">337.73 K</td>
    <td style="white-space: nowrap; text-align: right">2.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">247.68x</td>
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
    <td style="white-space: nowrap; text-align: right">2237.63 K</td>
    <td style="white-space: nowrap; text-align: right">0.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±133.54%</td>
    <td style="white-space: nowrap; text-align: right">0.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">286.66 K</td>
    <td style="white-space: nowrap; text-align: right">3.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.50%</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
    <td style="white-space: nowrap; text-align: right">17.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">267.11 K</td>
    <td style="white-space: nowrap; text-align: right">3.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.68%</td>
    <td style="white-space: nowrap; text-align: right">3.56 μs</td>
    <td style="white-space: nowrap; text-align: right">10.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">813.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.65%</td>
    <td style="white-space: nowrap; text-align: right">600.07 μs</td>
    <td style="white-space: nowrap; text-align: right">3972.07 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2237.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">286.66 K</td>
    <td style="white-space: nowrap; text-align: right">7.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">267.11 K</td>
    <td style="white-space: nowrap; text-align: right">8.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.23 K</td>
    <td style="white-space: nowrap; text-align: right">1819.43x</td>
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
    <td style="white-space: nowrap; text-align: right">923.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.79%</td>
    <td style="white-space: nowrap; text-align: right">0.80 μs</td>
    <td style="white-space: nowrap; text-align: right">5.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">246.51 K</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.44%</td>
    <td style="white-space: nowrap; text-align: right">3.72 μs</td>
    <td style="white-space: nowrap; text-align: right">20.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">246.42 K</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.91%</td>
    <td style="white-space: nowrap; text-align: right">3.81 μs</td>
    <td style="white-space: nowrap; text-align: right">19.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.52 K</td>
    <td style="white-space: nowrap; text-align: right">1909.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.22%</td>
    <td style="white-space: nowrap; text-align: right">1141.87 μs</td>
    <td style="white-space: nowrap; text-align: right">5669.72 μs</td>
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
    <td style="white-space: nowrap;text-align: right">923.45 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">246.51 K</td>
    <td style="white-space: nowrap; text-align: right">3.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">246.42 K</td>
    <td style="white-space: nowrap; text-align: right">3.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.52 K</td>
    <td style="white-space: nowrap; text-align: right">1763.29x</td>
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
    <td style="white-space: nowrap; text-align: right">409.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.73%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">6.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">249.34 K</td>
    <td style="white-space: nowrap; text-align: right">4.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.93%</td>
    <td style="white-space: nowrap; text-align: right">3.68 μs</td>
    <td style="white-space: nowrap; text-align: right">17.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">230.13 K</td>
    <td style="white-space: nowrap; text-align: right">4.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.88%</td>
    <td style="white-space: nowrap; text-align: right">3.64 μs</td>
    <td style="white-space: nowrap; text-align: right">18.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">4896.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.49%</td>
    <td style="white-space: nowrap; text-align: right">2505.42 μs</td>
    <td style="white-space: nowrap; text-align: right">27656.22 μs</td>
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
    <td style="white-space: nowrap;text-align: right">409.10 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">249.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">230.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">2003.02x</td>
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
    <td style="white-space: nowrap; text-align: right">369.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.55%</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
    <td style="white-space: nowrap; text-align: right">8.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">217.66 K</td>
    <td style="white-space: nowrap; text-align: right">4.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.81%</td>
    <td style="white-space: nowrap; text-align: right">4.18 μs</td>
    <td style="white-space: nowrap; text-align: right">8.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">198.26 K</td>
    <td style="white-space: nowrap; text-align: right">5.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.37%</td>
    <td style="white-space: nowrap; text-align: right">4.39 μs</td>
    <td style="white-space: nowrap; text-align: right">14.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0675 K</td>
    <td style="white-space: nowrap; text-align: right">14810.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.09%</td>
    <td style="white-space: nowrap; text-align: right">9939.24 μs</td>
    <td style="white-space: nowrap; text-align: right">46962.16 μs</td>
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
    <td style="white-space: nowrap;text-align: right">369.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">217.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">198.26 K</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0675 K</td>
    <td style="white-space: nowrap; text-align: right">5468.18x</td>
  </tr>

</table>



<hr/>

