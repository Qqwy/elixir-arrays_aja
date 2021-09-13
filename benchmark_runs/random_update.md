
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
    <td style="white-space: nowrap">2 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">1 s</td>
  </tr>
</table>

## Statistics




__Input: 0000001__

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
    <td style="white-space: nowrap; text-align: right">13.81 M</td>
    <td style="white-space: nowrap; text-align: right">72.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±1210.17%</td>
    <td style="white-space: nowrap; text-align: right">57 ns</td>
    <td style="white-space: nowrap; text-align: right">91 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.23 M</td>
    <td style="white-space: nowrap; text-align: right">191.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±915.26%</td>
    <td style="white-space: nowrap; text-align: right">139 ns</td>
    <td style="white-space: nowrap; text-align: right">211 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.15 M</td>
    <td style="white-space: nowrap; text-align: right">194.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±1015.75%</td>
    <td style="white-space: nowrap; text-align: right">137 ns</td>
    <td style="white-space: nowrap; text-align: right">220 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">354.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±902.84%</td>
    <td style="white-space: nowrap; text-align: right">232 ns</td>
    <td style="white-space: nowrap; text-align: right">537.96 ns</td>
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
    <td style="white-space: nowrap;text-align: right">13.81 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.23 M</td>
    <td style="white-space: nowrap; text-align: right">2.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.15 M</td>
    <td style="white-space: nowrap; text-align: right">2.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">4.89x</td>
  </tr>

</table>



<hr/>


__Input: 0000002__

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
    <td style="white-space: nowrap; text-align: right">11.36 M</td>
    <td style="white-space: nowrap; text-align: right">87.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±1121.50%</td>
    <td style="white-space: nowrap; text-align: right">67 ns</td>
    <td style="white-space: nowrap; text-align: right">105 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.05 M</td>
    <td style="white-space: nowrap; text-align: right">198.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±919.22%</td>
    <td style="white-space: nowrap; text-align: right">140 ns</td>
    <td style="white-space: nowrap; text-align: right">219 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.92 M</td>
    <td style="white-space: nowrap; text-align: right">203.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±910.58%</td>
    <td style="white-space: nowrap; text-align: right">141 ns</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">322.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±841.66%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">331.57 ns</td>
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
    <td style="white-space: nowrap;text-align: right">11.36 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.05 M</td>
    <td style="white-space: nowrap; text-align: right">2.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.92 M</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">3.67x</td>
  </tr>

</table>



<hr/>


__Input: 0000003__

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
    <td style="white-space: nowrap; text-align: right">10.51 M</td>
    <td style="white-space: nowrap; text-align: right">95.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±1080.90%</td>
    <td style="white-space: nowrap; text-align: right">71 ns</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.65 M</td>
    <td style="white-space: nowrap; text-align: right">215.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±935.72%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">216.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±873.97%</td>
    <td style="white-space: nowrap; text-align: right">146 ns</td>
    <td style="white-space: nowrap; text-align: right">259.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">331.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±790.16%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">582 ns</td>
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
    <td style="white-space: nowrap;text-align: right">10.51 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.65 M</td>
    <td style="white-space: nowrap; text-align: right">2.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">2.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">3.48x</td>
  </tr>

</table>



<hr/>


__Input: 0000004__

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
    <td style="white-space: nowrap; text-align: right">9.18 M</td>
    <td style="white-space: nowrap; text-align: right">108.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±1179.37%</td>
    <td style="white-space: nowrap; text-align: right">78 ns</td>
    <td style="white-space: nowrap; text-align: right">121 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">221.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±905.96%</td>
    <td style="white-space: nowrap; text-align: right">152 ns</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.40 M</td>
    <td style="white-space: nowrap; text-align: right">227.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±883.21%</td>
    <td style="white-space: nowrap; text-align: right">153 ns</td>
    <td style="white-space: nowrap; text-align: right">236 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±796.58%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">387 ns</td>
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
    <td style="white-space: nowrap;text-align: right">9.18 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.40 M</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">2.92x</td>
  </tr>

</table>



<hr/>


__Input: 0000005__

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
    <td style="white-space: nowrap; text-align: right">9.65 M</td>
    <td style="white-space: nowrap; text-align: right">103.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±1136.86%</td>
    <td style="white-space: nowrap; text-align: right">76 ns</td>
    <td style="white-space: nowrap; text-align: right">120.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.29 M</td>
    <td style="white-space: nowrap; text-align: right">232.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±903.34%</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
    <td style="white-space: nowrap; text-align: right">235 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.19 M</td>
    <td style="white-space: nowrap; text-align: right">238.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±973.94%</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
    <td style="white-space: nowrap; text-align: right">239.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">326.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±1000.59%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">300 ns</td>
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
    <td style="white-space: nowrap;text-align: right">9.65 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.29 M</td>
    <td style="white-space: nowrap; text-align: right">2.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.19 M</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">3.15x</td>
  </tr>

</table>



<hr/>


__Input: 0000006__

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
    <td style="white-space: nowrap; text-align: right">8.62 M</td>
    <td style="white-space: nowrap; text-align: right">116.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±1086.26%</td>
    <td style="white-space: nowrap; text-align: right">84 ns</td>
    <td style="white-space: nowrap; text-align: right">139 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.10 M</td>
    <td style="white-space: nowrap; text-align: right">243.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±875.98%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">298 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 M</td>
    <td style="white-space: nowrap; text-align: right">246.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±889.11%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">575 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.19 M</td>
    <td style="white-space: nowrap; text-align: right">313.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±792.29%</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
    <td style="white-space: nowrap; text-align: right">324 ns</td>
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
    <td style="white-space: nowrap;text-align: right">8.62 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.10 M</td>
    <td style="white-space: nowrap; text-align: right">2.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 M</td>
    <td style="white-space: nowrap; text-align: right">2.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.19 M</td>
    <td style="white-space: nowrap; text-align: right">2.7x</td>
  </tr>

</table>



