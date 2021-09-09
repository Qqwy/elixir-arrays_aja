
# Benchmark

Compares random element access (for reading).

For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

For lists, `Enum.fetch(list, index)` is used.


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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.40 M</td>
    <td style="white-space: nowrap; text-align: right">185.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±593.98%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">260.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.89 M</td>
    <td style="white-space: nowrap; text-align: right">204.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±511.18%</td>
    <td style="white-space: nowrap; text-align: right">159 ns</td>
    <td style="white-space: nowrap; text-align: right">510.55 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">221.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±510.35%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">698.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.41 M</td>
    <td style="white-space: nowrap; text-align: right">226.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±609.29%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">525.62 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">5.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.89 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.46 M</td>
    <td style="white-space: nowrap; text-align: right">224.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±553.43%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">452.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.27 M</td>
    <td style="white-space: nowrap; text-align: right">234.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±458.40%</td>
    <td style="white-space: nowrap; text-align: right">186 ns</td>
    <td style="white-space: nowrap; text-align: right">487.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">289.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±445.54%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">624 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27 M</td>
    <td style="white-space: nowrap; text-align: right">305.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±460.75%</td>
    <td style="white-space: nowrap; text-align: right">238 ns</td>
    <td style="white-space: nowrap; text-align: right">859 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.46 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.27 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">216.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±529.69%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">292.99 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.39 M</td>
    <td style="white-space: nowrap; text-align: right">294.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±452.24%</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
    <td style="white-space: nowrap; text-align: right">521 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.23 M</td>
    <td style="white-space: nowrap; text-align: right">309.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±445.88%</td>
    <td style="white-space: nowrap; text-align: right">244 ns</td>
    <td style="white-space: nowrap; text-align: right">823.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.99 M</td>
    <td style="white-space: nowrap; text-align: right">334.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±339.06%</td>
    <td style="white-space: nowrap; text-align: right">289 ns</td>
    <td style="white-space: nowrap; text-align: right">658 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.62 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.39 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.53 M</td>
    <td style="white-space: nowrap; text-align: right">220.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±521.05%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">335.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">311.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±444.78%</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
    <td style="white-space: nowrap; text-align: right">413 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.20 M</td>
    <td style="white-space: nowrap; text-align: right">312.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±476.19%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">701.45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">509.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±227.51%</td>
    <td style="white-space: nowrap; text-align: right">446 ns</td>
    <td style="white-space: nowrap; text-align: right">1057.74 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.53 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.20 M</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.11 M</td>
    <td style="white-space: nowrap; text-align: right">243.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±480.98%</td>
    <td style="white-space: nowrap; text-align: right">191 ns</td>
    <td style="white-space: nowrap; text-align: right">727 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±420.41%</td>
    <td style="white-space: nowrap; text-align: right">256 ns</td>
    <td style="white-space: nowrap; text-align: right">392 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.11 M</td>
    <td style="white-space: nowrap; text-align: right">321.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±566.75%</td>
    <td style="white-space: nowrap; text-align: right">263 ns</td>
    <td style="white-space: nowrap; text-align: right">483.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.12 M</td>
    <td style="white-space: nowrap; text-align: right">890.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±157.88%</td>
    <td style="white-space: nowrap; text-align: right">806 ns</td>
    <td style="white-space: nowrap; text-align: right">1853.39 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.11 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.12 M</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.04 M</td>
    <td style="white-space: nowrap; text-align: right">247.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±445.99%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">682.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.03 M</td>
    <td style="white-space: nowrap; text-align: right">329.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±472.78%</td>
    <td style="white-space: nowrap; text-align: right">265 ns</td>
    <td style="white-space: nowrap; text-align: right">455.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">330.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±464.43%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">432.37 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">1652.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±108.30%</td>
    <td style="white-space: nowrap; text-align: right">1524 ns</td>
    <td style="white-space: nowrap; text-align: right">3490.21 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.04 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">6.67x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.86 M</td>
    <td style="white-space: nowrap; text-align: right">259.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±506.86%</td>
    <td style="white-space: nowrap; text-align: right">196 ns</td>
    <td style="white-space: nowrap; text-align: right">619.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">316.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±393.56%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">442.57 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.95 M</td>
    <td style="white-space: nowrap; text-align: right">338.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±423.24%</td>
    <td style="white-space: nowrap; text-align: right">277 ns</td>
    <td style="white-space: nowrap; text-align: right">563.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">3235.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±94.29%</td>
    <td style="white-space: nowrap; text-align: right">2946 ns</td>
    <td style="white-space: nowrap; text-align: right">20229.34 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3.86 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.95 M</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">12.49x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.00 M</td>
    <td style="white-space: nowrap; text-align: right">250.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±524.43%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">417.75 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">333.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±524.71%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">486.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">354.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±479.98%</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
    <td style="white-space: nowrap; text-align: right">660.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.158 M</td>
    <td style="white-space: nowrap; text-align: right">6324.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±74.92%</td>
    <td style="white-space: nowrap; text-align: right">5916 ns</td>
    <td style="white-space: nowrap; text-align: right">26402.40 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">4.00 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.158 M</td>
    <td style="white-space: nowrap; text-align: right">25.29x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.49 M</td>
    <td style="white-space: nowrap; text-align: right">286.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±457.88%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">359 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.99 M</td>
    <td style="white-space: nowrap; text-align: right">334.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±88.96%</td>
    <td style="white-space: nowrap; text-align: right">311 ns</td>
    <td style="white-space: nowrap; text-align: right">871.73 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.77 M</td>
    <td style="white-space: nowrap; text-align: right">360.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±214.89%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">842.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0806 M</td>
    <td style="white-space: nowrap; text-align: right">12409.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±67.51%</td>
    <td style="white-space: nowrap; text-align: right">11939 ns</td>
    <td style="white-space: nowrap; text-align: right">42524.08 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3.49 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0806 M</td>
    <td style="white-space: nowrap; text-align: right">43.32x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.74 M</td>
    <td style="white-space: nowrap; text-align: right">267.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±418.88%</td>
    <td style="white-space: nowrap; text-align: right">220 ns</td>
    <td style="white-space: nowrap; text-align: right">555.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">380.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±179.76%</td>
    <td style="white-space: nowrap; text-align: right">340 ns</td>
    <td style="white-space: nowrap; text-align: right">603.00 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">396.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±178.03%</td>
    <td style="white-space: nowrap; text-align: right">350 ns</td>
    <td style="white-space: nowrap; text-align: right">952 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0398 M</td>
    <td style="white-space: nowrap; text-align: right">25155.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±64.64%</td>
    <td style="white-space: nowrap; text-align: right">24436 ns</td>
    <td style="white-space: nowrap; text-align: right">77776.88 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3.74 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0398 M</td>
    <td style="white-space: nowrap; text-align: right">94.07x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3366.10 K</td>
    <td style="white-space: nowrap; text-align: right">0.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±615.12%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">0.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">565.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±1676.85%</td>
    <td style="white-space: nowrap; text-align: right">0.34 μs</td>
    <td style="white-space: nowrap; text-align: right">0.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">523.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±1666.94%</td>
    <td style="white-space: nowrap; text-align: right">0.35 μs</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">20.94 K</td>
    <td style="white-space: nowrap; text-align: right">47.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±63.52%</td>
    <td style="white-space: nowrap; text-align: right">47.04 μs</td>
    <td style="white-space: nowrap; text-align: right">129.52 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3366.10 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">565.33 K</td>
    <td style="white-space: nowrap; text-align: right">5.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">523.99 K</td>
    <td style="white-space: nowrap; text-align: right">6.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">20.94 K</td>
    <td style="white-space: nowrap; text-align: right">160.77x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3268.79 K</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±1126.80%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">541.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.41%</td>
    <td style="white-space: nowrap; text-align: right">1.52 μs</td>
    <td style="white-space: nowrap; text-align: right">15.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">512.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.40%</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">15.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.17 K</td>
    <td style="white-space: nowrap; text-align: right">98.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.27%</td>
    <td style="white-space: nowrap; text-align: right">96.65 μs</td>
    <td style="white-space: nowrap; text-align: right">247.97 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3268.79 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">541.14 K</td>
    <td style="white-space: nowrap; text-align: right">6.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">512.72 K</td>
    <td style="white-space: nowrap; text-align: right">6.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.17 K</td>
    <td style="white-space: nowrap; text-align: right">321.45x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3191.90 K</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±143.58%</td>
    <td style="white-space: nowrap; text-align: right">0.25 μs</td>
    <td style="white-space: nowrap; text-align: right">1.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">361.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±68.21%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">17.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">337.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.56%</td>
    <td style="white-space: nowrap; text-align: right">2.73 μs</td>
    <td style="white-space: nowrap; text-align: right">9.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.99 K</td>
    <td style="white-space: nowrap; text-align: right">250.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.85%</td>
    <td style="white-space: nowrap; text-align: right">247.77 μs</td>
    <td style="white-space: nowrap; text-align: right">622.21 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">3191.90 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">361.10 K</td>
    <td style="white-space: nowrap; text-align: right">8.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">337.34 K</td>
    <td style="white-space: nowrap; text-align: right">9.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.99 K</td>
    <td style="white-space: nowrap; text-align: right">800.12x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1262.23 K</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±176.22%</td>
    <td style="white-space: nowrap; text-align: right">0.53 μs</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">339.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.41%</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">15.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">303.62 K</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.68%</td>
    <td style="white-space: nowrap; text-align: right">2.87 μs</td>
    <td style="white-space: nowrap; text-align: right">15.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.86 K</td>
    <td style="white-space: nowrap; text-align: right">536.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.12%</td>
    <td style="white-space: nowrap; text-align: right">546.00 μs</td>
    <td style="white-space: nowrap; text-align: right">1150.89 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">1262.23 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">339.30 K</td>
    <td style="white-space: nowrap; text-align: right">3.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">303.62 K</td>
    <td style="white-space: nowrap; text-align: right">4.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.86 K</td>
    <td style="white-space: nowrap; text-align: right">677.45x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">486.64 K</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.26%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">6.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">325.96 K</td>
    <td style="white-space: nowrap; text-align: right">3.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.59%</td>
    <td style="white-space: nowrap; text-align: right">2.83 μs</td>
    <td style="white-space: nowrap; text-align: right">8.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">325.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±49.39%</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">12.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.89 K</td>
    <td style="white-space: nowrap; text-align: right">1122.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±52.75%</td>
    <td style="white-space: nowrap; text-align: right">1213.71 μs</td>
    <td style="white-space: nowrap; text-align: right">2232.97 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">486.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">325.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">325.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.89 K</td>
    <td style="white-space: nowrap; text-align: right">546.13x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">398.65 K</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.88%</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">12.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">296.36 K</td>
    <td style="white-space: nowrap; text-align: right">3.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.84%</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">4.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">282.37 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.65%</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">8.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">2062.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.74%</td>
    <td style="white-space: nowrap; text-align: right">1996.04 μs</td>
    <td style="white-space: nowrap; text-align: right">3934.21 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap;text-align: right">398.65 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">296.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">282.37 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">822.38x</td>
  </tr>

</table>



<hr/>

