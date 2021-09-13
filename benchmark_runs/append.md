
# Benchmark

Comparing `Arrays.append` with appending a value to a list.


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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">17.47 M</td>
    <td style="white-space: nowrap; text-align: right">57.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±1844.61%</td>
    <td style="white-space: nowrap; text-align: right">39 ns</td>
    <td style="white-space: nowrap; text-align: right">60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">14.40 M</td>
    <td style="white-space: nowrap; text-align: right">69.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±1341.15%</td>
    <td style="white-space: nowrap; text-align: right">53 ns</td>
    <td style="white-space: nowrap; text-align: right">77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.60 M</td>
    <td style="white-space: nowrap; text-align: right">178.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±938.87%</td>
    <td style="white-space: nowrap; text-align: right">132 ns</td>
    <td style="white-space: nowrap; text-align: right">182 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">296.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±912.06%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">514.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.30 M</td>
    <td style="white-space: nowrap; text-align: right">302.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±1221.83%</td>
    <td style="white-space: nowrap; text-align: right">146 ns</td>
    <td style="white-space: nowrap; text-align: right">1435.77 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">17.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">14.40 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.60 M</td>
    <td style="white-space: nowrap; text-align: right">3.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">5.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.30 M</td>
    <td style="white-space: nowrap; text-align: right">5.29x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">32 B</td>
    <td>2.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">104 B</td>
    <td>6.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">18.75 M</td>
    <td style="white-space: nowrap; text-align: right">53.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±1352.55%</td>
    <td style="white-space: nowrap; text-align: right">40 ns</td>
    <td style="white-space: nowrap; text-align: right">57 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">13.03 M</td>
    <td style="white-space: nowrap; text-align: right">76.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±1522.68%</td>
    <td style="white-space: nowrap; text-align: right">54 ns</td>
    <td style="white-space: nowrap; text-align: right">84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.62 M</td>
    <td style="white-space: nowrap; text-align: right">177.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±1113.49%</td>
    <td style="white-space: nowrap; text-align: right">111 ns</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">217.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±987.23%</td>
    <td style="white-space: nowrap; text-align: right">133 ns</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.65 M</td>
    <td style="white-space: nowrap; text-align: right">377.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±1135.70%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">1506 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">18.75 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">13.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.62 M</td>
    <td style="white-space: nowrap; text-align: right">3.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">4.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.65 M</td>
    <td style="white-space: nowrap; text-align: right">7.07x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">48 B</td>
    <td>3.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">120 B</td>
    <td>7.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">17.06 M</td>
    <td style="white-space: nowrap; text-align: right">58.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±1759.00%</td>
    <td style="white-space: nowrap; text-align: right">40 ns</td>
    <td style="white-space: nowrap; text-align: right">60.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.46 M</td>
    <td style="white-space: nowrap; text-align: right">95.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±1579.46%</td>
    <td style="white-space: nowrap; text-align: right">59 ns</td>
    <td style="white-space: nowrap; text-align: right">89 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.31 M</td>
    <td style="white-space: nowrap; text-align: right">188.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±1063.44%</td>
    <td style="white-space: nowrap; text-align: right">116 ns</td>
    <td style="white-space: nowrap; text-align: right">187 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.37 M</td>
    <td style="white-space: nowrap; text-align: right">228.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±1050.04%</td>
    <td style="white-space: nowrap; text-align: right">136 ns</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.77 M</td>
    <td style="white-space: nowrap; text-align: right">265.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±930.08%</td>
    <td style="white-space: nowrap; text-align: right">173 ns</td>
    <td style="white-space: nowrap; text-align: right">242 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">17.06 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.31 M</td>
    <td style="white-space: nowrap; text-align: right">3.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.37 M</td>
    <td style="white-space: nowrap; text-align: right">3.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.77 M</td>
    <td style="white-space: nowrap; text-align: right">4.53x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">64 B</td>
    <td>4.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">136 B</td>
    <td>8.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">18.06 M</td>
    <td style="white-space: nowrap; text-align: right">55.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±2143.23%</td>
    <td style="white-space: nowrap; text-align: right">42 ns</td>
    <td style="white-space: nowrap; text-align: right">65 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.77 M</td>
    <td style="white-space: nowrap; text-align: right">92.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±1067.73%</td>
    <td style="white-space: nowrap; text-align: right">65 ns</td>
    <td style="white-space: nowrap; text-align: right">99 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.08 M</td>
    <td style="white-space: nowrap; text-align: right">164.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±844.79%</td>
    <td style="white-space: nowrap; text-align: right">119 ns</td>
    <td style="white-space: nowrap; text-align: right">215.45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.24 M</td>
    <td style="white-space: nowrap; text-align: right">235.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±1049.59%</td>
    <td style="white-space: nowrap; text-align: right">145 ns</td>
    <td style="white-space: nowrap; text-align: right">239.62 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">336.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±1085.56%</td>
    <td style="white-space: nowrap; text-align: right">180 ns</td>
    <td style="white-space: nowrap; text-align: right">1531 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">18.06 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.08 M</td>
    <td style="white-space: nowrap; text-align: right">2.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.24 M</td>
    <td style="white-space: nowrap; text-align: right">4.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.97 M</td>
    <td style="white-space: nowrap; text-align: right">6.08x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">80 B</td>
    <td>5.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">152 B</td>
    <td>9.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.92 M</td>
    <td style="white-space: nowrap; text-align: right">62.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±1644.88%</td>
    <td style="white-space: nowrap; text-align: right">44 ns</td>
    <td style="white-space: nowrap; text-align: right">70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.90 M</td>
    <td style="white-space: nowrap; text-align: right">91.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±1044.60%</td>
    <td style="white-space: nowrap; text-align: right">70 ns</td>
    <td style="white-space: nowrap; text-align: right">107 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.71 M</td>
    <td style="white-space: nowrap; text-align: right">175.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±954.75%</td>
    <td style="white-space: nowrap; text-align: right">123 ns</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.15 M</td>
    <td style="white-space: nowrap; text-align: right">241.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±1046.95%</td>
    <td style="white-space: nowrap; text-align: right">144 ns</td>
    <td style="white-space: nowrap; text-align: right">612.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.96 M</td>
    <td style="white-space: nowrap; text-align: right">252.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±906.49%</td>
    <td style="white-space: nowrap; text-align: right">170 ns</td>
    <td style="white-space: nowrap; text-align: right">312.89 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.92 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">10.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.71 M</td>
    <td style="white-space: nowrap; text-align: right">2.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.15 M</td>
    <td style="white-space: nowrap; text-align: right">3.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.96 M</td>
    <td style="white-space: nowrap; text-align: right">4.02x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">96 B</td>
    <td>6.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">168 B</td>
    <td>10.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">18.17 M</td>
    <td style="white-space: nowrap; text-align: right">55.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±917.95%</td>
    <td style="white-space: nowrap; text-align: right">45 ns</td>
    <td style="white-space: nowrap; text-align: right">72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">8.33 M</td>
    <td style="white-space: nowrap; text-align: right">120.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±1491.72%</td>
    <td style="white-space: nowrap; text-align: right">71 ns</td>
    <td style="white-space: nowrap; text-align: right">107 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">202.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±678.43%</td>
    <td style="white-space: nowrap; text-align: right">152 ns</td>
    <td style="white-space: nowrap; text-align: right">226 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.75 M</td>
    <td style="white-space: nowrap; text-align: right">210.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±1027.28%</td>
    <td style="white-space: nowrap; text-align: right">126 ns</td>
    <td style="white-space: nowrap; text-align: right">196.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.95 M</td>
    <td style="white-space: nowrap; text-align: right">253.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±936.83%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">244.57 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">18.17 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">8.33 M</td>
    <td style="white-space: nowrap; text-align: right">2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">3.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.75 M</td>
    <td style="white-space: nowrap; text-align: right">3.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.95 M</td>
    <td style="white-space: nowrap; text-align: right">4.6x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">112 B</td>
    <td>7.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">184 B</td>
    <td>11.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">16.42 M</td>
    <td style="white-space: nowrap; text-align: right">60.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±1299.61%</td>
    <td style="white-space: nowrap; text-align: right">46 ns</td>
    <td style="white-space: nowrap; text-align: right">72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">7.36 M</td>
    <td style="white-space: nowrap; text-align: right">135.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±1540.12%</td>
    <td style="white-space: nowrap; text-align: right">78 ns</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.64 M</td>
    <td style="white-space: nowrap; text-align: right">215.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±985.89%</td>
    <td style="white-space: nowrap; text-align: right">133 ns</td>
    <td style="white-space: nowrap; text-align: right">193 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.42 M</td>
    <td style="white-space: nowrap; text-align: right">226.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±993.52%</td>
    <td style="white-space: nowrap; text-align: right">151 ns</td>
    <td style="white-space: nowrap; text-align: right">221.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.51 M</td>
    <td style="white-space: nowrap; text-align: right">285.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±915.60%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">265.64 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">16.42 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">7.36 M</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.64 M</td>
    <td style="white-space: nowrap; text-align: right">3.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.42 M</td>
    <td style="white-space: nowrap; text-align: right">3.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.51 M</td>
    <td style="white-space: nowrap; text-align: right">4.68x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">128 B</td>
    <td>8.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">200 B</td>
    <td>12.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.52 M</td>
    <td style="white-space: nowrap; text-align: right">64.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±1478.89%</td>
    <td style="white-space: nowrap; text-align: right">47 ns</td>
    <td style="white-space: nowrap; text-align: right">72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">7.19 M</td>
    <td style="white-space: nowrap; text-align: right">139.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±1450.33%</td>
    <td style="white-space: nowrap; text-align: right">78 ns</td>
    <td style="white-space: nowrap; text-align: right">125 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.36 M</td>
    <td style="white-space: nowrap; text-align: right">229.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±985.56%</td>
    <td style="white-space: nowrap; text-align: right">142 ns</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.23 M</td>
    <td style="white-space: nowrap; text-align: right">236.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±1023.69%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">237.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.75 M</td>
    <td style="white-space: nowrap; text-align: right">267.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±915.53%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.52 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">7.19 M</td>
    <td style="white-space: nowrap; text-align: right">2.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.36 M</td>
    <td style="white-space: nowrap; text-align: right">3.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.23 M</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.75 M</td>
    <td style="white-space: nowrap; text-align: right">4.14x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">144 B</td>
    <td>9.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">216 B</td>
    <td>13.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.79 M</td>
    <td style="white-space: nowrap; text-align: right">63.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±1215.84%</td>
    <td style="white-space: nowrap; text-align: right">48 ns</td>
    <td style="white-space: nowrap; text-align: right">77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">8.53 M</td>
    <td style="white-space: nowrap; text-align: right">117.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±1238.69%</td>
    <td style="white-space: nowrap; text-align: right">82 ns</td>
    <td style="white-space: nowrap; text-align: right">118 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">221.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±867.49%</td>
    <td style="white-space: nowrap; text-align: right">153 ns</td>
    <td style="white-space: nowrap; text-align: right">255.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">233.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±1050.37%</td>
    <td style="white-space: nowrap; text-align: right">141 ns</td>
    <td style="white-space: nowrap; text-align: right">194 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.40 M</td>
    <td style="white-space: nowrap; text-align: right">294.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±877.01%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">548.56 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.79 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">8.53 M</td>
    <td style="white-space: nowrap; text-align: right">1.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">3.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">3.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.40 M</td>
    <td style="white-space: nowrap; text-align: right">4.65x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">160 B</td>
    <td>10.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">232 B</td>
    <td>14.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.82 M</td>
    <td style="white-space: nowrap; text-align: right">63.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±1221.72%</td>
    <td style="white-space: nowrap; text-align: right">47 ns</td>
    <td style="white-space: nowrap; text-align: right">82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">6.16 M</td>
    <td style="white-space: nowrap; text-align: right">162.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±1500.88%</td>
    <td style="white-space: nowrap; text-align: right">86 ns</td>
    <td style="white-space: nowrap; text-align: right">192.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.13 M</td>
    <td style="white-space: nowrap; text-align: right">242.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±973.72%</td>
    <td style="white-space: nowrap; text-align: right">143 ns</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.93 M</td>
    <td style="white-space: nowrap; text-align: right">254.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±714.42%</td>
    <td style="white-space: nowrap; text-align: right">175 ns</td>
    <td style="white-space: nowrap; text-align: right">286.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">514.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±775.91%</td>
    <td style="white-space: nowrap; text-align: right">249 ns</td>
    <td style="white-space: nowrap; text-align: right">732.13 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.82 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">6.16 M</td>
    <td style="white-space: nowrap; text-align: right">2.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.13 M</td>
    <td style="white-space: nowrap; text-align: right">3.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.93 M</td>
    <td style="white-space: nowrap; text-align: right">4.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">8.14x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">248 B</td>
    <td>15.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">16.69 M</td>
    <td style="white-space: nowrap; text-align: right">59.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±666.08%</td>
    <td style="white-space: nowrap; text-align: right">52 ns</td>
    <td style="white-space: nowrap; text-align: right">82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">4.27 M</td>
    <td style="white-space: nowrap; text-align: right">234.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±1130.50%</td>
    <td style="white-space: nowrap; text-align: right">117 ns</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.94 M</td>
    <td style="white-space: nowrap; text-align: right">253.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±920.65%</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
    <td style="white-space: nowrap; text-align: right">293.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">322.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±852.26%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.76 M</td>
    <td style="white-space: nowrap; text-align: right">361.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±840.32%</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
    <td style="white-space: nowrap; text-align: right">641.99 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">16.69 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">4.27 M</td>
    <td style="white-space: nowrap; text-align: right">3.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.94 M</td>
    <td style="white-space: nowrap; text-align: right">4.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">5.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.76 M</td>
    <td style="white-space: nowrap; text-align: right">6.04x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">336 B</td>
    <td>21.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">408 B</td>
    <td>25.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.32 M</td>
    <td style="white-space: nowrap; text-align: right">65.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±1104.16%</td>
    <td style="white-space: nowrap; text-align: right">51 ns</td>
    <td style="white-space: nowrap; text-align: right">81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.07 M</td>
    <td style="white-space: nowrap; text-align: right">245.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±709.67%</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
    <td style="white-space: nowrap; text-align: right">290.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">314.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±1077.88%</td>
    <td style="white-space: nowrap; text-align: right">145 ns</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.93 M</td>
    <td style="white-space: nowrap; text-align: right">341.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±798.23%</td>
    <td style="white-space: nowrap; text-align: right">205 ns</td>
    <td style="white-space: nowrap; text-align: right">577.29 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">427.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±807.19%</td>
    <td style="white-space: nowrap; text-align: right">205 ns</td>
    <td style="white-space: nowrap; text-align: right">391 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.32 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.07 M</td>
    <td style="white-space: nowrap; text-align: right">3.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">4.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.93 M</td>
    <td style="white-space: nowrap; text-align: right">5.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">6.54x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">496 B</td>
    <td>31.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">568 B</td>
    <td>35.5x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.79 M</td>
    <td style="white-space: nowrap; text-align: right">67.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±1102.65%</td>
    <td style="white-space: nowrap; text-align: right">52 ns</td>
    <td style="white-space: nowrap; text-align: right">83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 M</td>
    <td style="white-space: nowrap; text-align: right">247.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±724.23%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">261.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">282.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±900.18%</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
    <td style="white-space: nowrap; text-align: right">302.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">316.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±831.93%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">343.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.84 M</td>
    <td style="white-space: nowrap; text-align: right">351.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±930.50%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">287.13 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.79 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 M</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">4.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 M</td>
    <td style="white-space: nowrap; text-align: right">4.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.84 M</td>
    <td style="white-space: nowrap; text-align: right">5.21x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">224 B</td>
    <td>14.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">12.83 M</td>
    <td style="white-space: nowrap; text-align: right">77.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±1610.10%</td>
    <td style="white-space: nowrap; text-align: right">55 ns</td>
    <td style="white-space: nowrap; text-align: right">96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.43 M</td>
    <td style="white-space: nowrap; text-align: right">225.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±644.54%</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.53 M</td>
    <td style="white-space: nowrap; text-align: right">283.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±849.88%</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
    <td style="white-space: nowrap; text-align: right">382 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.32 M</td>
    <td style="white-space: nowrap; text-align: right">301.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±780.37%</td>
    <td style="white-space: nowrap; text-align: right">205 ns</td>
    <td style="white-space: nowrap; text-align: right">299.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.17 M</td>
    <td style="white-space: nowrap; text-align: right">460.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±1069.02%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">465.37 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">12.83 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.43 M</td>
    <td style="white-space: nowrap; text-align: right">2.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.53 M</td>
    <td style="white-space: nowrap; text-align: right">3.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.32 M</td>
    <td style="white-space: nowrap; text-align: right">3.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.17 M</td>
    <td style="white-space: nowrap; text-align: right">5.91x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">240 B</td>
    <td>15.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.22 M</td>
    <td style="white-space: nowrap; text-align: right">75.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±1325.20%</td>
    <td style="white-space: nowrap; text-align: right">54 ns</td>
    <td style="white-space: nowrap; text-align: right">96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.58 M</td>
    <td style="white-space: nowrap; text-align: right">279.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±949.42%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">292 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">289.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±798.62%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">350.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.12 M</td>
    <td style="white-space: nowrap; text-align: right">320.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±758.68%</td>
    <td style="white-space: nowrap; text-align: right">213 ns</td>
    <td style="white-space: nowrap; text-align: right">490.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">665.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±944.41%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">5783.48 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.22 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.58 M</td>
    <td style="white-space: nowrap; text-align: right">3.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">3.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.12 M</td>
    <td style="white-space: nowrap; text-align: right">4.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">8.79x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.12 M</td>
    <td style="white-space: nowrap; text-align: right">66.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±929.31%</td>
    <td style="white-space: nowrap; text-align: right">54 ns</td>
    <td style="white-space: nowrap; text-align: right">100 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.03 M</td>
    <td style="white-space: nowrap; text-align: right">248.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±793.92%</td>
    <td style="white-space: nowrap; text-align: right">180 ns</td>
    <td style="white-space: nowrap; text-align: right">311 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.65 M</td>
    <td style="white-space: nowrap; text-align: right">273.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±897.74%</td>
    <td style="white-space: nowrap; text-align: right">198 ns</td>
    <td style="white-space: nowrap; text-align: right">308.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">340.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±779.12%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">433.39 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">741.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±907.98%</td>
    <td style="white-space: nowrap; text-align: right">245 ns</td>
    <td style="white-space: nowrap; text-align: right">11217.06 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.12 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.03 M</td>
    <td style="white-space: nowrap; text-align: right">3.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.65 M</td>
    <td style="white-space: nowrap; text-align: right">4.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">5.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">11.22x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">280 B</td>
    <td>17.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.10 M</td>
    <td style="white-space: nowrap; text-align: right">66.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±1107.63%</td>
    <td style="white-space: nowrap; text-align: right">54 ns</td>
    <td style="white-space: nowrap; text-align: right">87 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±885.65%</td>
    <td style="white-space: nowrap; text-align: right">205 ns</td>
    <td style="white-space: nowrap; text-align: right">346.41 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">323.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±701.20%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">289.23 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.44 M</td>
    <td style="white-space: nowrap; text-align: right">410.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±689.68%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">712.43 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.14 M</td>
    <td style="white-space: nowrap; text-align: right">876.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±840.30%</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
    <td style="white-space: nowrap; text-align: right">15586.40 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">4.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">4.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.44 M</td>
    <td style="white-space: nowrap; text-align: right">6.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.14 M</td>
    <td style="white-space: nowrap; text-align: right">13.23x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">288 B</td>
    <td>18.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1232 B</td>
    <td>77.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.14 M</td>
    <td style="white-space: nowrap; text-align: right">70.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±1161.82%</td>
    <td style="white-space: nowrap; text-align: right">54 ns</td>
    <td style="white-space: nowrap; text-align: right">92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.72 M</td>
    <td style="white-space: nowrap; text-align: right">269.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±769.87%</td>
    <td style="white-space: nowrap; text-align: right">195 ns</td>
    <td style="white-space: nowrap; text-align: right">301.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">278.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±954.28%</td>
    <td style="white-space: nowrap; text-align: right">179 ns</td>
    <td style="white-space: nowrap; text-align: right">355 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.55 M</td>
    <td style="white-space: nowrap; text-align: right">392.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±832.05%</td>
    <td style="white-space: nowrap; text-align: right">220 ns</td>
    <td style="white-space: nowrap; text-align: right">446 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">947.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±821.98%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">18226.35 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.14 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.72 M</td>
    <td style="white-space: nowrap; text-align: right">3.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">3.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.55 M</td>
    <td style="white-space: nowrap; text-align: right">5.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">13.39x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">280 B</td>
    <td>17.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">360 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1072 B</td>
    <td>67.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.48 M</td>
    <td style="white-space: nowrap; text-align: right">74.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±1582.28%</td>
    <td style="white-space: nowrap; text-align: right">53 ns</td>
    <td style="white-space: nowrap; text-align: right">90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">258.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±933.47%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">260.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">283.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±799.31%</td>
    <td style="white-space: nowrap; text-align: right">184 ns</td>
    <td style="white-space: nowrap; text-align: right">379.89 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">676.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±657.47%</td>
    <td style="white-space: nowrap; text-align: right">326 ns</td>
    <td style="white-space: nowrap; text-align: right">1631.23 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.92 M</td>
    <td style="white-space: nowrap; text-align: right">1086.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±767.64%</td>
    <td style="white-space: nowrap; text-align: right">342 ns</td>
    <td style="white-space: nowrap; text-align: right">18373.72 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.87 M</td>
    <td style="white-space: nowrap; text-align: right">3.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">3.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">9.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.92 M</td>
    <td style="white-space: nowrap; text-align: right">14.65x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">248 B</td>
    <td>15.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">768 B</td>
    <td>48.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">912 B</td>
    <td>57.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.19 M</td>
    <td style="white-space: nowrap; text-align: right">70.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±897.32%</td>
    <td style="white-space: nowrap; text-align: right">59 ns</td>
    <td style="white-space: nowrap; text-align: right">98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">284.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±867.50%</td>
    <td style="white-space: nowrap; text-align: right">175 ns</td>
    <td style="white-space: nowrap; text-align: right">407.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.74 M</td>
    <td style="white-space: nowrap; text-align: right">365.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±913.47%</td>
    <td style="white-space: nowrap; text-align: right">195 ns</td>
    <td style="white-space: nowrap; text-align: right">1376.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">500.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±718.66%</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
    <td style="white-space: nowrap; text-align: right">1841.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.46 M</td>
    <td style="white-space: nowrap; text-align: right">2193.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±540.16%</td>
    <td style="white-space: nowrap; text-align: right">622 ns</td>
    <td style="white-space: nowrap; text-align: right">47736.50 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.19 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">4.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.74 M</td>
    <td style="white-space: nowrap; text-align: right">5.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">7.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.46 M</td>
    <td style="white-space: nowrap; text-align: right">31.12x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">304 B</td>
    <td>19.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1184 B</td>
    <td>74.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">16.64 M</td>
    <td style="white-space: nowrap; text-align: right">60.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±599.08%</td>
    <td style="white-space: nowrap; text-align: right">53 ns</td>
    <td style="white-space: nowrap; text-align: right">88.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.34 M</td>
    <td style="white-space: nowrap; text-align: right">298.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±85.64%</td>
    <td style="white-space: nowrap; text-align: right">277 ns</td>
    <td style="white-space: nowrap; text-align: right">728.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">326.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±844.12%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">575.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">370.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±566.67%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">7980.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">3264.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±455.04%</td>
    <td style="white-space: nowrap; text-align: right">893 ns</td>
    <td style="white-space: nowrap; text-align: right">80965.97 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">16.64 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.34 M</td>
    <td style="white-space: nowrap; text-align: right">4.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.06 M</td>
    <td style="white-space: nowrap; text-align: right">5.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">6.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.31 M</td>
    <td style="white-space: nowrap; text-align: right">54.32x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">304 B</td>
    <td>19.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2608 B</td>
    <td>163.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.65 M</td>
    <td style="white-space: nowrap; text-align: right">73.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±953.76%</td>
    <td style="white-space: nowrap; text-align: right">52 ns</td>
    <td style="white-space: nowrap; text-align: right">380 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">322.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±87.34%</td>
    <td style="white-space: nowrap; text-align: right">284 ns</td>
    <td style="white-space: nowrap; text-align: right">1813.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">442.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±358.60%</td>
    <td style="white-space: nowrap; text-align: right">214.50 ns</td>
    <td style="white-space: nowrap; text-align: right">9909.67 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">488.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±690.45%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">821 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">3972.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±373.80%</td>
    <td style="white-space: nowrap; text-align: right">1174 ns</td>
    <td style="white-space: nowrap; text-align: right">76263.98 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.65 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.10 M</td>
    <td style="white-space: nowrap; text-align: right">4.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">6.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">6.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">54.22x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">40 B</td>
    <td>2.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1008 B</td>
    <td>63.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.14 M</td>
    <td style="white-space: nowrap; text-align: right">66.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±905.61%</td>
    <td style="white-space: nowrap; text-align: right">55 ns</td>
    <td style="white-space: nowrap; text-align: right">91 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">233.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±525.40%</td>
    <td style="white-space: nowrap; text-align: right">188 ns</td>
    <td style="white-space: nowrap; text-align: right">619.00 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">318.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±91.33%</td>
    <td style="white-space: nowrap; text-align: right">286 ns</td>
    <td style="white-space: nowrap; text-align: right">1777.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">335.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±334.85%</td>
    <td style="white-space: nowrap; text-align: right">232 ns</td>
    <td style="white-space: nowrap; text-align: right">514.71 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.30 M</td>
    <td style="white-space: nowrap; text-align: right">3323.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±332.88%</td>
    <td style="white-space: nowrap; text-align: right">1449 ns</td>
    <td style="white-space: nowrap; text-align: right">70150.28 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.14 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">3.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">4.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.98 M</td>
    <td style="white-space: nowrap; text-align: right">5.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.30 M</td>
    <td style="white-space: nowrap; text-align: right">50.33x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">352 B</td>
    <td>22.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">4288 B</td>
    <td>268.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.84 M</td>
    <td style="white-space: nowrap; text-align: right">67.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±761.29%</td>
    <td style="white-space: nowrap; text-align: right">59 ns</td>
    <td style="white-space: nowrap; text-align: right">102 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">219.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±312.38%</td>
    <td style="white-space: nowrap; text-align: right">197 ns</td>
    <td style="white-space: nowrap; text-align: right">472.59 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">308.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.24%</td>
    <td style="white-space: nowrap; text-align: right">287 ns</td>
    <td style="white-space: nowrap; text-align: right">1700.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.58 M</td>
    <td style="white-space: nowrap; text-align: right">387.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±392.97%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">11708.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.28 M</td>
    <td style="white-space: nowrap; text-align: right">3525.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±274.92%</td>
    <td style="white-space: nowrap; text-align: right">1741 ns</td>
    <td style="white-space: nowrap; text-align: right">66873.20 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.84 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">3.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">4.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.58 M</td>
    <td style="white-space: nowrap; text-align: right">5.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.28 M</td>
    <td style="white-space: nowrap; text-align: right">52.32x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">328 B</td>
    <td>20.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2688 B</td>
    <td>168.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.10 M</td>
    <td style="white-space: nowrap; text-align: right">66.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±413.99%</td>
    <td style="white-space: nowrap; text-align: right">60 ns</td>
    <td style="white-space: nowrap; text-align: right">101 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.25 M</td>
    <td style="white-space: nowrap; text-align: right">235.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±811.36%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">2126.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.25 M</td>
    <td style="white-space: nowrap; text-align: right">308.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±101.10%</td>
    <td style="white-space: nowrap; text-align: right">286 ns</td>
    <td style="white-space: nowrap; text-align: right">1519.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">351.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±360.41%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">11306.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.26 M</td>
    <td style="white-space: nowrap; text-align: right">3918.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±151.31%</td>
    <td style="white-space: nowrap; text-align: right">2021 ns</td>
    <td style="white-space: nowrap; text-align: right">19449.72 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.25 M</td>
    <td style="white-space: nowrap; text-align: right">3.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.25 M</td>
    <td style="white-space: nowrap; text-align: right">4.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">5.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.26 M</td>
    <td style="white-space: nowrap; text-align: right">59.16x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">456 B</td>
    <td>28.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">336 B</td>
    <td>21.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1088 B</td>
    <td>68.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.11 M</td>
    <td style="white-space: nowrap; text-align: right">76.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±1535.51%</td>
    <td style="white-space: nowrap; text-align: right">58 ns</td>
    <td style="white-space: nowrap; text-align: right">110 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.05 M</td>
    <td style="white-space: nowrap; text-align: right">328.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±107.15%</td>
    <td style="white-space: nowrap; text-align: right">286 ns</td>
    <td style="white-space: nowrap; text-align: right">1769.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">370.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±400.76%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">686.36 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.57 M</td>
    <td style="white-space: nowrap; text-align: right">389.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±119.30%</td>
    <td style="white-space: nowrap; text-align: right">351 ns</td>
    <td style="white-space: nowrap; text-align: right">755.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.21 M</td>
    <td style="white-space: nowrap; text-align: right">4726.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±178.18%</td>
    <td style="white-space: nowrap; text-align: right">2297 ns</td>
    <td style="white-space: nowrap; text-align: right">21913.57 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.11 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.05 M</td>
    <td style="white-space: nowrap; text-align: right">4.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.70 M</td>
    <td style="white-space: nowrap; text-align: right">4.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.57 M</td>
    <td style="white-space: nowrap; text-align: right">5.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.21 M</td>
    <td style="white-space: nowrap; text-align: right">61.98x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">376 B</td>
    <td>23.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">7392 B</td>
    <td>462.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">14.12 M</td>
    <td style="white-space: nowrap; text-align: right">70.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±757.64%</td>
    <td style="white-space: nowrap; text-align: right">60 ns</td>
    <td style="white-space: nowrap; text-align: right">118 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.64 M</td>
    <td style="white-space: nowrap; text-align: right">215.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±187.61%</td>
    <td style="white-space: nowrap; text-align: right">191 ns</td>
    <td style="white-space: nowrap; text-align: right">372.55 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">317.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±59.27%</td>
    <td style="white-space: nowrap; text-align: right">288 ns</td>
    <td style="white-space: nowrap; text-align: right">1656.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.04 M</td>
    <td style="white-space: nowrap; text-align: right">329.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±327.85%</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
    <td style="white-space: nowrap; text-align: right">489.44 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.182 M</td>
    <td style="white-space: nowrap; text-align: right">5485.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±127.66%</td>
    <td style="white-space: nowrap; text-align: right">2592 ns</td>
    <td style="white-space: nowrap; text-align: right">52060.84 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">14.12 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.64 M</td>
    <td style="white-space: nowrap; text-align: right">3.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.15 M</td>
    <td style="white-space: nowrap; text-align: right">4.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.04 M</td>
    <td style="white-space: nowrap; text-align: right">4.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.182 M</td>
    <td style="white-space: nowrap; text-align: right">77.44x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">376 B</td>
    <td>23.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">5792 B</td>
    <td>362.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">12.87 M</td>
    <td style="white-space: nowrap; text-align: right">77.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±817.90%</td>
    <td style="white-space: nowrap; text-align: right">59 ns</td>
    <td style="white-space: nowrap; text-align: right">124.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.77 M</td>
    <td style="white-space: nowrap; text-align: right">209.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±82.92%</td>
    <td style="white-space: nowrap; text-align: right">196 ns</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 M</td>
    <td style="white-space: nowrap; text-align: right">473.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±105.84%</td>
    <td style="white-space: nowrap; text-align: right">420 ns</td>
    <td style="white-space: nowrap; text-align: right">2175.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88 M</td>
    <td style="white-space: nowrap; text-align: right">531.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±368.14%</td>
    <td style="white-space: nowrap; text-align: right">239 ns</td>
    <td style="white-space: nowrap; text-align: right">13345.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.168 M</td>
    <td style="white-space: nowrap; text-align: right">5958.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±101.33%</td>
    <td style="white-space: nowrap; text-align: right">2875 ns</td>
    <td style="white-space: nowrap; text-align: right">22186.65 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">12.87 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.77 M</td>
    <td style="white-space: nowrap; text-align: right">2.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.11 M</td>
    <td style="white-space: nowrap; text-align: right">6.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88 M</td>
    <td style="white-space: nowrap; text-align: right">6.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.168 M</td>
    <td style="white-space: nowrap; text-align: right">76.71x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">960 B</td>
    <td>60.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">376 B</td>
    <td>23.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">4192 B</td>
    <td>262.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.38 M</td>
    <td style="white-space: nowrap; text-align: right">74.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±245.80%</td>
    <td style="white-space: nowrap; text-align: right">66 ns</td>
    <td style="white-space: nowrap; text-align: right">172.53 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">416.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±110.86%</td>
    <td style="white-space: nowrap; text-align: right">387 ns</td>
    <td style="white-space: nowrap; text-align: right">714.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">424.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±335.52%</td>
    <td style="white-space: nowrap; text-align: right">308 ns</td>
    <td style="white-space: nowrap; text-align: right">425.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">554.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±326.70%</td>
    <td style="white-space: nowrap; text-align: right">403.50 ns</td>
    <td style="white-space: nowrap; text-align: right">769.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0885 M</td>
    <td style="white-space: nowrap; text-align: right">11305.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±86.11%</td>
    <td style="white-space: nowrap; text-align: right">5679 ns</td>
    <td style="white-space: nowrap; text-align: right">29742.84 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.38 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">5.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">5.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">7.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0885 M</td>
    <td style="white-space: nowrap; text-align: right">151.23x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">648 B</td>
    <td>40.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">440 B</td>
    <td>27.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">992 B</td>
    <td>62.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">11.52 M</td>
    <td style="white-space: nowrap; text-align: right">86.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±373.33%</td>
    <td style="white-space: nowrap; text-align: right">76 ns</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.89 M</td>
    <td style="white-space: nowrap; text-align: right">345.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±276.17%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">731.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">773.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±92.79%</td>
    <td style="white-space: nowrap; text-align: right">395 ns</td>
    <td style="white-space: nowrap; text-align: right">2467.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.89 M</td>
    <td style="white-space: nowrap; text-align: right">1129.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±416.32%</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
    <td style="white-space: nowrap; text-align: right">28508.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0330 M</td>
    <td style="white-space: nowrap; text-align: right">30258.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±41.74%</td>
    <td style="white-space: nowrap; text-align: right">36177 ns</td>
    <td style="white-space: nowrap; text-align: right">54257.16 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">11.52 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.89 M</td>
    <td style="white-space: nowrap; text-align: right">3.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">8.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.89 M</td>
    <td style="white-space: nowrap; text-align: right">13.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0330 M</td>
    <td style="white-space: nowrap; text-align: right">348.71x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">456 B</td>
    <td>28.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">5680 B</td>
    <td>355.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">10.61 M</td>
    <td style="white-space: nowrap; text-align: right">94.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±47.14%</td>
    <td style="white-space: nowrap; text-align: right">88 ns</td>
    <td style="white-space: nowrap; text-align: right">207.70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">376.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±15.51%</td>
    <td style="white-space: nowrap; text-align: right">366 ns</td>
    <td style="white-space: nowrap; text-align: right">645.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">442.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±109.79%</td>
    <td style="white-space: nowrap; text-align: right">418 ns</td>
    <td style="white-space: nowrap; text-align: right">555.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">674.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±14.62%</td>
    <td style="white-space: nowrap; text-align: right">685 ns</td>
    <td style="white-space: nowrap; text-align: right">903.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0338 M</td>
    <td style="white-space: nowrap; text-align: right">29575.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±75.27%</td>
    <td style="white-space: nowrap; text-align: right">23270 ns</td>
    <td style="white-space: nowrap; text-align: right">103112.68 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">10.61 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">3.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">4.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">7.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0338 M</td>
    <td style="white-space: nowrap; text-align: right">313.84x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">448 B</td>
    <td>28.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">23168 B</td>
    <td>1448.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">9.73 M</td>
    <td style="white-space: nowrap; text-align: right">102.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±35.39%</td>
    <td style="white-space: nowrap; text-align: right">94 ns</td>
    <td style="white-space: nowrap; text-align: right">255.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">424.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±40.98%</td>
    <td style="white-space: nowrap; text-align: right">400 ns</td>
    <td style="white-space: nowrap; text-align: right">1579.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.13 M</td>
    <td style="white-space: nowrap; text-align: right">469.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±17.25%</td>
    <td style="white-space: nowrap; text-align: right">462 ns</td>
    <td style="white-space: nowrap; text-align: right">605.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">1420.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±450.44%</td>
    <td style="white-space: nowrap; text-align: right">551 ns</td>
    <td style="white-space: nowrap; text-align: right">49111.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0207 M</td>
    <td style="white-space: nowrap; text-align: right">48367.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±45.42%</td>
    <td style="white-space: nowrap; text-align: right">58043 ns</td>
    <td style="white-space: nowrap; text-align: right">77021 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">9.73 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.35 M</td>
    <td style="white-space: nowrap; text-align: right">4.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.13 M</td>
    <td style="white-space: nowrap; text-align: right">4.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">13.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0207 M</td>
    <td style="white-space: nowrap; text-align: right">470.54x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">488 B</td>
    <td>30.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">7168 B</td>
    <td>448.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">8735.21 K</td>
    <td style="white-space: nowrap; text-align: right">0.114 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.54%</td>
    <td style="white-space: nowrap; text-align: right">0.108 μs</td>
    <td style="white-space: nowrap; text-align: right">0.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2007.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.05%</td>
    <td style="white-space: nowrap; text-align: right">0.48 μs</td>
    <td style="white-space: nowrap; text-align: right">1.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">806.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.67%</td>
    <td style="white-space: nowrap; text-align: right">0.82 μs</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">488.97 K</td>
    <td style="white-space: nowrap; text-align: right">2.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±396.71%</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
    <td style="white-space: nowrap; text-align: right">45.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">47.36 K</td>
    <td style="white-space: nowrap; text-align: right">21.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.80%</td>
    <td style="white-space: nowrap; text-align: right">16.93 μs</td>
    <td style="white-space: nowrap; text-align: right">83.14 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">8735.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2007.73 K</td>
    <td style="white-space: nowrap; text-align: right">4.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">806.85 K</td>
    <td style="white-space: nowrap; text-align: right">10.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">488.97 K</td>
    <td style="white-space: nowrap; text-align: right">17.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">47.36 K</td>
    <td style="white-space: nowrap; text-align: right">184.43x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">496 B</td>
    <td>31.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">45360 B</td>
    <td>2835.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">8.21 M</td>
    <td style="white-space: nowrap; text-align: right">121.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±54.11%</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
    <td style="white-space: nowrap; text-align: right">259.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.32 M</td>
    <td style="white-space: nowrap; text-align: right">430.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±60.40%</td>
    <td style="white-space: nowrap; text-align: right">395 ns</td>
    <td style="white-space: nowrap; text-align: right">1022.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">480.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±30.64%</td>
    <td style="white-space: nowrap; text-align: right">452.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1424.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">490.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±25.82%</td>
    <td style="white-space: nowrap; text-align: right">470 ns</td>
    <td style="white-space: nowrap; text-align: right">1122.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0240 M</td>
    <td style="white-space: nowrap; text-align: right">41652.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±67.47%</td>
    <td style="white-space: nowrap; text-align: right">41834 ns</td>
    <td style="white-space: nowrap; text-align: right">111977 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">8.21 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.32 M</td>
    <td style="white-space: nowrap; text-align: right">3.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">3.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">4.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0240 M</td>
    <td style="white-space: nowrap; text-align: right">341.87x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">488 B</td>
    <td>30.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">29360 B</td>
    <td>1835.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">7.44 M</td>
    <td style="white-space: nowrap; text-align: right">134.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±30.98%</td>
    <td style="white-space: nowrap; text-align: right">130 ns</td>
    <td style="white-space: nowrap; text-align: right">240.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">488.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±19.24%</td>
    <td style="white-space: nowrap; text-align: right">479 ns</td>
    <td style="white-space: nowrap; text-align: right">696.36 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.99 M</td>
    <td style="white-space: nowrap; text-align: right">501.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±34.69%</td>
    <td style="white-space: nowrap; text-align: right">448.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1613.23 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.20 M</td>
    <td style="white-space: nowrap; text-align: right">829.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±17.96%</td>
    <td style="white-space: nowrap; text-align: right">818 ns</td>
    <td style="white-space: nowrap; text-align: right">1609.01 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0129 M</td>
    <td style="white-space: nowrap; text-align: right">77497.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±55.27%</td>
    <td style="white-space: nowrap; text-align: right">95198 ns</td>
    <td style="white-space: nowrap; text-align: right">136758.71 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">7.44 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.05 M</td>
    <td style="white-space: nowrap; text-align: right">3.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.99 M</td>
    <td style="white-space: nowrap; text-align: right">3.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.20 M</td>
    <td style="white-space: nowrap; text-align: right">6.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0129 M</td>
    <td style="white-space: nowrap; text-align: right">576.85x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">496 B</td>
    <td>31.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">13360 B</td>
    <td>835.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">7.20 M</td>
    <td style="white-space: nowrap; text-align: right">138.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±84.08%</td>
    <td style="white-space: nowrap; text-align: right">134 ns</td>
    <td style="white-space: nowrap; text-align: right">260.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">542.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±20.56%</td>
    <td style="white-space: nowrap; text-align: right">513 ns</td>
    <td style="white-space: nowrap; text-align: right">1012.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">614.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±52.62%</td>
    <td style="white-space: nowrap; text-align: right">503.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1876.49 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.10 M</td>
    <td style="white-space: nowrap; text-align: right">906.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±169.30%</td>
    <td style="white-space: nowrap; text-align: right">627 ns</td>
    <td style="white-space: nowrap; text-align: right">11466.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00606 M</td>
    <td style="white-space: nowrap; text-align: right">164955.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±47.65%</td>
    <td style="white-space: nowrap; text-align: right">210720 ns</td>
    <td style="white-space: nowrap; text-align: right">284088.61 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">7.20 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">3.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">4.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.10 M</td>
    <td style="white-space: nowrap; text-align: right">6.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00606 M</td>
    <td style="white-space: nowrap; text-align: right">1187.87x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">744 B</td>
    <td>46.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">496 B</td>
    <td>31.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">256 B</td>
    <td>16.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">85024 B</td>
    <td>5314.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">5.61 M</td>
    <td style="white-space: nowrap; text-align: right">178.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±57.22%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">516 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.53 M</td>
    <td style="white-space: nowrap; text-align: right">652.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±42.72%</td>
    <td style="white-space: nowrap; text-align: right">611.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1917.79 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.03 M</td>
    <td style="white-space: nowrap; text-align: right">973.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±48.86%</td>
    <td style="white-space: nowrap; text-align: right">900 ns</td>
    <td style="white-space: nowrap; text-align: right">3687.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.59 M</td>
    <td style="white-space: nowrap; text-align: right">1707.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±62.75%</td>
    <td style="white-space: nowrap; text-align: right">1544 ns</td>
    <td style="white-space: nowrap; text-align: right">5701.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0300 M</td>
    <td style="white-space: nowrap; text-align: right">33336.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±34.18%</td>
    <td style="white-space: nowrap; text-align: right">29363 ns</td>
    <td style="white-space: nowrap; text-align: right">76174.00 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">5.61 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.53 M</td>
    <td style="white-space: nowrap; text-align: right">3.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.03 M</td>
    <td style="white-space: nowrap; text-align: right">5.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.59 M</td>
    <td style="white-space: nowrap; text-align: right">9.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0300 M</td>
    <td style="white-space: nowrap; text-align: right">187.1x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">488 B</td>
    <td>30.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1152 B</td>
    <td>72.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">69024 B</td>
    <td>4314.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1772.53 K</td>
    <td style="white-space: nowrap; text-align: right">0.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±63.92%</td>
    <td style="white-space: nowrap; text-align: right">0.53 μs</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1175.74 K</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.03%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">3.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">939.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.64%</td>
    <td style="white-space: nowrap; text-align: right">1.07 μs</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">288.90 K</td>
    <td style="white-space: nowrap; text-align: right">3.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.32%</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">15.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">5.80 K</td>
    <td style="white-space: nowrap; text-align: right">172.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.69%</td>
    <td style="white-space: nowrap; text-align: right">96.78 μs</td>
    <td style="white-space: nowrap; text-align: right">374.36 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1772.53 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1175.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">939.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">288.90 K</td>
    <td style="white-space: nowrap; text-align: right">6.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">5.80 K</td>
    <td style="white-space: nowrap; text-align: right">305.42x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">544 B</td>
    <td>34.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">50880 B</td>
    <td>3180.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1377.41 K</td>
    <td style="white-space: nowrap; text-align: right">0.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.77%</td>
    <td style="white-space: nowrap; text-align: right">0.70 μs</td>
    <td style="white-space: nowrap; text-align: right">3.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">927.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.31%</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">709.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.82%</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
    <td style="white-space: nowrap; text-align: right">13.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">282.66 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.04%</td>
    <td style="white-space: nowrap; text-align: right">3.47 μs</td>
    <td style="white-space: nowrap; text-align: right">5.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">9.64 K</td>
    <td style="white-space: nowrap; text-align: right">103.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.66%</td>
    <td style="white-space: nowrap; text-align: right">100 μs</td>
    <td style="white-space: nowrap; text-align: right">184.45 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1377.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">927.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">709.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">282.66 K</td>
    <td style="white-space: nowrap; text-align: right">4.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">9.64 K</td>
    <td style="white-space: nowrap; text-align: right">142.88x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">120416 B</td>
    <td>7526.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1236.30 K</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.91%</td>
    <td style="white-space: nowrap; text-align: right">0.72 μs</td>
    <td style="white-space: nowrap; text-align: right">8.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">953.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.00%</td>
    <td style="white-space: nowrap; text-align: right">1.03 μs</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">876.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.39%</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
    <td style="white-space: nowrap; text-align: right">1.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">289.02 K</td>
    <td style="white-space: nowrap; text-align: right">3.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.80%</td>
    <td style="white-space: nowrap; text-align: right">3.44 μs</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.01 K</td>
    <td style="white-space: nowrap; text-align: right">332.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.77%</td>
    <td style="white-space: nowrap; text-align: right">299.33 μs</td>
    <td style="white-space: nowrap; text-align: right">688.45 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1236.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">953.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">876.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">289.02 K</td>
    <td style="white-space: nowrap; text-align: right">4.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.01 K</td>
    <td style="white-space: nowrap; text-align: right">411.09x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">331792 B</td>
    <td>20737.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1282.55 K</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.47%</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">5.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1006.53 K</td>
    <td style="white-space: nowrap; text-align: right">0.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.26%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">3.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">880.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.44%</td>
    <td style="white-space: nowrap; text-align: right">1.12 μs</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">252.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.16%</td>
    <td style="white-space: nowrap; text-align: right">3.52 μs</td>
    <td style="white-space: nowrap; text-align: right">16.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.90 K</td>
    <td style="white-space: nowrap; text-align: right">344.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.25%</td>
    <td style="white-space: nowrap; text-align: right">175.17 μs</td>
    <td style="white-space: nowrap; text-align: right">730.67 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1282.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1006.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">880.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">252.71 K</td>
    <td style="white-space: nowrap; text-align: right">5.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.90 K</td>
    <td style="white-space: nowrap; text-align: right">441.8x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">171792 B</td>
    <td>10737.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1257.98 K</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.34%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1061.95 K</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.83%</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">597.94 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±154.52%</td>
    <td style="white-space: nowrap; text-align: right">1.15 μs</td>
    <td style="white-space: nowrap; text-align: right">16.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">266.87 K</td>
    <td style="white-space: nowrap; text-align: right">3.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.10%</td>
    <td style="white-space: nowrap; text-align: right">3.74 μs</td>
    <td style="white-space: nowrap; text-align: right">4.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.19 K</td>
    <td style="white-space: nowrap; text-align: right">456.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±36.22%</td>
    <td style="white-space: nowrap; text-align: right">459.94 μs</td>
    <td style="white-space: nowrap; text-align: right">1232.58 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1257.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1061.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">597.94 K</td>
    <td style="white-space: nowrap; text-align: right">2.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">266.87 K</td>
    <td style="white-space: nowrap; text-align: right">4.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.19 K</td>
    <td style="white-space: nowrap; text-align: right">574.43x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">552 B</td>
    <td>34.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">11792 B</td>
    <td>737.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">0.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.73%</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
    <td style="white-space: nowrap; text-align: right">4.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.03 M</td>
    <td style="white-space: nowrap; text-align: right">0.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.44%</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">1.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.72%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">4.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.83%</td>
    <td style="white-space: nowrap; text-align: right">3.99 μs</td>
    <td style="white-space: nowrap; text-align: right">6.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00087 M</td>
    <td style="white-space: nowrap; text-align: right">1149.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.34%</td>
    <td style="white-space: nowrap; text-align: right">1187.79 μs</td>
    <td style="white-space: nowrap; text-align: right">1734.48 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1.06 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">4.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00087 M</td>
    <td style="white-space: nowrap; text-align: right">1213.93x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">452704 B</td>
    <td>28294.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1319.26 K</td>
    <td style="white-space: nowrap; text-align: right">0.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.57%</td>
    <td style="white-space: nowrap; text-align: right">0.74 μs</td>
    <td style="white-space: nowrap; text-align: right">1.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">836.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.69%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">1.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">720.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.76%</td>
    <td style="white-space: nowrap; text-align: right">1.09 μs</td>
    <td style="white-space: nowrap; text-align: right">6.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">222.30 K</td>
    <td style="white-space: nowrap; text-align: right">4.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.98%</td>
    <td style="white-space: nowrap; text-align: right">4.10 μs</td>
    <td style="white-space: nowrap; text-align: right">16.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">793.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±69.94%</td>
    <td style="white-space: nowrap; text-align: right">496.65 μs</td>
    <td style="white-space: nowrap; text-align: right">1562.55 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1319.26 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">836.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">720.41 K</td>
    <td style="white-space: nowrap; text-align: right">1.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">222.30 K</td>
    <td style="white-space: nowrap; text-align: right">5.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">1047.07x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">592 B</td>
    <td>37.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">292704 B</td>
    <td>18294.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1263.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.31%</td>
    <td style="white-space: nowrap; text-align: right">0.73 μs</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">845.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.76%</td>
    <td style="white-space: nowrap; text-align: right">1.08 μs</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">815.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.04%</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">246.53 K</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.52%</td>
    <td style="white-space: nowrap; text-align: right">4.07 μs</td>
    <td style="white-space: nowrap; text-align: right">4.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.59 K</td>
    <td style="white-space: nowrap; text-align: right">629.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±51.22%</td>
    <td style="white-space: nowrap; text-align: right">381.60 μs</td>
    <td style="white-space: nowrap; text-align: right">1062.98 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1263.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">845.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">815.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">246.53 K</td>
    <td style="white-space: nowrap; text-align: right">5.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.59 K</td>
    <td style="white-space: nowrap; text-align: right">795.08x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">624 B</td>
    <td>39.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">936 B</td>
    <td>58.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">132704 B</td>
    <td>8294.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1193.62 K</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.54%</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
    <td style="white-space: nowrap; text-align: right">1.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">898.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.04%</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">517.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.08%</td>
    <td style="white-space: nowrap; text-align: right">1.66 μs</td>
    <td style="white-space: nowrap; text-align: right">6.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">224.57 K</td>
    <td style="white-space: nowrap; text-align: right">4.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.31%</td>
    <td style="white-space: nowrap; text-align: right">4.05 μs</td>
    <td style="white-space: nowrap; text-align: right">16.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.52 K</td>
    <td style="white-space: nowrap; text-align: right">659.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±68.71%</td>
    <td style="white-space: nowrap; text-align: right">429.71 μs</td>
    <td style="white-space: nowrap; text-align: right">1709.26 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1193.62 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">898.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">517.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">224.57 K</td>
    <td style="white-space: nowrap; text-align: right">5.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.52 K</td>
    <td style="white-space: nowrap; text-align: right">787.18x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">632 B</td>
    <td>39.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1344 B</td>
    <td>84.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">945008 B</td>
    <td>59063.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1179.48 K</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.00%</td>
    <td style="white-space: nowrap; text-align: right">0.76 μs</td>
    <td style="white-space: nowrap; text-align: right">1.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">817.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.16%</td>
    <td style="white-space: nowrap; text-align: right">1.12 μs</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">496.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.63%</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">7.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">241.16 K</td>
    <td style="white-space: nowrap; text-align: right">4.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.58%</td>
    <td style="white-space: nowrap; text-align: right">4.14 μs</td>
    <td style="white-space: nowrap; text-align: right">4.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 K</td>
    <td style="white-space: nowrap; text-align: right">2921.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±48.59%</td>
    <td style="white-space: nowrap; text-align: right">3213.27 μs</td>
    <td style="white-space: nowrap; text-align: right">4331.88 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1179.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">817.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">496.20 K</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">241.16 K</td>
    <td style="white-space: nowrap; text-align: right">4.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 K</td>
    <td style="white-space: nowrap; text-align: right">3446.03x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">640 B</td>
    <td>40.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">918208 B</td>
    <td>57388.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">994.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.85%</td>
    <td style="white-space: nowrap; text-align: right">0.83 μs</td>
    <td style="white-space: nowrap; text-align: right">1.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">749.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.57%</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">739.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.29%</td>
    <td style="white-space: nowrap; text-align: right">1.30 μs</td>
    <td style="white-space: nowrap; text-align: right">1.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">231.58 K</td>
    <td style="white-space: nowrap; text-align: right">4.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.63%</td>
    <td style="white-space: nowrap; text-align: right">4.39 μs</td>
    <td style="white-space: nowrap; text-align: right">4.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">3981.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.22%</td>
    <td style="white-space: nowrap; text-align: right">5634.50 μs</td>
    <td style="white-space: nowrap; text-align: right">6400.23 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">994.88 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">749.44 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">739.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">231.58 K</td>
    <td style="white-space: nowrap; text-align: right">4.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">3961.04x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1863712 B</td>
    <td>116482.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1056.64 K</td>
    <td style="white-space: nowrap; text-align: right">0.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.18%</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">823.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.74%</td>
    <td style="white-space: nowrap; text-align: right">1.19 μs</td>
    <td style="white-space: nowrap; text-align: right">1.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">766.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.34%</td>
    <td style="white-space: nowrap; text-align: right">1.33 μs</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">227.08 K</td>
    <td style="white-space: nowrap; text-align: right">4.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.28%</td>
    <td style="white-space: nowrap; text-align: right">4.27 μs</td>
    <td style="white-space: nowrap; text-align: right">5.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.159 K</td>
    <td style="white-space: nowrap; text-align: right">6291.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.09%</td>
    <td style="white-space: nowrap; text-align: right">7595.32 μs</td>
    <td style="white-space: nowrap; text-align: right">7814.51 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1056.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">823.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">766.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">227.08 K</td>
    <td style="white-space: nowrap; text-align: right">4.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.159 K</td>
    <td style="white-space: nowrap; text-align: right">6648.22x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">680 B</td>
    <td>42.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">263712 B</td>
    <td>16482.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">993.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.30%</td>
    <td style="white-space: nowrap; text-align: right">1.06 μs</td>
    <td style="white-space: nowrap; text-align: right">1.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">801.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.17%</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">699.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.04%</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">247.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.17%</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
    <td style="white-space: nowrap; text-align: right">4.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.110 K</td>
    <td style="white-space: nowrap; text-align: right">9111.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.75%</td>
    <td style="white-space: nowrap; text-align: right">8932.32 μs</td>
    <td style="white-space: nowrap; text-align: right">10542.53 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">993.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">801.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">699.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">247.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.110 K</td>
    <td style="white-space: nowrap; text-align: right">9049.96x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">672 B</td>
    <td>42.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1595968 B</td>
    <td>99748.0x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">825.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.67%</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">717.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.26%</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">505.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.83%</td>
    <td style="white-space: nowrap; text-align: right">1.17 μs</td>
    <td style="white-space: nowrap; text-align: right">3.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">238.25 K</td>
    <td style="white-space: nowrap; text-align: right">4.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.37%</td>
    <td style="white-space: nowrap; text-align: right">4.20 μs</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">3135.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.31%</td>
    <td style="white-space: nowrap; text-align: right">3139.62 μs</td>
    <td style="white-space: nowrap; text-align: right">3142.49 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">825.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">717.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">505.65 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">238.25 K</td>
    <td style="white-space: nowrap; text-align: right">3.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">2588.52x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">672 B</td>
    <td>0.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>0.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1915248 B</td>
    <td>1697.91x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">847.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.67%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">801.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.93%</td>
    <td style="white-space: nowrap; text-align: right">1.25 μs</td>
    <td style="white-space: nowrap; text-align: right">1.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">664.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.56%</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
    <td style="white-space: nowrap; text-align: right">1.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">253.02 K</td>
    <td style="white-space: nowrap; text-align: right">3.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.42%</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4332.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.51%</td>
    <td style="white-space: nowrap; text-align: right">3473.96 μs</td>
    <td style="white-space: nowrap; text-align: right">6493.83 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">847.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">801.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">664.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">253.02 K</td>
    <td style="white-space: nowrap; text-align: right">3.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">3672.45x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">315248 B</td>
    <td>19703.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">903.61 K</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.61%</td>
    <td style="white-space: nowrap; text-align: right">1.06 μs</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">718.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.38%</td>
    <td style="white-space: nowrap; text-align: right">1.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">673.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.06%</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">1.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">232.45 K</td>
    <td style="white-space: nowrap; text-align: right">4.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.16%</td>
    <td style="white-space: nowrap; text-align: right">4.42 μs</td>
    <td style="white-space: nowrap; text-align: right">4.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3635.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.64%</td>
    <td style="white-space: nowrap; text-align: right">3620.59 μs</td>
    <td style="white-space: nowrap; text-align: right">3737.82 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">903.61 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">718.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">673.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">232.45 K</td>
    <td style="white-space: nowrap; text-align: right">3.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3284.97x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">688 B</td>
    <td>43.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
    <td>70.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1018400 B</td>
    <td>63650.0x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">909.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.41%</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">865.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.40%</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
    <td style="white-space: nowrap; text-align: right">1.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">611.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.07%</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">235.93 K</td>
    <td style="white-space: nowrap; text-align: right">4.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.42%</td>
    <td style="white-space: nowrap; text-align: right">4.24 μs</td>
    <td style="white-space: nowrap; text-align: right">4.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0925 K</td>
    <td style="white-space: nowrap; text-align: right">10811.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.11%</td>
    <td style="white-space: nowrap; text-align: right">10811.83 μs</td>
    <td style="white-space: nowrap; text-align: right">16324.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">909.50 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">865.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">611.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">235.93 K</td>
    <td style="white-space: nowrap; text-align: right">3.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0925 K</td>
    <td style="white-space: nowrap; text-align: right">9833.41x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1128 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">736 B</td>
    <td>0.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>0.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2182176 B</td>
    <td>1934.55x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">846.02 K</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.90%</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
    <td style="white-space: nowrap; text-align: right">1.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">608.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.06%</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">1.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">282.33 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">223.39 K</td>
    <td style="white-space: nowrap; text-align: right">4.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.94%</td>
    <td style="white-space: nowrap; text-align: right">4.48 μs</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0469 K</td>
    <td style="white-space: nowrap; text-align: right">21337.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.75%</td>
    <td style="white-space: nowrap; text-align: right">21337.50 μs</td>
    <td style="white-space: nowrap; text-align: right">22205.27 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">846.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">608.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">282.33 K</td>
    <td style="white-space: nowrap; text-align: right">3.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">223.39 K</td>
    <td style="white-space: nowrap; text-align: right">3.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0469 K</td>
    <td style="white-space: nowrap; text-align: right">18052.03x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1536 B</td>
    <td>96.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">720 B</td>
    <td>45.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (A.Vector)</td>
    <td style="white-space: nowrap">824 B</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">582176 B</td>
    <td>36386.0x</td>
  </tr>

</table>


<hr/>