<hr/>


__Input: 0000007__

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
    <td style="white-space: nowrap; text-align: right">8.76 M</td>
    <td style="white-space: nowrap; text-align: right">114.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±1063.33%</td>
    <td style="white-space: nowrap; text-align: right">83 ns</td>
    <td style="white-space: nowrap; text-align: right">140 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.96 M</td>
    <td style="white-space: nowrap; text-align: right">252.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±888.98%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.92 M</td>
    <td style="white-space: nowrap; text-align: right">255.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±894.94%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.20 M</td>
    <td style="white-space: nowrap; text-align: right">312.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±810.02%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">321.18 ns</td>
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
    <td style="white-space: nowrap;text-align: right">8.76 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.96 M</td>
    <td style="white-space: nowrap; text-align: right">2.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.92 M</td>
    <td style="white-space: nowrap; text-align: right">2.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.20 M</td>
    <td style="white-space: nowrap; text-align: right">2.73x</td>
  </tr>

</table>



<hr/>


__Input: 0000008__

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
    <td style="white-space: nowrap; text-align: right">7.66 M</td>
    <td style="white-space: nowrap; text-align: right">130.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±1043.60%</td>
    <td style="white-space: nowrap; text-align: right">94 ns</td>
    <td style="white-space: nowrap; text-align: right">164.03 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">258.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±905.88%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">252.03 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.83 M</td>
    <td style="white-space: nowrap; text-align: right">261.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±888.85%</td>
    <td style="white-space: nowrap; text-align: right">166 ns</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±820.54%</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
    <td style="white-space: nowrap; text-align: right">332 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.66 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.83 M</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">2.43x</td>
  </tr>

</table>



<hr/>


__Input: 0000009__

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
    <td style="white-space: nowrap; text-align: right">7.37 M</td>
    <td style="white-space: nowrap; text-align: right">135.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±1006.22%</td>
    <td style="white-space: nowrap; text-align: right">94 ns</td>
    <td style="white-space: nowrap; text-align: right">170 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.76 M</td>
    <td style="white-space: nowrap; text-align: right">265.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±910.55%</td>
    <td style="white-space: nowrap; text-align: right">166 ns</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.71 M</td>
    <td style="white-space: nowrap; text-align: right">269.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±929.13%</td>
    <td style="white-space: nowrap; text-align: right">167 ns</td>
    <td style="white-space: nowrap; text-align: right">256.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±787.68%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">384 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.76 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.71 M</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
  </tr>

</table>



<hr/>


__Input: 0000010__

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
    <td style="white-space: nowrap; text-align: right">7.21 M</td>
    <td style="white-space: nowrap; text-align: right">138.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±943.36%</td>
    <td style="white-space: nowrap; text-align: right">99 ns</td>
    <td style="white-space: nowrap; text-align: right">184.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.61 M</td>
    <td style="white-space: nowrap; text-align: right">277.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±906.13%</td>
    <td style="white-space: nowrap; text-align: right">170 ns</td>
    <td style="white-space: nowrap; text-align: right">287 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.57 M</td>
    <td style="white-space: nowrap; text-align: right">279.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±950.31%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">316.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±815.24%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">381 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.21 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.61 M</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.57 M</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">2.28x</td>
  </tr>

</table>



<hr/>


__Input: 0000020__

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
    <td style="white-space: nowrap; text-align: right">4.72 M</td>
    <td style="white-space: nowrap; text-align: right">211.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±830.48%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">333.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.05 M</td>
    <td style="white-space: nowrap; text-align: right">328.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±790.74%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">407 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">354.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±886.65%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">394 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.75 M</td>
    <td style="white-space: nowrap; text-align: right">363.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±917.91%</td>
    <td style="white-space: nowrap; text-align: right">188 ns</td>
    <td style="white-space: nowrap; text-align: right">263 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.72 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.05 M</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.75 M</td>
    <td style="white-space: nowrap; text-align: right">1.71x</td>
  </tr>

</table>



<hr/>


__Input: 0000030__

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
    <td style="white-space: nowrap; text-align: right">3.31 M</td>
    <td style="white-space: nowrap; text-align: right">302.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±801.59%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">492.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.12 M</td>
    <td style="white-space: nowrap; text-align: right">320.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±779.71%</td>
    <td style="white-space: nowrap; text-align: right">224 ns</td>
    <td style="white-space: nowrap; text-align: right">427 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">413.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±849.75%</td>
    <td style="white-space: nowrap; text-align: right">208 ns</td>
    <td style="white-space: nowrap; text-align: right">297.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">415.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±834.26%</td>
    <td style="white-space: nowrap; text-align: right">211 ns</td>
    <td style="white-space: nowrap; text-align: right">291 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.31 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.12 M</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

</table>



<hr/>


__Input: 0000040__

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
    <td style="white-space: nowrap; text-align: right">3.78 M</td>
    <td style="white-space: nowrap; text-align: right">264.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±561.77%</td>
    <td style="white-space: nowrap; text-align: right">227 ns</td>
    <td style="white-space: nowrap; text-align: right">315 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.73 M</td>
    <td style="white-space: nowrap; text-align: right">268.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±514.83%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">325 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±518.53%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">575.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.04 M</td>
    <td style="white-space: nowrap; text-align: right">329.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±736.56%</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
    <td style="white-space: nowrap; text-align: right">467.91 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.78 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.04 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

</table>



<hr/>


__Input: 0000050__

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
    <td style="white-space: nowrap; text-align: right">4.07 M</td>
    <td style="white-space: nowrap; text-align: right">245.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±535.07%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 M</td>
    <td style="white-space: nowrap; text-align: right">249.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±611.83%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">304 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">399.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±552.94%</td>
    <td style="white-space: nowrap; text-align: right">304 ns</td>
    <td style="white-space: nowrap; text-align: right">701.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">422.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±730.18%</td>
    <td style="white-space: nowrap; text-align: right">272 ns</td>
    <td style="white-space: nowrap; text-align: right">573.06 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>

