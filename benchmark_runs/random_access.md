
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.71 M</td>
    <td style="white-space: nowrap; text-align: right">78.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±1396.52%</td>
    <td style="white-space: nowrap; text-align: right">58 ns</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.52 M</td>
    <td style="white-space: nowrap; text-align: right">153.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±600.62%</td>
    <td style="white-space: nowrap; text-align: right">150 ns</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.49 M</td>
    <td style="white-space: nowrap; text-align: right">182.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±679.28%</td>
    <td style="white-space: nowrap; text-align: right">156 ns</td>
    <td style="white-space: nowrap; text-align: right">319.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.14 M</td>
    <td style="white-space: nowrap; text-align: right">194.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±589.83%</td>
    <td style="white-space: nowrap; text-align: right">166 ns</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">12.71 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.49 M</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.14 M</td>
    <td style="white-space: nowrap; text-align: right">2.47x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.37 M</td>
    <td style="white-space: nowrap; text-align: right">80.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±1317.57%</td>
    <td style="white-space: nowrap; text-align: right">59 ns</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.20 M</td>
    <td style="white-space: nowrap; text-align: right">161.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±648.33%</td>
    <td style="white-space: nowrap; text-align: right">152 ns</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.74 M</td>
    <td style="white-space: nowrap; text-align: right">174.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±662.31%</td>
    <td style="white-space: nowrap; text-align: right">156 ns</td>
    <td style="white-space: nowrap; text-align: right">218.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.05 M</td>
    <td style="white-space: nowrap; text-align: right">197.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±584.52%</td>
    <td style="white-space: nowrap; text-align: right">167 ns</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">12.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.20 M</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.74 M</td>
    <td style="white-space: nowrap; text-align: right">2.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.05 M</td>
    <td style="white-space: nowrap; text-align: right">2.45x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.43 M</td>
    <td style="white-space: nowrap; text-align: right">80.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±1401.29%</td>
    <td style="white-space: nowrap; text-align: right">61 ns</td>
    <td style="white-space: nowrap; text-align: right">115 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.10 M</td>
    <td style="white-space: nowrap; text-align: right">163.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±647.69%</td>
    <td style="white-space: nowrap; text-align: right">151 ns</td>
    <td style="white-space: nowrap; text-align: right">204 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.72 M</td>
    <td style="white-space: nowrap; text-align: right">174.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±664.36%</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
    <td style="white-space: nowrap; text-align: right">226 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.12 M</td>
    <td style="white-space: nowrap; text-align: right">195.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±608.29%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">256 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">12.43 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.10 M</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.72 M</td>
    <td style="white-space: nowrap; text-align: right">2.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.12 M</td>
    <td style="white-space: nowrap; text-align: right">2.43x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.83 M</td>
    <td style="white-space: nowrap; text-align: right">92.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±1192.09%</td>
    <td style="white-space: nowrap; text-align: right">70 ns</td>
    <td style="white-space: nowrap; text-align: right">127 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.03 M</td>
    <td style="white-space: nowrap; text-align: right">165.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±655.55%</td>
    <td style="white-space: nowrap; text-align: right">152 ns</td>
    <td style="white-space: nowrap; text-align: right">201.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.62 M</td>
    <td style="white-space: nowrap; text-align: right">178.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±680.89%</td>
    <td style="white-space: nowrap; text-align: right">159 ns</td>
    <td style="white-space: nowrap; text-align: right">227.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.85 M</td>
    <td style="white-space: nowrap; text-align: right">206.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±576.76%</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">10.83 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.85 M</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.85 M</td>
    <td style="white-space: nowrap; text-align: right">92.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±1174.16%</td>
    <td style="white-space: nowrap; text-align: right">68 ns</td>
    <td style="white-space: nowrap; text-align: right">122 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.00 M</td>
    <td style="white-space: nowrap; text-align: right">166.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±761.82%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">200 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.54 M</td>
    <td style="white-space: nowrap; text-align: right">180.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±648.17%</td>
    <td style="white-space: nowrap; text-align: right">160 ns</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">201.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±581.07%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">271 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">10.85 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">2.19x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.86 M</td>
    <td style="white-space: nowrap; text-align: right">92.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±1149.39%</td>
    <td style="white-space: nowrap; text-align: right">71 ns</td>
    <td style="white-space: nowrap; text-align: right">131 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.11 M</td>
    <td style="white-space: nowrap; text-align: right">163.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±644.44%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 M</td>
    <td style="white-space: nowrap; text-align: right">179.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±668.59%</td>
    <td style="white-space: nowrap; text-align: right">160 ns</td>
    <td style="white-space: nowrap; text-align: right">227 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">202.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±574.15%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">266 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">10.86 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">2.19x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.83 M</td>
    <td style="white-space: nowrap; text-align: right">101.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±1080.37%</td>
    <td style="white-space: nowrap; text-align: right">76 ns</td>
    <td style="white-space: nowrap; text-align: right">142 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.22 M</td>
    <td style="white-space: nowrap; text-align: right">160.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±654.98%</td>
    <td style="white-space: nowrap; text-align: right">153 ns</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.53 M</td>
    <td style="white-space: nowrap; text-align: right">180.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±696.77%</td>
    <td style="white-space: nowrap; text-align: right">162 ns</td>
    <td style="white-space: nowrap; text-align: right">213 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.00 M</td>
    <td style="white-space: nowrap; text-align: right">200.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.87%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9.83 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.22 M</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.53 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.70 M</td>
    <td style="white-space: nowrap; text-align: right">103.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±1044.00%</td>
    <td style="white-space: nowrap; text-align: right">81 ns</td>
    <td style="white-space: nowrap; text-align: right">139 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.24 M</td>
    <td style="white-space: nowrap; text-align: right">160.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±680.38%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.42 M</td>
    <td style="white-space: nowrap; text-align: right">184.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±625.30%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.86 M</td>
    <td style="white-space: nowrap; text-align: right">205.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.21%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">274 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9.70 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.24 M</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.42 M</td>
    <td style="white-space: nowrap; text-align: right">1.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.86 M</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.80 M</td>
    <td style="white-space: nowrap; text-align: right">102.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±1032.36%</td>
    <td style="white-space: nowrap; text-align: right">80 ns</td>
    <td style="white-space: nowrap; text-align: right">146 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.23 M</td>
    <td style="white-space: nowrap; text-align: right">160.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±664.64%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.50 M</td>
    <td style="white-space: nowrap; text-align: right">181.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±646.67%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.97 M</td>
    <td style="white-space: nowrap; text-align: right">201.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.19%</td>
    <td style="white-space: nowrap; text-align: right">173 ns</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9.80 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.97 M</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8.75 M</td>
    <td style="white-space: nowrap; text-align: right">114.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±998.33%</td>
    <td style="white-space: nowrap; text-align: right">87 ns</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.02 M</td>
    <td style="white-space: nowrap; text-align: right">166.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±680.03%</td>
    <td style="white-space: nowrap; text-align: right">150 ns</td>
    <td style="white-space: nowrap; text-align: right">221 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.68 M</td>
    <td style="white-space: nowrap; text-align: right">176.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±630.80%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">204 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.01 M</td>
    <td style="white-space: nowrap; text-align: right">199.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±573.25%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">8.75 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">6.91 M</td>
    <td style="white-space: nowrap; text-align: right">144.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±811.69%</td>
    <td style="white-space: nowrap; text-align: right">114 ns</td>
    <td style="white-space: nowrap; text-align: right">244 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.86 M</td>
    <td style="white-space: nowrap; text-align: right">170.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±720.95%</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
    <td style="white-space: nowrap; text-align: right">223 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.08 M</td>
    <td style="white-space: nowrap; text-align: right">196.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±630.87%</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.67 M</td>
    <td style="white-space: nowrap; text-align: right">214.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±541.02%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">273 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">6.91 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.86 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.08 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.86 M</td>
    <td style="white-space: nowrap; text-align: right">170.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±706.53%</td>
    <td style="white-space: nowrap; text-align: right">155 ns</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.43 M</td>
    <td style="white-space: nowrap; text-align: right">184.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±667.88%</td>
    <td style="white-space: nowrap; text-align: right">148 ns</td>
    <td style="white-space: nowrap; text-align: right">324 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.87 M</td>
    <td style="white-space: nowrap; text-align: right">205.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±554.01%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">234.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">228.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±509.30%</td>
    <td style="white-space: nowrap; text-align: right">202 ns</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.86 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.43 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.51 M</td>
    <td style="white-space: nowrap; text-align: right">181.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±716.23%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.72 M</td>
    <td style="white-space: nowrap; text-align: right">211.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±564.37%</td>
    <td style="white-space: nowrap; text-align: right">194 ns</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">217.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±540.39%</td>
    <td style="white-space: nowrap; text-align: right">181 ns</td>
    <td style="white-space: nowrap; text-align: right">414 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.29 M</td>
    <td style="white-space: nowrap; text-align: right">232.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±485.65%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">293 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.51 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.72 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.29 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.59 M</td>
    <td style="white-space: nowrap; text-align: right">179.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.34%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.66 M</td>
    <td style="white-space: nowrap; text-align: right">214.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±541.55%</td>
    <td style="white-space: nowrap; text-align: right">194 ns</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.24 M</td>
    <td style="white-space: nowrap; text-align: right">236.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±513.20%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">310 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">250.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±455.86%</td>
    <td style="white-space: nowrap; text-align: right">213 ns</td>
    <td style="white-space: nowrap; text-align: right">488 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.59 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.66 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.24 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.67 M</td>
    <td style="white-space: nowrap; text-align: right">176.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.95%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">222.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">216.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±538.28%</td>
    <td style="white-space: nowrap; text-align: right">195 ns</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 M</td>
    <td style="white-space: nowrap; text-align: right">238.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±486.50%</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
    <td style="white-space: nowrap; text-align: right">322 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.44 M</td>
    <td style="white-space: nowrap; text-align: right">290.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±401.17%</td>
    <td style="white-space: nowrap; text-align: right">247 ns</td>
    <td style="white-space: nowrap; text-align: right">569 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.67 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.44 M</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.36 M</td>
    <td style="white-space: nowrap; text-align: right">186.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±744.85%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">236 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">219.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±558.98%</td>
    <td style="white-space: nowrap; text-align: right">197 ns</td>
    <td style="white-space: nowrap; text-align: right">290 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.23 M</td>
    <td style="white-space: nowrap; text-align: right">236.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±485.32%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">310.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">318.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±355.36%</td>
    <td style="white-space: nowrap; text-align: right">279 ns</td>
    <td style="white-space: nowrap; text-align: right">605 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.36 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.23 M</td>
    <td style="white-space: nowrap; text-align: right">191.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±705.04%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">301 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.54 M</td>
    <td style="white-space: nowrap; text-align: right">220.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±525.05%</td>
    <td style="white-space: nowrap; text-align: right">200 ns</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.06 M</td>
    <td style="white-space: nowrap; text-align: right">246.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±483.45%</td>
    <td style="white-space: nowrap; text-align: right">221 ns</td>
    <td style="white-space: nowrap; text-align: right">308 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.88 M</td>
    <td style="white-space: nowrap; text-align: right">346.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±334.39%</td>
    <td style="white-space: nowrap; text-align: right">310 ns</td>
    <td style="white-space: nowrap; text-align: right">646 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.23 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.06 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.88 M</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.46 M</td>
    <td style="white-space: nowrap; text-align: right">183.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.63%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">239.62 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">221.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±534.92%</td>
    <td style="white-space: nowrap; text-align: right">202 ns</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.15 M</td>
    <td style="white-space: nowrap; text-align: right">240.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±490.12%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">317 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.65 M</td>
    <td style="white-space: nowrap; text-align: right">378.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±352.60%</td>
    <td style="white-space: nowrap; text-align: right">343 ns</td>
    <td style="white-space: nowrap; text-align: right">673 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.46 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.65 M</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.25 M</td>
    <td style="white-space: nowrap; text-align: right">190.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±601.97%</td>
    <td style="white-space: nowrap; text-align: right">173 ns</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.50 M</td>
    <td style="white-space: nowrap; text-align: right">222.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±531.96%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">277 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.09 M</td>
    <td style="white-space: nowrap; text-align: right">244.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±520.65%</td>
    <td style="white-space: nowrap; text-align: right">219 ns</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">393.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±293.17%</td>
    <td style="white-space: nowrap; text-align: right">372 ns</td>
    <td style="white-space: nowrap; text-align: right">710 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.25 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.35 M</td>
    <td style="white-space: nowrap; text-align: right">186.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±611.45%</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
    <td style="white-space: nowrap; text-align: right">239 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.31 M</td>
    <td style="white-space: nowrap; text-align: right">231.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±508.66%</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">250.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±483.97%</td>
    <td style="white-space: nowrap; text-align: right">227 ns</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">570.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±262.77%</td>
    <td style="white-space: nowrap; text-align: right">582 ns</td>
    <td style="white-space: nowrap; text-align: right">1075 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.35 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.31 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">3.05x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.04 M</td>
    <td style="white-space: nowrap; text-align: right">198.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.31%</td>
    <td style="white-space: nowrap; text-align: right">186 ns</td>
    <td style="white-space: nowrap; text-align: right">259.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.18 M</td>
    <td style="white-space: nowrap; text-align: right">239.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±511.34%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.91 M</td>
    <td style="white-space: nowrap; text-align: right">255.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±473.75%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">336 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">726.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±165.99%</td>
    <td style="white-space: nowrap; text-align: right">721 ns</td>
    <td style="white-space: nowrap; text-align: right">1380 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.04 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.18 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.91 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.09 M</td>
    <td style="white-space: nowrap; text-align: right">196.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±651.28%</td>
    <td style="white-space: nowrap; text-align: right">183 ns</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.21 M</td>
    <td style="white-space: nowrap; text-align: right">237.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±513.62%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">258.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±486.53%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">862.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±144.05%</td>
    <td style="white-space: nowrap; text-align: right">847 ns</td>
    <td style="white-space: nowrap; text-align: right">1635.67 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.09 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">4.39x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.17 M</td>
    <td style="white-space: nowrap; text-align: right">193.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±510.13%</td>
    <td style="white-space: nowrap; text-align: right">184 ns</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.11 M</td>
    <td style="white-space: nowrap; text-align: right">243.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±507.13%</td>
    <td style="white-space: nowrap; text-align: right">223 ns</td>
    <td style="white-space: nowrap; text-align: right">293 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.76 M</td>
    <td style="white-space: nowrap; text-align: right">266.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±459.97%</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
    <td style="white-space: nowrap; text-align: right">346.41 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.99 M</td>
    <td style="white-space: nowrap; text-align: right">1005.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±126.95%</td>
    <td style="white-space: nowrap; text-align: right">991 ns</td>
    <td style="white-space: nowrap; text-align: right">1914.74 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.17 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.76 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.99 M</td>
    <td style="white-space: nowrap; text-align: right">5.2x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.02 M</td>
    <td style="white-space: nowrap; text-align: right">199.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±659.92%</td>
    <td style="white-space: nowrap; text-align: right">185 ns</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.08 M</td>
    <td style="white-space: nowrap; text-align: right">245.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±528.00%</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">296.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±445.79%</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
    <td style="white-space: nowrap; text-align: right">650 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.87 M</td>
    <td style="white-space: nowrap; text-align: right">1149.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±112.19%</td>
    <td style="white-space: nowrap; text-align: right">1132 ns</td>
    <td style="white-space: nowrap; text-align: right">2163.69 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.02 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.08 M</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.87 M</td>
    <td style="white-space: nowrap; text-align: right">5.77x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.06 M</td>
    <td style="white-space: nowrap; text-align: right">197.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±555.71%</td>
    <td style="white-space: nowrap; text-align: right">184 ns</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">250.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±655.69%</td>
    <td style="white-space: nowrap; text-align: right">226 ns</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">269.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±466.68%</td>
    <td style="white-space: nowrap; text-align: right">247 ns</td>
    <td style="white-space: nowrap; text-align: right">348 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">1284.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±106.30%</td>
    <td style="white-space: nowrap; text-align: right">1260 ns</td>
    <td style="white-space: nowrap; text-align: right">2426.09 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.06 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">6.5x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.09 M</td>
    <td style="white-space: nowrap; text-align: right">196.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±497.76%</td>
    <td style="white-space: nowrap; text-align: right">188 ns</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">250.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±589.52%</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
    <td style="white-space: nowrap; text-align: right">304 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.67 M</td>
    <td style="white-space: nowrap; text-align: right">272.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±472.30%</td>
    <td style="white-space: nowrap; text-align: right">247 ns</td>
    <td style="white-space: nowrap; text-align: right">344 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">1429.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±97.39%</td>
    <td style="white-space: nowrap; text-align: right">1405.50 ns</td>
    <td style="white-space: nowrap; text-align: right">2686 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.09 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">7.28x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.02 M</td>
    <td style="white-space: nowrap; text-align: right">199.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.99%</td>
    <td style="white-space: nowrap; text-align: right">186 ns</td>
    <td style="white-space: nowrap; text-align: right">262.57 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">250.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±579.25%</td>
    <td style="white-space: nowrap; text-align: right">227 ns</td>
    <td style="white-space: nowrap; text-align: right">300 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.64 M</td>
    <td style="white-space: nowrap; text-align: right">274.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±493.24%</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
    <td style="white-space: nowrap; text-align: right">368 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.64 M</td>
    <td style="white-space: nowrap; text-align: right">1574.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±96.33%</td>
    <td style="white-space: nowrap; text-align: right">1541 ns</td>
    <td style="white-space: nowrap; text-align: right">2971 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.02 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.99 M</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.64 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.64 M</td>
    <td style="white-space: nowrap; text-align: right">7.9x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.87 M</td>
    <td style="white-space: nowrap; text-align: right">205.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±635.19%</td>
    <td style="white-space: nowrap; text-align: right">187 ns</td>
    <td style="white-space: nowrap; text-align: right">260 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.06 M</td>
    <td style="white-space: nowrap; text-align: right">246.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±528.31%</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
    <td style="white-space: nowrap; text-align: right">294 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 M</td>
    <td style="white-space: nowrap; text-align: right">276.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±490.93%</td>
    <td style="white-space: nowrap; text-align: right">248 ns</td>
    <td style="white-space: nowrap; text-align: right">353 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 M</td>
    <td style="white-space: nowrap; text-align: right">1716.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±89.26%</td>
    <td style="white-space: nowrap; text-align: right">1680 ns</td>
    <td style="white-space: nowrap; text-align: right">3248 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.87 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.06 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 M</td>
    <td style="white-space: nowrap; text-align: right">8.35x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.89 M</td>
    <td style="white-space: nowrap; text-align: right">204.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±539.55%</td>
    <td style="white-space: nowrap; text-align: right">191 ns</td>
    <td style="white-space: nowrap; text-align: right">260.51 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 M</td>
    <td style="white-space: nowrap; text-align: right">263.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±655.66%</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
    <td style="white-space: nowrap; text-align: right">301 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.47 M</td>
    <td style="white-space: nowrap; text-align: right">288.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±529.04%</td>
    <td style="white-space: nowrap; text-align: right">259 ns</td>
    <td style="white-space: nowrap; text-align: right">373 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.32 M</td>
    <td style="white-space: nowrap; text-align: right">3097.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±68.99%</td>
    <td style="white-space: nowrap; text-align: right">3078 ns</td>
    <td style="white-space: nowrap; text-align: right">5834.06 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.89 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 M</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.32 M</td>
    <td style="white-space: nowrap; text-align: right">15.13x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.92 M</td>
    <td style="white-space: nowrap; text-align: right">203.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±500.20%</td>
    <td style="white-space: nowrap; text-align: right">191 ns</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 M</td>
    <td style="white-space: nowrap; text-align: right">276.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±684.73%</td>
    <td style="white-space: nowrap; text-align: right">240 ns</td>
    <td style="white-space: nowrap; text-align: right">308 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.33 M</td>
    <td style="white-space: nowrap; text-align: right">300.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±631.70%</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
    <td style="white-space: nowrap; text-align: right">381 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">4498.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±67.16%</td>
    <td style="white-space: nowrap; text-align: right">4415 ns</td>
    <td style="white-space: nowrap; text-align: right">8848.48 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.92 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.33 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">22.16x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.94 M</td>
    <td style="white-space: nowrap; text-align: right">202.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±524.45%</td>
    <td style="white-space: nowrap; text-align: right">192 ns</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.36 M</td>
    <td style="white-space: nowrap; text-align: right">297.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±770.24%</td>
    <td style="white-space: nowrap; text-align: right">243 ns</td>
    <td style="white-space: nowrap; text-align: right">326 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">326.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±791.54%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">382.43 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.173 M</td>
    <td style="white-space: nowrap; text-align: right">5779.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±61.40%</td>
    <td style="white-space: nowrap; text-align: right">5695 ns</td>
    <td style="white-space: nowrap; text-align: right">11382.04 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.94 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.36 M</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.173 M</td>
    <td style="white-space: nowrap; text-align: right">28.53x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.47 M</td>
    <td style="white-space: nowrap; text-align: right">223.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±584.61%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.50 M</td>
    <td style="white-space: nowrap; text-align: right">285.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±819.37%</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
    <td style="white-space: nowrap; text-align: right">311 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±738.02%</td>
    <td style="white-space: nowrap; text-align: right">274 ns</td>
    <td style="white-space: nowrap; text-align: right">390.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.139 M</td>
    <td style="white-space: nowrap; text-align: right">7203.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±61.92%</td>
    <td style="white-space: nowrap; text-align: right">7037 ns</td>
    <td style="white-space: nowrap; text-align: right">14097.25 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.139 M</td>
    <td style="white-space: nowrap; text-align: right">32.21x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.45 M</td>
    <td style="white-space: nowrap; text-align: right">224.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±508.77%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.38 M</td>
    <td style="white-space: nowrap; text-align: right">295.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±810.93%</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
    <td style="white-space: nowrap; text-align: right">370 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">325.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±733.74%</td>
    <td style="white-space: nowrap; text-align: right">287 ns</td>
    <td style="white-space: nowrap; text-align: right">389.51 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.116 M</td>
    <td style="white-space: nowrap; text-align: right">8589.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±59.74%</td>
    <td style="white-space: nowrap; text-align: right">8391 ns</td>
    <td style="white-space: nowrap; text-align: right">16679.26 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.45 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.116 M</td>
    <td style="white-space: nowrap; text-align: right">38.22x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.48 M</td>
    <td style="white-space: nowrap; text-align: right">223.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±479.47%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">279 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.23 M</td>
    <td style="white-space: nowrap; text-align: right">309.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±829.37%</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
    <td style="white-space: nowrap; text-align: right">441 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">337.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±742.49%</td>
    <td style="white-space: nowrap; text-align: right">294 ns</td>
    <td style="white-space: nowrap; text-align: right">427 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.101 M</td>
    <td style="white-space: nowrap; text-align: right">9910.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±59.03%</td>
    <td style="white-space: nowrap; text-align: right">9704.50 ns</td>
    <td style="white-space: nowrap; text-align: right">19300.69 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.101 M</td>
    <td style="white-space: nowrap; text-align: right">44.43x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.53 M</td>
    <td style="white-space: nowrap; text-align: right">220.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±434.12%</td>
    <td style="white-space: nowrap; text-align: right">208 ns</td>
    <td style="white-space: nowrap; text-align: right">296.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">304.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±791.56%</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
    <td style="white-space: nowrap; text-align: right">567 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">333.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±661.97%</td>
    <td style="white-space: nowrap; text-align: right">297 ns</td>
    <td style="white-space: nowrap; text-align: right">427.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0883 M</td>
    <td style="white-space: nowrap; text-align: right">11331.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±61.43%</td>
    <td style="white-space: nowrap; text-align: right">11345 ns</td>
    <td style="white-space: nowrap; text-align: right">22193.16 ns</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0883 M</td>
    <td style="white-space: nowrap; text-align: right">51.35x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.37 M</td>
    <td style="white-space: nowrap; text-align: right">228.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±484.32%</td>
    <td style="white-space: nowrap; text-align: right">210 ns</td>
    <td style="white-space: nowrap; text-align: right">366 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">304.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±852.66%</td>
    <td style="white-space: nowrap; text-align: right">261 ns</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.92 M</td>
    <td style="white-space: nowrap; text-align: right">342.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±781.30%</td>
    <td style="white-space: nowrap; text-align: right">305 ns</td>
    <td style="white-space: nowrap; text-align: right">433 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0793 M</td>
    <td style="white-space: nowrap; text-align: right">12616.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.38%</td>
    <td style="white-space: nowrap; text-align: right">12586 ns</td>
    <td style="white-space: nowrap; text-align: right">24849.28 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.92 M</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0793 M</td>
    <td style="white-space: nowrap; text-align: right">55.1x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.40 M</td>
    <td style="white-space: nowrap; text-align: right">227.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±537.83%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">283 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27 M</td>
    <td style="white-space: nowrap; text-align: right">306.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±700.22%</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
    <td style="white-space: nowrap; text-align: right">350 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.81 M</td>
    <td style="white-space: nowrap; text-align: right">356.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±621.61%</td>
    <td style="white-space: nowrap; text-align: right">327 ns</td>
    <td style="white-space: nowrap; text-align: right">431 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0715 M</td>
    <td style="white-space: nowrap; text-align: right">13992.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±60.47%</td>
    <td style="white-space: nowrap; text-align: right">13879 ns</td>
    <td style="white-space: nowrap; text-align: right">27616.60 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.81 M</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0715 M</td>
    <td style="white-space: nowrap; text-align: right">61.6x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.27 M</td>
    <td style="white-space: nowrap; text-align: right">234.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±437.51%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">290 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.49 M</td>
    <td style="white-space: nowrap; text-align: right">286.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±155.40%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">347.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">325.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±91.06%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">445 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0363 M</td>
    <td style="white-space: nowrap; text-align: right">27558.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±57.87%</td>
    <td style="white-space: nowrap; text-align: right">27539 ns</td>
    <td style="white-space: nowrap; text-align: right">53652.76 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.27 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.49 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0363 M</td>
    <td style="white-space: nowrap; text-align: right">117.76x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.40 M</td>
    <td style="white-space: nowrap; text-align: right">227.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±486.53%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">278.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±42.64%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">367.44 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">335.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±188.15%</td>
    <td style="white-space: nowrap; text-align: right">316 ns</td>
    <td style="white-space: nowrap; text-align: right">435.71 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0248 M</td>
    <td style="white-space: nowrap; text-align: right">40403.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.28%</td>
    <td style="white-space: nowrap; text-align: right">39861 ns</td>
    <td style="white-space: nowrap; text-align: right">81211.71 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0248 M</td>
    <td style="white-space: nowrap; text-align: right">177.64x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.48 M</td>
    <td style="white-space: nowrap; text-align: right">223.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±525.48%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">274 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">774.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±153.48%</td>
    <td style="white-space: nowrap; text-align: right">493 ns</td>
    <td style="white-space: nowrap; text-align: right">1536.99 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">826.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±172.85%</td>
    <td style="white-space: nowrap; text-align: right">502 ns</td>
    <td style="white-space: nowrap; text-align: right">3247.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0186 M</td>
    <td style="white-space: nowrap; text-align: right">53852.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.09%</td>
    <td style="white-space: nowrap; text-align: right">53706.50 ns</td>
    <td style="white-space: nowrap; text-align: right">105413.95 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">3.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">3.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0186 M</td>
    <td style="white-space: nowrap; text-align: right">241.2x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4015.32 K</td>
    <td style="white-space: nowrap; text-align: right">0.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±742.48%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">652.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.04%</td>
    <td style="white-space: nowrap; text-align: right">1.33 μs</td>
    <td style="white-space: nowrap; text-align: right">14.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">610.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±135.29%</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
    <td style="white-space: nowrap; text-align: right">14.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">15.19 K</td>
    <td style="white-space: nowrap; text-align: right">65.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.63%</td>
    <td style="white-space: nowrap; text-align: right">65.08 μs</td>
    <td style="white-space: nowrap; text-align: right">134.83 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4015.32 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">652.60 K</td>
    <td style="white-space: nowrap; text-align: right">6.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">610.08 K</td>
    <td style="white-space: nowrap; text-align: right">6.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">15.19 K</td>
    <td style="white-space: nowrap; text-align: right">264.36x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4244.36 K</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±671.59%</td>
    <td style="white-space: nowrap; text-align: right">0.21 μs</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">565.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±129.49%</td>
    <td style="white-space: nowrap; text-align: right">1.37 μs</td>
    <td style="white-space: nowrap; text-align: right">14.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">497.41 K</td>
    <td style="white-space: nowrap; text-align: right">2.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±134.15%</td>
    <td style="white-space: nowrap; text-align: right">1.45 μs</td>
    <td style="white-space: nowrap; text-align: right">15.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.54 K</td>
    <td style="white-space: nowrap; text-align: right">79.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.16%</td>
    <td style="white-space: nowrap; text-align: right">79.52 μs</td>
    <td style="white-space: nowrap; text-align: right">162.33 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4244.36 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">565.72 K</td>
    <td style="white-space: nowrap; text-align: right">7.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">497.41 K</td>
    <td style="white-space: nowrap; text-align: right">8.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.54 K</td>
    <td style="white-space: nowrap; text-align: right">338.5x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4264.66 K</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.84%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">0.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">536.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±128.22%</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">14.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">477.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±112.68%</td>
    <td style="white-space: nowrap; text-align: right">1.63 μs</td>
    <td style="white-space: nowrap; text-align: right">15.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.06 K</td>
    <td style="white-space: nowrap; text-align: right">99.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.69%</td>
    <td style="white-space: nowrap; text-align: right">99.72 μs</td>
    <td style="white-space: nowrap; text-align: right">218.16 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4264.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">536.25 K</td>
    <td style="white-space: nowrap; text-align: right">7.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">477.21 K</td>
    <td style="white-space: nowrap; text-align: right">8.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.06 K</td>
    <td style="white-space: nowrap; text-align: right">424.07x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4229.48 K</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±105.10%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">559.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.17%</td>
    <td style="white-space: nowrap; text-align: right">1.45 μs</td>
    <td style="white-space: nowrap; text-align: right">14.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">452.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±126.20%</td>
    <td style="white-space: nowrap; text-align: right">1.58 μs</td>
    <td style="white-space: nowrap; text-align: right">15.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8.73 K</td>
    <td style="white-space: nowrap; text-align: right">114.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.12%</td>
    <td style="white-space: nowrap; text-align: right">115.73 μs</td>
    <td style="white-space: nowrap; text-align: right">231.29 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4229.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">559.89 K</td>
    <td style="white-space: nowrap; text-align: right">7.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">452.08 K</td>
    <td style="white-space: nowrap; text-align: right">9.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8.73 K</td>
    <td style="white-space: nowrap; text-align: right">484.46x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3351.07 K</td>
    <td style="white-space: nowrap; text-align: right">0.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±1219.22%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">604.35 K</td>
    <td style="white-space: nowrap; text-align: right">1.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.48%</td>
    <td style="white-space: nowrap; text-align: right">1.47 μs</td>
    <td style="white-space: nowrap; text-align: right">10.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">584.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.38%</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
    <td style="white-space: nowrap; text-align: right">14.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">7.96 K</td>
    <td style="white-space: nowrap; text-align: right">125.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.38%</td>
    <td style="white-space: nowrap; text-align: right">120.99 μs</td>
    <td style="white-space: nowrap; text-align: right">284.41 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3351.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">604.35 K</td>
    <td style="white-space: nowrap; text-align: right">5.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">584.92 K</td>
    <td style="white-space: nowrap; text-align: right">5.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">7.96 K</td>
    <td style="white-space: nowrap; text-align: right">421.08x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4040.78 K</td>
    <td style="white-space: nowrap; text-align: right">0.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±865.64%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">516.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.45%</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
    <td style="white-space: nowrap; text-align: right">15.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">417.57 K</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.02%</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
    <td style="white-space: nowrap; text-align: right">15.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">179.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.10%</td>
    <td style="white-space: nowrap; text-align: right">175.99 μs</td>
    <td style="white-space: nowrap; text-align: right">386.18 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4040.78 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">516.24 K</td>
    <td style="white-space: nowrap; text-align: right">7.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">417.57 K</td>
    <td style="white-space: nowrap; text-align: right">9.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">724.77x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3508.02 K</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±139.08%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">0.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">309.61 K</td>
    <td style="white-space: nowrap; text-align: right">3.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.43%</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
    <td style="white-space: nowrap; text-align: right">19.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">297.29 K</td>
    <td style="white-space: nowrap; text-align: right">3.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.71%</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
    <td style="white-space: nowrap; text-align: right">19.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.52 K</td>
    <td style="white-space: nowrap; text-align: right">397.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.63%</td>
    <td style="white-space: nowrap; text-align: right">383.88 μs</td>
    <td style="white-space: nowrap; text-align: right">766.76 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3508.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">309.61 K</td>
    <td style="white-space: nowrap; text-align: right">11.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">297.29 K</td>
    <td style="white-space: nowrap; text-align: right">11.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.52 K</td>
    <td style="white-space: nowrap; text-align: right">1393.92x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1151.84 K</td>
    <td style="white-space: nowrap; text-align: right">0.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±229.27%</td>
    <td style="white-space: nowrap; text-align: right">0.48 μs</td>
    <td style="white-space: nowrap; text-align: right">13.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">400.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.47%</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">15.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">374.47 K</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.22%</td>
    <td style="white-space: nowrap; text-align: right">2.08 μs</td>
    <td style="white-space: nowrap; text-align: right">15.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.71 K</td>
    <td style="white-space: nowrap; text-align: right">585.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.34%</td>
    <td style="white-space: nowrap; text-align: right">592.98 μs</td>
    <td style="white-space: nowrap; text-align: right">1159.48 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1151.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">400.86 K</td>
    <td style="white-space: nowrap; text-align: right">2.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">374.47 K</td>
    <td style="white-space: nowrap; text-align: right">3.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.71 K</td>
    <td style="white-space: nowrap; text-align: right">674.69x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">592.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.33%</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">14.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">370.47 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.05%</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">15.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">358.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±111.67%</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">16.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.28 K</td>
    <td style="white-space: nowrap; text-align: right">778.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.11%</td>
    <td style="white-space: nowrap; text-align: right">754.20 μs</td>
    <td style="white-space: nowrap; text-align: right">1524.76 μs</td>
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
    <td style="white-space: nowrap;text-align: right">592.34 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">370.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">358.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.28 K</td>
    <td style="white-space: nowrap; text-align: right">461.08x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">610.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.61%</td>
    <td style="white-space: nowrap; text-align: right">1.52 μs</td>
    <td style="white-space: nowrap; text-align: right">4.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">347.74 K</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.43%</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">20.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">342.01 K</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±116.30%</td>
    <td style="white-space: nowrap; text-align: right">2.00 μs</td>
    <td style="white-space: nowrap; text-align: right">16.64 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">969.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.48%</td>
    <td style="white-space: nowrap; text-align: right">899.45 μs</td>
    <td style="white-space: nowrap; text-align: right">2029.72 μs</td>
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
    <td style="white-space: nowrap;text-align: right">610.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">347.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">342.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">591.9x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">555.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.01%</td>
    <td style="white-space: nowrap; text-align: right">1.69 μs</td>
    <td style="white-space: nowrap; text-align: right">5.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">422.03 K</td>
    <td style="white-space: nowrap; text-align: right">2.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.36%</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">16.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">405.95 K</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.38%</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">15.97 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.86 K</td>
    <td style="white-space: nowrap; text-align: right">1156.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.48%</td>
    <td style="white-space: nowrap; text-align: right">1114.18 μs</td>
    <td style="white-space: nowrap; text-align: right">2247.98 μs</td>
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
    <td style="white-space: nowrap;text-align: right">555.10 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">422.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">405.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.86 K</td>
    <td style="white-space: nowrap; text-align: right">642.23x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">558.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.49%</td>
    <td style="white-space: nowrap; text-align: right">1.70 μs</td>
    <td style="white-space: nowrap; text-align: right">3.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">356.42 K</td>
    <td style="white-space: nowrap; text-align: right">2.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.84%</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">16.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">331.93 K</td>
    <td style="white-space: nowrap; text-align: right">3.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±119.77%</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">17.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.75 K</td>
    <td style="white-space: nowrap; text-align: right">1339.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.24%</td>
    <td style="white-space: nowrap; text-align: right">1318.90 μs</td>
    <td style="white-space: nowrap; text-align: right">2643.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">558.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">356.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">331.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.75 K</td>
    <td style="white-space: nowrap; text-align: right">748.18x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">574.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.29%</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">4.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">354.61 K</td>
    <td style="white-space: nowrap; text-align: right">2.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.28%</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">18.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">279.63 K</td>
    <td style="white-space: nowrap; text-align: right">3.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.89%</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">16.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">1490.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.37%</td>
    <td style="white-space: nowrap; text-align: right">1427.31 μs</td>
    <td style="white-space: nowrap; text-align: right">3033.29 μs</td>
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
    <td style="white-space: nowrap;text-align: right">574.13 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">354.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">279.63 K</td>
    <td style="white-space: nowrap; text-align: right">2.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">855.9x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">557.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.00%</td>
    <td style="white-space: nowrap; text-align: right">1.74 μs</td>
    <td style="white-space: nowrap; text-align: right">3.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">362.69 K</td>
    <td style="white-space: nowrap; text-align: right">2.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.04%</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">19.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">360.52 K</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±103.21%</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">15.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 K</td>
    <td style="white-space: nowrap; text-align: right">1730.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.17%</td>
    <td style="white-space: nowrap; text-align: right">1715.84 μs</td>
    <td style="white-space: nowrap; text-align: right">3395.09 μs</td>
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
    <td style="white-space: nowrap;text-align: right">557.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">362.69 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">360.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 K</td>
    <td style="white-space: nowrap; text-align: right">964.35x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">544.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.90%</td>
    <td style="white-space: nowrap; text-align: right">1.75 μs</td>
    <td style="white-space: nowrap; text-align: right">2.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">428.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.11%</td>
    <td style="white-space: nowrap; text-align: right">2.07 μs</td>
    <td style="white-space: nowrap; text-align: right">14.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">339.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.03%</td>
    <td style="white-space: nowrap; text-align: right">2.18 μs</td>
    <td style="white-space: nowrap; text-align: right">20.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.50 K</td>
    <td style="white-space: nowrap; text-align: right">1989.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.34%</td>
    <td style="white-space: nowrap; text-align: right">2035.45 μs</td>
    <td style="white-space: nowrap; text-align: right">3796.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">544.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">428.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">339.08 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.50 K</td>
    <td style="white-space: nowrap; text-align: right">1082.51x</td>
  </tr>

</table>



<hr/>