</table>



<hr/>


__Input: 0000060__

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
    <td style="white-space: nowrap; text-align: right">4.08 M</td>
    <td style="white-space: nowrap; text-align: right">245.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±586.84%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">303 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 M</td>
    <td style="white-space: nowrap; text-align: right">249.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±608.87%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.87 M</td>
    <td style="white-space: nowrap; text-align: right">348.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±801.42%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">480.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.16 M</td>
    <td style="white-space: nowrap; text-align: right">463.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±483.98%</td>
    <td style="white-space: nowrap; text-align: right">349 ns</td>
    <td style="white-space: nowrap; text-align: right">857 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.08 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.16 M</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

</table>



<hr/>


__Input: 0000070__

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
    <td style="white-space: nowrap; text-align: right">3.91 M</td>
    <td style="white-space: nowrap; text-align: right">255.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±561.30%</td>
    <td style="white-space: nowrap; text-align: right">211 ns</td>
    <td style="white-space: nowrap; text-align: right">329 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.85 M</td>
    <td style="white-space: nowrap; text-align: right">259.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±602.40%</td>
    <td style="white-space: nowrap; text-align: right">211 ns</td>
    <td style="white-space: nowrap; text-align: right">328.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">386.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±754.12%</td>
    <td style="white-space: nowrap; text-align: right">266 ns</td>
    <td style="white-space: nowrap; text-align: right">535.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.98 M</td>
    <td style="white-space: nowrap; text-align: right">505.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±476.60%</td>
    <td style="white-space: nowrap; text-align: right">394 ns</td>
    <td style="white-space: nowrap; text-align: right">908 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.91 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.98 M</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

</table>



<hr/>


__Input: 0000080__

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
    <td style="white-space: nowrap; text-align: right">3.84 M</td>
    <td style="white-space: nowrap; text-align: right">260.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±597.62%</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
    <td style="white-space: nowrap; text-align: right">324 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.72 M</td>
    <td style="white-space: nowrap; text-align: right">268.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±638.17%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">336.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.47 M</td>
    <td style="white-space: nowrap; text-align: right">405.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±756.43%</td>
    <td style="white-space: nowrap; text-align: right">273 ns</td>
    <td style="white-space: nowrap; text-align: right">502.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">581.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±456.18%</td>
    <td style="white-space: nowrap; text-align: right">454 ns</td>
    <td style="white-space: nowrap; text-align: right">1015.32 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.84 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.72 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
  </tr>

</table>



<hr/>


__Input: 0000090__

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
    <td style="white-space: nowrap; text-align: right">3.84 M</td>
    <td style="white-space: nowrap; text-align: right">260.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±572.74%</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
    <td style="white-space: nowrap; text-align: right">328 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 M</td>
    <td style="white-space: nowrap; text-align: right">263.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±626.98%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">337.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±492.16%</td>
    <td style="white-space: nowrap; text-align: right">268 ns</td>
    <td style="white-space: nowrap; text-align: right">361 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">620.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±462.34%</td>
    <td style="white-space: nowrap; text-align: right">496.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1076 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.84 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
  </tr>

</table>



<hr/>


__Input: 0000100__

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
    <td style="white-space: nowrap; text-align: right">3.88 M</td>
    <td style="white-space: nowrap; text-align: right">257.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±543.54%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">335.37 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.82 M</td>
    <td style="white-space: nowrap; text-align: right">262.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±551.43%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">334.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">421.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±864.18%</td>
    <td style="white-space: nowrap; text-align: right">271 ns</td>
    <td style="white-space: nowrap; text-align: right">408.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">641.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±375.44%</td>
    <td style="white-space: nowrap; text-align: right">554 ns</td>
    <td style="white-space: nowrap; text-align: right">1155 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.88 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.82 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">2.49x</td>
  </tr>

</table>



<hr/>


__Input: 0000200__

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
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">282.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±535.47%</td>
    <td style="white-space: nowrap; text-align: right">240 ns</td>
    <td style="white-space: nowrap; text-align: right">383.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">282.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±520.56%</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
    <td style="white-space: nowrap; text-align: right">353 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">384.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±761.81%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">373.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.96 M</td>
    <td style="white-space: nowrap; text-align: right">1044.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±319.15%</td>
    <td style="white-space: nowrap; text-align: right">874 ns</td>
    <td style="white-space: nowrap; text-align: right">1780 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.54 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.96 M</td>
    <td style="white-space: nowrap; text-align: right">3.7x</td>
  </tr>

</table>



<hr/>


__Input: 0000300__

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
    <td style="white-space: nowrap; text-align: right">3.47 M</td>
    <td style="white-space: nowrap; text-align: right">288.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±564.46%</td>
    <td style="white-space: nowrap; text-align: right">245 ns</td>
    <td style="white-space: nowrap; text-align: right">368 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 M</td>
    <td style="white-space: nowrap; text-align: right">298.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±533.32%</td>
    <td style="white-space: nowrap; text-align: right">247 ns</td>
    <td style="white-space: nowrap; text-align: right">408 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">413.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±704.79%</td>
    <td style="white-space: nowrap; text-align: right">297 ns</td>
    <td style="white-space: nowrap; text-align: right">412.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.72 M</td>
    <td style="white-space: nowrap; text-align: right">1387.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±276.64%</td>
    <td style="white-space: nowrap; text-align: right">1126 ns</td>
    <td style="white-space: nowrap; text-align: right">2592.39 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.42 M</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.72 M</td>
    <td style="white-space: nowrap; text-align: right">4.81x</td>
  </tr>

</table>



<hr/>


__Input: 0000400__

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
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">296.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±554.46%</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
    <td style="white-space: nowrap; text-align: right">372.37 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.22 M</td>
    <td style="white-space: nowrap; text-align: right">310.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±570.93%</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
    <td style="white-space: nowrap; text-align: right">461.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">376.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±677.82%</td>
    <td style="white-space: nowrap; text-align: right">303 ns</td>
    <td style="white-space: nowrap; text-align: right">390.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.56 M</td>
    <td style="white-space: nowrap; text-align: right">1774.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±247.70%</td>
    <td style="white-space: nowrap; text-align: right">1416 ns</td>
    <td style="white-space: nowrap; text-align: right">9634.60 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.22 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.56 M</td>
    <td style="white-space: nowrap; text-align: right">5.99x</td>
  </tr>

</table>



<hr/>


__Input: 0000500__

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
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">304.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±511.65%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">566 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±545.25%</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
    <td style="white-space: nowrap; text-align: right">605.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.21 M</td>
    <td style="white-space: nowrap; text-align: right">451.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±761.09%</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
    <td style="white-space: nowrap; text-align: right">555.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 M</td>
    <td style="white-space: nowrap; text-align: right">2140.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±238.66%</td>
    <td style="white-space: nowrap; text-align: right">1684 ns</td>
    <td style="white-space: nowrap; text-align: right">15162.60 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.28 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 M</td>
    <td style="white-space: nowrap; text-align: right">7.02x</td>
  </tr>

</table>



<hr/>


__Input: 0000600__

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
    <td style="white-space: nowrap; text-align: right">3.23 M</td>
    <td style="white-space: nowrap; text-align: right">309.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±495.01%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">593 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±588.70%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">559 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.43 M</td>
    <td style="white-space: nowrap; text-align: right">412.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±658.43%</td>
    <td style="white-space: nowrap; text-align: right">300 ns</td>
    <td style="white-space: nowrap; text-align: right">425.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.41 M</td>
    <td style="white-space: nowrap; text-align: right">2465.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±216.85%</td>
    <td style="white-space: nowrap; text-align: right">1956 ns</td>
    <td style="white-space: nowrap; text-align: right">19545.59 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.23 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.43 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.41 M</td>
    <td style="white-space: nowrap; text-align: right">7.97x</td>
  </tr>

</table>



<hr/>


__Input: 0000700__

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
    <td style="white-space: nowrap; text-align: right">3.45 M</td>
    <td style="white-space: nowrap; text-align: right">289.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±249.66%</td>
    <td style="white-space: nowrap; text-align: right">266 ns</td>
    <td style="white-space: nowrap; text-align: right">567.77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">323.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±565.41%</td>
    <td style="white-space: nowrap; text-align: right">263 ns</td>
    <td style="white-space: nowrap; text-align: right">610.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">488.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±739.83%</td>
    <td style="white-space: nowrap; text-align: right">302 ns</td>
    <td style="white-space: nowrap; text-align: right">461.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.35 M</td>
    <td style="white-space: nowrap; text-align: right">2841.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±201.99%</td>
    <td style="white-space: nowrap; text-align: right">2241 ns</td>
    <td style="white-space: nowrap; text-align: right">24575.52 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.45 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.35 M</td>
    <td style="white-space: nowrap; text-align: right">9.81x</td>
  </tr>

</table>



<hr/>


__Input: 0000800__

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
    <td style="white-space: nowrap; text-align: right">3.04 M</td>
    <td style="white-space: nowrap; text-align: right">329.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±555.97%</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
    <td style="white-space: nowrap; text-align: right">588.61 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">333.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±583.45%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">628 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">479.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±741.74%</td>
    <td style="white-space: nowrap; text-align: right">300 ns</td>
    <td style="white-space: nowrap; text-align: right">497.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">3223.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±197.94%</td>
    <td style="white-space: nowrap; text-align: right">2559 ns</td>
    <td style="white-space: nowrap; text-align: right">25103.60 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.04 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">9.78x</td>
  </tr>

</table>



<hr/>


__Input: 0000900__

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
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">322.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±514.16%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">618.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">327.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.89%</td>
    <td style="white-space: nowrap; text-align: right">268 ns</td>
    <td style="white-space: nowrap; text-align: right">610.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.49 M</td>
    <td style="white-space: nowrap; text-align: right">402.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±573.69%</td>
    <td style="white-space: nowrap; text-align: right">304 ns</td>
    <td style="white-space: nowrap; text-align: right">403.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.27 M</td>
    <td style="white-space: nowrap; text-align: right">3659.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±187.29%</td>
    <td style="white-space: nowrap; text-align: right">2906 ns</td>
    <td style="white-space: nowrap; text-align: right">36501.52 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.49 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.27 M</td>
    <td style="white-space: nowrap; text-align: right">11.36x</td>
  </tr>

</table>



<hr/>


__Input: 0001000__

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
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">311.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±572.36%</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
    <td style="white-space: nowrap; text-align: right">602 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">315.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.45%</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
    <td style="white-space: nowrap; text-align: right">597 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">472.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±743.33%</td>
    <td style="white-space: nowrap; text-align: right">299 ns</td>
    <td style="white-space: nowrap; text-align: right">434 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">4034.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±178.72%</td>
    <td style="white-space: nowrap; text-align: right">3162 ns</td>
    <td style="white-space: nowrap; text-align: right">38841.71 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.21 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">12.95x</td>
  </tr>

</table>



<hr/>


__Input: 0002000__

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
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">327.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±499.72%</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
    <td style="white-space: nowrap; text-align: right">630.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">336.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.86%</td>
    <td style="white-space: nowrap; text-align: right">272 ns</td>
    <td style="white-space: nowrap; text-align: right">635.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">400.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±528.03%</td>
    <td style="white-space: nowrap; text-align: right">305 ns</td>
    <td style="white-space: nowrap; text-align: right">401 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.131 M</td>
    <td style="white-space: nowrap; text-align: right">7621.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±143.55%</td>
    <td style="white-space: nowrap; text-align: right">6023 ns</td>
    <td style="white-space: nowrap; text-align: right">63772.44 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.06 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.131 M</td>
    <td style="white-space: nowrap; text-align: right">23.28x</td>
  </tr>

</table>



<hr/>


__Input: 0003000__

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
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">374.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±602.53%</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
    <td style="white-space: nowrap; text-align: right">667 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.58 M</td>
    <td style="white-space: nowrap; text-align: right">387.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±773.77%</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
    <td style="white-space: nowrap; text-align: right">658.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">493.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±732.05%</td>
    <td style="white-space: nowrap; text-align: right">299 ns</td>
    <td style="white-space: nowrap; text-align: right">607.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0876 M</td>
    <td style="white-space: nowrap; text-align: right">11421.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±121.29%</td>
    <td style="white-space: nowrap; text-align: right">8893.50 ns</td>
    <td style="white-space: nowrap; text-align: right">93815.88 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.67 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0876 M</td>
    <td style="white-space: nowrap; text-align: right">30.51x</td>
  </tr>

</table>



<hr/>


__Input: 0004000__

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
    <td style="white-space: nowrap; text-align: right">2.56 M</td>
    <td style="white-space: nowrap; text-align: right">391.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±569.12%</td>
    <td style="white-space: nowrap; text-align: right">307 ns</td>
    <td style="white-space: nowrap; text-align: right">694 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">415.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±720.27%</td>
    <td style="white-space: nowrap; text-align: right">303 ns</td>
    <td style="white-space: nowrap; text-align: right">666 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">501.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±712.19%</td>
    <td style="white-space: nowrap; text-align: right">305 ns</td>
    <td style="white-space: nowrap; text-align: right">608.19 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0654 M</td>
    <td style="white-space: nowrap; text-align: right">15282.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±110.59%</td>
    <td style="white-space: nowrap; text-align: right">11919 ns</td>
    <td style="white-space: nowrap; text-align: right">99851.80 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.56 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0654 M</td>
    <td style="white-space: nowrap; text-align: right">39.08x</td>
  </tr>

</table>



<hr/>


__Input: 0005000__

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
    <td style="white-space: nowrap; text-align: right">2.61 M</td>
    <td style="white-space: nowrap; text-align: right">383.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.37%</td>
    <td style="white-space: nowrap; text-align: right">315 ns</td>
    <td style="white-space: nowrap; text-align: right">709 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">422.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±842.52%</td>
    <td style="white-space: nowrap; text-align: right">310 ns</td>
    <td style="white-space: nowrap; text-align: right">661.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">529.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±679.91%</td>
    <td style="white-space: nowrap; text-align: right">331 ns</td>
    <td style="white-space: nowrap; text-align: right">645 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0524 M</td>
    <td style="white-space: nowrap; text-align: right">19075.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±102.21%</td>
    <td style="white-space: nowrap; text-align: right">15199 ns</td>
    <td style="white-space: nowrap; text-align: right">105417.24 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.61 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0524 M</td>
    <td style="white-space: nowrap; text-align: right">49.7x</td>
  </tr>

</table>



<hr/>


__Input: 0006000__

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
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">417.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±702.51%</td>
    <td style="white-space: nowrap; text-align: right">308 ns</td>
    <td style="white-space: nowrap; text-align: right">733 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">438.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±784.99%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">683 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">538.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±664.80%</td>
    <td style="white-space: nowrap; text-align: right">329 ns</td>
    <td style="white-space: nowrap; text-align: right">680 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0440 M</td>
    <td style="white-space: nowrap; text-align: right">22712.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±98.11%</td>
    <td style="white-space: nowrap; text-align: right">18405.50 ns</td>
    <td style="white-space: nowrap; text-align: right">111328.50 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.39 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0440 M</td>
    <td style="white-space: nowrap; text-align: right">54.37x</td>
  </tr>

</table>



<hr/>


__Input: 0007000__

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
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">447.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±713.44%</td>
    <td style="white-space: nowrap; text-align: right">324 ns</td>
    <td style="white-space: nowrap; text-align: right">785.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">456.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±809.94%</td>
    <td style="white-space: nowrap; text-align: right">320 ns</td>
    <td style="white-space: nowrap; text-align: right">705 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">553.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±724.58%</td>
    <td style="white-space: nowrap; text-align: right">330 ns</td>
    <td style="white-space: nowrap; text-align: right">684 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0379 M</td>
    <td style="white-space: nowrap; text-align: right">26410.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±96.30%</td>
    <td style="white-space: nowrap; text-align: right">20959.50 ns</td>
    <td style="white-space: nowrap; text-align: right">118064.51 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.23 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0379 M</td>
    <td style="white-space: nowrap; text-align: right">58.99x</td>
  </tr>

</table>



<hr/>


__Input: 0008000__

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
    <td style="white-space: nowrap; text-align: right">431.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±765.04%</td>
    <td style="white-space: nowrap; text-align: right">325 ns</td>
    <td style="white-space: nowrap; text-align: right">798.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.29 M</td>
    <td style="white-space: nowrap; text-align: right">435.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±840.39%</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
    <td style="white-space: nowrap; text-align: right">692.36 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.83 M</td>
    <td style="white-space: nowrap; text-align: right">547.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±665.35%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">682 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0336 M</td>
    <td style="white-space: nowrap; text-align: right">29738.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±92.24%</td>
    <td style="white-space: nowrap; text-align: right">23607 ns</td>
    <td style="white-space: nowrap; text-align: right">122734.40 ns</td>
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
    <td style="white-space: nowrap; text-align: right">2.29 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.83 M</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0336 M</td>
    <td style="white-space: nowrap; text-align: right">68.92x</td>
  </tr>

</table>



<hr/>


__Input: 0009000__

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
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">426.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±754.44%</td>
    <td style="white-space: nowrap; text-align: right">316 ns</td>
    <td style="white-space: nowrap; text-align: right">699.05 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.25 M</td>
    <td style="white-space: nowrap; text-align: right">443.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±820.09%</td>
    <td style="white-space: nowrap; text-align: right">325 ns</td>
    <td style="white-space: nowrap; text-align: right">700.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.87 M</td>
    <td style="white-space: nowrap; text-align: right">534.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±687.42%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">664 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0301 M</td>
    <td style="white-space: nowrap; text-align: right">33194.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±88.94%</td>
    <td style="white-space: nowrap; text-align: right">27073 ns</td>
    <td style="white-space: nowrap; text-align: right">129931.42 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.34 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.25 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0301 M</td>
    <td style="white-space: nowrap; text-align: right">77.79x</td>
  </tr>

</table>



<hr/>


__Input: 0010000__

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
    <td style="white-space: nowrap; text-align: right">2.31 M</td>
    <td style="white-space: nowrap; text-align: right">433.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±701.97%</td>
    <td style="white-space: nowrap; text-align: right">332 ns</td>
    <td style="white-space: nowrap; text-align: right">706.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">472.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±867.34%</td>
    <td style="white-space: nowrap; text-align: right">327 ns</td>
    <td style="white-space: nowrap; text-align: right">702.70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">495.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±693.06%</td>
    <td style="white-space: nowrap; text-align: right">330 ns</td>
    <td style="white-space: nowrap; text-align: right">650.17 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0268 M</td>
    <td style="white-space: nowrap; text-align: right">37271.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±89.81%</td>
    <td style="white-space: nowrap; text-align: right">30327 ns</td>
    <td style="white-space: nowrap; text-align: right">153549.30 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.31 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0268 M</td>
    <td style="white-space: nowrap; text-align: right">86.05x</td>
  </tr>

</table>



<hr/>


__Input: 0020000__

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
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">400.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±76.58%</td>
    <td style="white-space: nowrap; text-align: right">338 ns</td>
    <td style="white-space: nowrap; text-align: right">671 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.33 M</td>
    <td style="white-space: nowrap; text-align: right">430.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±104.14%</td>
    <td style="white-space: nowrap; text-align: right">364 ns</td>
    <td style="white-space: nowrap; text-align: right">677 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">516.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±670.57%</td>
    <td style="white-space: nowrap; text-align: right">332 ns</td>
    <td style="white-space: nowrap; text-align: right">668 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0121 M</td>
    <td style="white-space: nowrap; text-align: right">82817.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±85.47%</td>
    <td style="white-space: nowrap; text-align: right">60507.50 ns</td>
    <td style="white-space: nowrap; text-align: right">243185.17 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.50 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.33 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0121 M</td>
    <td style="white-space: nowrap; text-align: right">206.91x</td>
  </tr>

</table>



<hr/>


__Input: 0030000__

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
    <td style="white-space: nowrap; text-align: right">431.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±42.08%</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
    <td style="white-space: nowrap; text-align: right">715 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">438.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±93.39%</td>
    <td style="white-space: nowrap; text-align: right">359 ns</td>
    <td style="white-space: nowrap; text-align: right">707 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.10 M</td>
    <td style="white-space: nowrap; text-align: right">476.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±715.07%</td>
    <td style="white-space: nowrap; text-align: right">336 ns</td>
    <td style="white-space: nowrap; text-align: right">613 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00765 M</td>
    <td style="white-space: nowrap; text-align: right">130650.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±94.00%</td>
    <td style="white-space: nowrap; text-align: right">96619.50 ns</td>
    <td style="white-space: nowrap; text-align: right">557902.03 ns</td>
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
    <td style="white-space: nowrap; text-align: right">2.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.10 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00765 M</td>
    <td style="white-space: nowrap; text-align: right">303.14x</td>
  </tr>

</table>



<hr/>


__Input: 0040000__

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
    <td style="white-space: nowrap; text-align: right">1782.85 K</td>
    <td style="white-space: nowrap; text-align: right">0.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±936.67%</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">0.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">902.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±139.47%</td>
    <td style="white-space: nowrap; text-align: right">0.83 μs</td>
    <td style="white-space: nowrap; text-align: right">14.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">877.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±146.61%</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">14.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">4.99 K</td>
    <td style="white-space: nowrap; text-align: right">200.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.68%</td>
    <td style="white-space: nowrap; text-align: right">157.00 μs</td>
    <td style="white-space: nowrap; text-align: right">592.91 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1782.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">902.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">877.11 K</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">4.99 K</td>
    <td style="white-space: nowrap; text-align: right">357.33x</td>
  </tr>

</table>



<hr/>


__Input: 0050000__

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
    <td style="white-space: nowrap; text-align: right">1730.18 K</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±935.97%</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">413.63 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.35%</td>
    <td style="white-space: nowrap; text-align: right">1.69 μs</td>
    <td style="white-space: nowrap; text-align: right">15.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">413.50 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±111.79%</td>
    <td style="white-space: nowrap; text-align: right">1.97 μs</td>
    <td style="white-space: nowrap; text-align: right">15.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.73 K</td>
    <td style="white-space: nowrap; text-align: right">267.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±105.21%</td>
    <td style="white-space: nowrap; text-align: right">193.71 μs</td>
    <td style="white-space: nowrap; text-align: right">1207.71 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1730.18 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">413.63 K</td>
    <td style="white-space: nowrap; text-align: right">4.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">413.50 K</td>
    <td style="white-space: nowrap; text-align: right">4.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.73 K</td>
    <td style="white-space: nowrap; text-align: right">463.39x</td>
  </tr>

</table>



<hr/>


__Input: 0060000__

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
    <td style="white-space: nowrap; text-align: right">1683.38 K</td>
    <td style="white-space: nowrap; text-align: right">0.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±932.87%</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">389.76 K</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.34%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">15.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">369.94 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.77%</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
    <td style="white-space: nowrap; text-align: right">15.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.29 K</td>
    <td style="white-space: nowrap; text-align: right">303.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±87.73%</td>
    <td style="white-space: nowrap; text-align: right">202.03 μs</td>
    <td style="white-space: nowrap; text-align: right">937.55 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1683.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">389.76 K</td>
    <td style="white-space: nowrap; text-align: right">4.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">369.94 K</td>
    <td style="white-space: nowrap; text-align: right">4.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.29 K</td>
    <td style="white-space: nowrap; text-align: right">511.65x</td>
  </tr>

</table>



<hr/>


__Input: 0070000__

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
    <td style="white-space: nowrap; text-align: right">2699.67 K</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.08%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">0.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">357.62 K</td>
    <td style="white-space: nowrap; text-align: right">2.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.15%</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">15.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">348.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±185.37%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">15.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.99 K</td>
    <td style="white-space: nowrap; text-align: right">333.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.62%</td>
    <td style="white-space: nowrap; text-align: right">278.16 μs</td>
    <td style="white-space: nowrap; text-align: right">891.09 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2699.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">357.62 K</td>
    <td style="white-space: nowrap; text-align: right">7.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">348.44 K</td>
    <td style="white-space: nowrap; text-align: right">7.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.99 K</td>
    <td style="white-space: nowrap; text-align: right">901.61x</td>
  </tr>

</table>



<hr/>


__Input: 0080000__

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
    <td style="white-space: nowrap; text-align: right">2692.85 K</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.99%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">0.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">341.68 K</td>
    <td style="white-space: nowrap; text-align: right">2.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.86%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">16.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">311.00 K</td>
    <td style="white-space: nowrap; text-align: right">3.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±183.30%</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">17.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.48 K</td>
    <td style="white-space: nowrap; text-align: right">403.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.44%</td>
    <td style="white-space: nowrap; text-align: right">323.00 μs</td>
    <td style="white-space: nowrap; text-align: right">2067.97 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2692.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">341.68 K</td>
    <td style="white-space: nowrap; text-align: right">7.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">311.00 K</td>
    <td style="white-space: nowrap; text-align: right">8.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.48 K</td>
    <td style="white-space: nowrap; text-align: right">1085.49x</td>
  </tr>

</table>



<hr/>


__Input: 0090000__

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
    <td style="white-space: nowrap; text-align: right">1107.02 K</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±1115.80%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">332.51 K</td>
    <td style="white-space: nowrap; text-align: right">3.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.57%</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">16.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">316.20 K</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±194.28%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">16.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.54 K</td>
    <td style="white-space: nowrap; text-align: right">649.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.95%</td>
    <td style="white-space: nowrap; text-align: right">371.35 μs</td>
    <td style="white-space: nowrap; text-align: right">2460.15 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1107.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">332.51 K</td>
    <td style="white-space: nowrap; text-align: right">3.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">316.20 K</td>
    <td style="white-space: nowrap; text-align: right">3.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.54 K</td>
    <td style="white-space: nowrap; text-align: right">718.67x</td>
  </tr>

</table>



<hr/>


__Input: 0100000__

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
    <td style="white-space: nowrap; text-align: right">1076.45 K</td>
    <td style="white-space: nowrap; text-align: right">0.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±1083.08%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">0.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">298.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.48%</td>
    <td style="white-space: nowrap; text-align: right">2.54 μs</td>
    <td style="white-space: nowrap; text-align: right">19.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">298.59 K</td>
    <td style="white-space: nowrap; text-align: right">3.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.91%</td>
    <td style="white-space: nowrap; text-align: right">2.75 μs</td>
    <td style="white-space: nowrap; text-align: right">18.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.65 K</td>
    <td style="white-space: nowrap; text-align: right">606.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.14%</td>
    <td style="white-space: nowrap; text-align: right">378.17 μs</td>
    <td style="white-space: nowrap; text-align: right">1748.33 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1076.45 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">298.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">298.59 K</td>
    <td style="white-space: nowrap; text-align: right">3.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.65 K</td>
    <td style="white-space: nowrap; text-align: right">653.23x</td>
  </tr>

</table>



<hr/>


__Input: 0200000__

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
    <td style="white-space: nowrap; text-align: right">2179.56 K</td>
    <td style="white-space: nowrap; text-align: right">0.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±103.17%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">1.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">226.61 K</td>
    <td style="white-space: nowrap; text-align: right">4.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.81%</td>
    <td style="white-space: nowrap; text-align: right">3.63 μs</td>
    <td style="white-space: nowrap; text-align: right">19.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.59 K</td>
    <td style="white-space: nowrap; text-align: right">4.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.29%</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">18.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.94 K</td>
    <td style="white-space: nowrap; text-align: right">1063.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.58%</td>
    <td style="white-space: nowrap; text-align: right">965.97 μs</td>
    <td style="white-space: nowrap; text-align: right">2981.55 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2179.56 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">226.61 K</td>
    <td style="white-space: nowrap; text-align: right">9.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.59 K</td>
    <td style="white-space: nowrap; text-align: right">9.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.94 K</td>
    <td style="white-space: nowrap; text-align: right">2317.52x</td>
  </tr>

</table>



<hr/>


__Input: 0300000__

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
    <td style="white-space: nowrap; text-align: right">658.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±162.94%</td>
    <td style="white-space: nowrap; text-align: right">0.99 μs</td>
    <td style="white-space: nowrap; text-align: right">14.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">257.72 K</td>
    <td style="white-space: nowrap; text-align: right">3.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.90%</td>
    <td style="white-space: nowrap; text-align: right">2.97 μs</td>
    <td style="white-space: nowrap; text-align: right">17.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">238.54 K</td>
    <td style="white-space: nowrap; text-align: right">4.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.01%</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
    <td style="white-space: nowrap; text-align: right">17.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">2275.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.10%</td>
    <td style="white-space: nowrap; text-align: right">1509.39 μs</td>
    <td style="white-space: nowrap; text-align: right">5875.92 μs</td>
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
    <td style="white-space: nowrap;text-align: right">658.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">257.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">238.54 K</td>
    <td style="white-space: nowrap; text-align: right">2.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">1499.49x</td>
  </tr>

</table>



<hr/>


__Input: 0400000__

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
    <td style="white-space: nowrap; text-align: right">500.60 K</td>
    <td style="white-space: nowrap; text-align: right">2.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.30%</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">6.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">273.87 K</td>
    <td style="white-space: nowrap; text-align: right">3.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.59%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">16.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">250.49 K</td>
    <td style="white-space: nowrap; text-align: right">3.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.77%</td>
    <td style="white-space: nowrap; text-align: right">2.96 μs</td>
    <td style="white-space: nowrap; text-align: right">17.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.29 K</td>
    <td style="white-space: nowrap; text-align: right">3471.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.68%</td>
    <td style="white-space: nowrap; text-align: right">2435.06 μs</td>
    <td style="white-space: nowrap; text-align: right">12080.67 μs</td>
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
    <td style="white-space: nowrap;text-align: right">500.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">273.87 K</td>
    <td style="white-space: nowrap; text-align: right">1.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">250.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.29 K</td>
    <td style="white-space: nowrap; text-align: right">1738.03x</td>
  </tr>

</table>



<hr/>


__Input: 0500000__

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
    <td style="white-space: nowrap; text-align: right">460.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±52.30%</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
    <td style="white-space: nowrap; text-align: right">5.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">277.72 K</td>
    <td style="white-space: nowrap; text-align: right">3.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.90%</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">17.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">275.05 K</td>
    <td style="white-space: nowrap; text-align: right">3.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.07%</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">17.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">3873.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.94%</td>
    <td style="white-space: nowrap; text-align: right">2442.14 μs</td>
    <td style="white-space: nowrap; text-align: right">16174.04 μs</td>
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
    <td style="white-space: nowrap;text-align: right">460.08 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">277.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">275.05 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">1782.28x</td>
  </tr>

</table>



<hr/>


__Input: 0600000__

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
    <td style="white-space: nowrap; text-align: right">416.71 K</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±169.44%</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">6.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">283.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.55%</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
    <td style="white-space: nowrap; text-align: right">17.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">264.43 K</td>
    <td style="white-space: nowrap; text-align: right">3.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.21%</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">18.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.171 K</td>
    <td style="white-space: nowrap; text-align: right">5841.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.69%</td>
    <td style="white-space: nowrap; text-align: right">4349.25 μs</td>
    <td style="white-space: nowrap; text-align: right">24033.57 μs</td>
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
    <td style="white-space: nowrap;text-align: right">416.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">283.71 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">264.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.171 K</td>
    <td style="white-space: nowrap; text-align: right">2434.03x</td>
  </tr>

</table>



<hr/>


__Input: 0700000__

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
    <td style="white-space: nowrap; text-align: right">412.65 K</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.24%</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">3.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">295.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.55%</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">16.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.10 K</td>
    <td style="white-space: nowrap; text-align: right">4.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.47%</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">21.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.141 K</td>
    <td style="white-space: nowrap; text-align: right">7081.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.64%</td>
    <td style="white-space: nowrap; text-align: right">4574.81 μs</td>
    <td style="white-space: nowrap; text-align: right">37704.45 μs</td>
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
    <td style="white-space: nowrap;text-align: right">412.65 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">295.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.141 K</td>
    <td style="white-space: nowrap; text-align: right">2922.2x</td>
  </tr>

</table>



<hr/>


__Input: 0800000__

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
    <td style="white-space: nowrap; text-align: right">391.70 K</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±194.13%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">8.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">258.18 K</td>
    <td style="white-space: nowrap; text-align: right">3.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.86%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">19.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">253.35 K</td>
    <td style="white-space: nowrap; text-align: right">3.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.47%</td>
    <td style="white-space: nowrap; text-align: right">3.14 μs</td>
    <td style="white-space: nowrap; text-align: right">20.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.112 K</td>
    <td style="white-space: nowrap; text-align: right">8957.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±87.37%</td>
    <td style="white-space: nowrap; text-align: right">6670.59 μs</td>
    <td style="white-space: nowrap; text-align: right">44179.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">391.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">258.18 K</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">253.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.112 K</td>
    <td style="white-space: nowrap; text-align: right">3508.74x</td>
  </tr>

</table>



<hr/>


__Input: 0900000__

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
    <td style="white-space: nowrap; text-align: right">381.47 K</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±190.70%</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">9.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">281.72 K</td>
    <td style="white-space: nowrap; text-align: right">3.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.09%</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">21.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">223.82 K</td>
    <td style="white-space: nowrap; text-align: right">4.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.13%</td>
    <td style="white-space: nowrap; text-align: right">3.10 μs</td>
    <td style="white-space: nowrap; text-align: right">39.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.107 K</td>
    <td style="white-space: nowrap; text-align: right">9317.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.38%</td>
    <td style="white-space: nowrap; text-align: right">7348.24 μs</td>
    <td style="white-space: nowrap; text-align: right">55927.10 μs</td>
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
    <td style="white-space: nowrap;text-align: right">381.47 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">281.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">223.82 K</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.107 K</td>
    <td style="white-space: nowrap; text-align: right">3554.34x</td>
  </tr>

</table>



<hr/>


__Input: 1000000__

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
    <td style="white-space: nowrap; text-align: right">372.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±207.91%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">7.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">251.59 K</td>
    <td style="white-space: nowrap; text-align: right">3.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.67%</td>
    <td style="white-space: nowrap; text-align: right">3.34 μs</td>
    <td style="white-space: nowrap; text-align: right">17.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">243.23 K</td>
    <td style="white-space: nowrap; text-align: right">4.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.72%</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
    <td style="white-space: nowrap; text-align: right">17.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0925 K</td>
    <td style="white-space: nowrap; text-align: right">10808.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.74%</td>
    <td style="white-space: nowrap; text-align: right">9107.79 μs</td>
    <td style="white-space: nowrap; text-align: right">61831.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">372.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">251.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">243.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0925 K</td>
    <td style="white-space: nowrap; text-align: right">4031.14x</td>
  </tr>

</table>



<hr/>

