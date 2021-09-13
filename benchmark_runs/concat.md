
# Benchmark

Comparing `Arrays.concat` with `Kernel.++`,
by concatenating two collections of the same size.


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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">18.53 M</td>
    <td style="white-space: nowrap; text-align: right">53.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±1246.93%</td>
    <td style="white-space: nowrap; text-align: right">43 ns</td>
    <td style="white-space: nowrap; text-align: right">67 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">566.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±698.55%</td>
    <td style="white-space: nowrap; text-align: right">307 ns</td>
    <td style="white-space: nowrap; text-align: right">755 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">676.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±566.15%</td>
    <td style="white-space: nowrap; text-align: right">427 ns</td>
    <td style="white-space: nowrap; text-align: right">931 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">700.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±500.30%</td>
    <td style="white-space: nowrap; text-align: right">483 ns</td>
    <td style="white-space: nowrap; text-align: right">899 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">18.53 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">10.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">12.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">12.98x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">576 B</td>
    <td>36.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">456 B</td>
    <td>28.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">384 B</td>
    <td>24.0x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">17.48 M</td>
    <td style="white-space: nowrap; text-align: right">57.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±1144.51%</td>
    <td style="white-space: nowrap; text-align: right">45 ns</td>
    <td style="white-space: nowrap; text-align: right">74 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">677.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±655.15%</td>
    <td style="white-space: nowrap; text-align: right">352 ns</td>
    <td style="white-space: nowrap; text-align: right">810 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.05 M</td>
    <td style="white-space: nowrap; text-align: right">955.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±428.02%</td>
    <td style="white-space: nowrap; text-align: right">656 ns</td>
    <td style="white-space: nowrap; text-align: right">1160 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.04 M</td>
    <td style="white-space: nowrap; text-align: right">959.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±475.39%</td>
    <td style="white-space: nowrap; text-align: right">609 ns</td>
    <td style="white-space: nowrap; text-align: right">1139.73 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">17.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">11.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.05 M</td>
    <td style="white-space: nowrap; text-align: right">16.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.04 M</td>
    <td style="white-space: nowrap; text-align: right">16.76x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">32 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">720 B</td>
    <td>22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">584 B</td>
    <td>18.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">680 B</td>
    <td>21.25x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">14.41 M</td>
    <td style="white-space: nowrap; text-align: right">0.0694 μs</td>
    <td style="white-space: nowrap; text-align: right">±1417.29%</td>
    <td style="white-space: nowrap; text-align: right">0.0480 μs</td>
    <td style="white-space: nowrap; text-align: right">0.0810 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.39 M</td>
    <td style="white-space: nowrap; text-align: right">0.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±610.28%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.81 M</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±416.45%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">5.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±373.70%</td>
    <td style="white-space: nowrap; text-align: right">0.88 μs</td>
    <td style="white-space: nowrap; text-align: right">1.65 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">14.41 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.39 M</td>
    <td style="white-space: nowrap; text-align: right">10.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.81 M</td>
    <td style="white-space: nowrap; text-align: right">17.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">18.55x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">48 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">816 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">904 B</td>
    <td>18.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">832 B</td>
    <td>17.33x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">11.46 M</td>
    <td style="white-space: nowrap; text-align: right">0.0872 μs</td>
    <td style="white-space: nowrap; text-align: right">±1620.47%</td>
    <td style="white-space: nowrap; text-align: right">0.0530 μs</td>
    <td style="white-space: nowrap; text-align: right">0.103 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">0.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±568.41%</td>
    <td style="white-space: nowrap; text-align: right">0.44 μs</td>
    <td style="white-space: nowrap; text-align: right">0.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.76 M</td>
    <td style="white-space: nowrap; text-align: right">1.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±289.16%</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">5.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±329.02%</td>
    <td style="white-space: nowrap; text-align: right">1.12 μs</td>
    <td style="white-space: nowrap; text-align: right">19.84 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">11.46 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">8.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.76 M</td>
    <td style="white-space: nowrap; text-align: right">15.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.61 M</td>
    <td style="white-space: nowrap; text-align: right">18.82x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0625 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.89 KB</td>
    <td>14.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.10 KB</td>
    <td>17.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.10 KB</td>
    <td>17.63x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">11.49 M</td>
    <td style="white-space: nowrap; text-align: right">0.0870 μs</td>
    <td style="white-space: nowrap; text-align: right">±1445.27%</td>
    <td style="white-space: nowrap; text-align: right">0.0550 μs</td>
    <td style="white-space: nowrap; text-align: right">0.0950 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.14 M</td>
    <td style="white-space: nowrap; text-align: right">0.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±547.63%</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
    <td style="white-space: nowrap; text-align: right">1.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±348.63%</td>
    <td style="white-space: nowrap; text-align: right">1.14 μs</td>
    <td style="white-space: nowrap; text-align: right">1.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±317.46%</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
    <td style="white-space: nowrap; text-align: right">23.80 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">11.49 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.14 M</td>
    <td style="white-space: nowrap; text-align: right">10.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.68 M</td>
    <td style="white-space: nowrap; text-align: right">17.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">23.69x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0781 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.98 KB</td>
    <td>12.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.32 KB</td>
    <td>16.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.44 KB</td>
    <td>18.4x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8.64 M</td>
    <td style="white-space: nowrap; text-align: right">0.116 μs</td>
    <td style="white-space: nowrap; text-align: right">±1599.01%</td>
    <td style="white-space: nowrap; text-align: right">0.0640 μs</td>
    <td style="white-space: nowrap; text-align: right">0.118 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.49 M</td>
    <td style="white-space: nowrap; text-align: right">0.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±238.80%</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">2.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±227.76%</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
    <td style="white-space: nowrap; text-align: right">22.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 M</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±270.48%</td>
    <td style="white-space: nowrap; text-align: right">1.61 μs</td>
    <td style="white-space: nowrap; text-align: right">22.17 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">8.64 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.49 M</td>
    <td style="white-space: nowrap; text-align: right">5.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">17.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 M</td>
    <td style="white-space: nowrap; text-align: right">19.37x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0938 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.08 KB</td>
    <td>11.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.02 KB</td>
    <td>21.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.82 KB</td>
    <td>19.42x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.14 M</td>
    <td style="white-space: nowrap; text-align: right">0.0986 μs</td>
    <td style="white-space: nowrap; text-align: right">±1597.81%</td>
    <td style="white-space: nowrap; text-align: right">0.0590 μs</td>
    <td style="white-space: nowrap; text-align: right">0.111 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±392.30%</td>
    <td style="white-space: nowrap; text-align: right">0.60 μs</td>
    <td style="white-space: nowrap; text-align: right">5.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.39 M</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±263.44%</td>
    <td style="white-space: nowrap; text-align: right">1.86 μs</td>
    <td style="white-space: nowrap; text-align: right">34.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±297.13%</td>
    <td style="white-space: nowrap; text-align: right">1.76 μs</td>
    <td style="white-space: nowrap; text-align: right">51.90 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">10.14 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">9.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.39 M</td>
    <td style="white-space: nowrap; text-align: right">25.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">30.26x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.109 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.16 KB</td>
    <td>10.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.25 KB</td>
    <td>20.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.43 KB</td>
    <td>22.21x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9037.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.111 μs</td>
    <td style="white-space: nowrap; text-align: right">±1339.14%</td>
    <td style="white-space: nowrap; text-align: right">0.0720 μs</td>
    <td style="white-space: nowrap; text-align: right">0.123 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">812.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±479.97%</td>
    <td style="white-space: nowrap; text-align: right">0.64 μs</td>
    <td style="white-space: nowrap; text-align: right">20.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">382.64 K</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±190.71%</td>
    <td style="white-space: nowrap; text-align: right">1.98 μs</td>
    <td style="white-space: nowrap; text-align: right">34.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">292.52 K</td>
    <td style="white-space: nowrap; text-align: right">3.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±248.62%</td>
    <td style="white-space: nowrap; text-align: right">2.13 μs</td>
    <td style="white-space: nowrap; text-align: right">54.25 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9037.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">812.21 K</td>
    <td style="white-space: nowrap; text-align: right">11.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">382.64 K</td>
    <td style="white-space: nowrap; text-align: right">23.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">292.52 K</td>
    <td style="white-space: nowrap; text-align: right">30.9x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.125 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.27 KB</td>
    <td>10.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.74 KB</td>
    <td>21.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.73 KB</td>
    <td>21.81x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8094.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.124 μs</td>
    <td style="white-space: nowrap; text-align: right">±1485.92%</td>
    <td style="white-space: nowrap; text-align: right">0.0700 μs</td>
    <td style="white-space: nowrap; text-align: right">0.146 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">677.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±446.73%</td>
    <td style="white-space: nowrap; text-align: right">0.75 μs</td>
    <td style="white-space: nowrap; text-align: right">33.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">334.21 K</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±186.07%</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">34.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">252.43 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±231.49%</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">54.32 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">8094.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">677.25 K</td>
    <td style="white-space: nowrap; text-align: right">11.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">334.21 K</td>
    <td style="white-space: nowrap; text-align: right">24.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">252.43 K</td>
    <td style="white-space: nowrap; text-align: right">32.07x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.141 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.58 KB</td>
    <td>11.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.98 KB</td>
    <td>21.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.25 KB</td>
    <td>23.11x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">7224.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.138 μs</td>
    <td style="white-space: nowrap; text-align: right">±1502.44%</td>
    <td style="white-space: nowrap; text-align: right">0.0780 μs</td>
    <td style="white-space: nowrap; text-align: right">0.117 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">644.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±423.64%</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">33.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">236.44 K</td>
    <td style="white-space: nowrap; text-align: right">4.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±238.06%</td>
    <td style="white-space: nowrap; text-align: right">2.44 μs</td>
    <td style="white-space: nowrap; text-align: right">55.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">221.74 K</td>
    <td style="white-space: nowrap; text-align: right">4.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±220.40%</td>
    <td style="white-space: nowrap; text-align: right">2.69 μs</td>
    <td style="white-space: nowrap; text-align: right">54.75 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">7224.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">644.21 K</td>
    <td style="white-space: nowrap; text-align: right">11.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">236.44 K</td>
    <td style="white-space: nowrap; text-align: right">30.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">221.74 K</td>
    <td style="white-space: nowrap; text-align: right">32.58x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.156 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.67 KB</td>
    <td>10.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.55 KB</td>
    <td>22.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.82 KB</td>
    <td>24.45x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5444.17 K</td>
    <td style="white-space: nowrap; text-align: right">0.184 μs</td>
    <td style="white-space: nowrap; text-align: right">±1110.72%</td>
    <td style="white-space: nowrap; text-align: right">0.0960 μs</td>
    <td style="white-space: nowrap; text-align: right">0.145 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">394.76 K</td>
    <td style="white-space: nowrap; text-align: right">2.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±330.50%</td>
    <td style="white-space: nowrap; text-align: right">1.28 μs</td>
    <td style="white-space: nowrap; text-align: right">51.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">151.84 K</td>
    <td style="white-space: nowrap; text-align: right">6.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.72%</td>
    <td style="white-space: nowrap; text-align: right">4.82 μs</td>
    <td style="white-space: nowrap; text-align: right">54.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">75.25 K</td>
    <td style="white-space: nowrap; text-align: right">13.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.89%</td>
    <td style="white-space: nowrap; text-align: right">8.15 μs</td>
    <td style="white-space: nowrap; text-align: right">90.21 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">5444.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">394.76 K</td>
    <td style="white-space: nowrap; text-align: right">13.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">151.84 K</td>
    <td style="white-space: nowrap; text-align: right">35.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">75.25 K</td>
    <td style="white-space: nowrap; text-align: right">72.35x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.31 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">2.77 KB</td>
    <td>8.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">6.38 KB</td>
    <td>20.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">9.27 KB</td>
    <td>29.65x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3232.54 K</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±1074.17%</td>
    <td style="white-space: nowrap; text-align: right">0.128 μs</td>
    <td style="white-space: nowrap; text-align: right">0.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">285.10 K</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±282.77%</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">52.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">85.15 K</td>
    <td style="white-space: nowrap; text-align: right">11.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±137.43%</td>
    <td style="white-space: nowrap; text-align: right">7.13 μs</td>
    <td style="white-space: nowrap; text-align: right">93.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">65.21 K</td>
    <td style="white-space: nowrap; text-align: right">15.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.36%</td>
    <td style="white-space: nowrap; text-align: right">11.14 μs</td>
    <td style="white-space: nowrap; text-align: right">99.17 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3232.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">285.10 K</td>
    <td style="white-space: nowrap; text-align: right">11.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">85.15 K</td>
    <td style="white-space: nowrap; text-align: right">37.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">65.21 K</td>
    <td style="white-space: nowrap; text-align: right">49.57x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.44 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">3.86 KB</td>
    <td>8.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">9.73 KB</td>
    <td>22.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">9.55 KB</td>
    <td>21.82x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3034.64 K</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±1089.66%</td>
    <td style="white-space: nowrap; text-align: right">0.164 μs</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">291.16 K</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±194.51%</td>
    <td style="white-space: nowrap; text-align: right">2.23 μs</td>
    <td style="white-space: nowrap; text-align: right">49.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">91.48 K</td>
    <td style="white-space: nowrap; text-align: right">10.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.61%</td>
    <td style="white-space: nowrap; text-align: right">9.60 μs</td>
    <td style="white-space: nowrap; text-align: right">34.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">69.99 K</td>
    <td style="white-space: nowrap; text-align: right">14.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.31%</td>
    <td style="white-space: nowrap; text-align: right">10.99 μs</td>
    <td style="white-space: nowrap; text-align: right">57.65 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3034.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">291.16 K</td>
    <td style="white-space: nowrap; text-align: right">10.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">91.48 K</td>
    <td style="white-space: nowrap; text-align: right">33.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">69.99 K</td>
    <td style="white-space: nowrap; text-align: right">43.36x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.125 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">4.83 KB</td>
    <td>38.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">13.07 KB</td>
    <td>104.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.88 KB</td>
    <td>87.06x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1912.41 K</td>
    <td style="white-space: nowrap; text-align: right">0.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±994.09%</td>
    <td style="white-space: nowrap; text-align: right">0.179 μs</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">220.10 K</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±245.80%</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
    <td style="white-space: nowrap; text-align: right">81.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">51.40 K</td>
    <td style="white-space: nowrap; text-align: right">19.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.80%</td>
    <td style="white-space: nowrap; text-align: right">11.71 μs</td>
    <td style="white-space: nowrap; text-align: right">95.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">48.75 K</td>
    <td style="white-space: nowrap; text-align: right">20.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.48%</td>
    <td style="white-space: nowrap; text-align: right">13.78 μs</td>
    <td style="white-space: nowrap; text-align: right">99.52 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1912.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">220.10 K</td>
    <td style="white-space: nowrap; text-align: right">8.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">51.40 K</td>
    <td style="white-space: nowrap; text-align: right">37.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">48.75 K</td>
    <td style="white-space: nowrap; text-align: right">39.23x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.78 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">5.95 KB</td>
    <td>7.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">16.14 KB</td>
    <td>20.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">14.30 KB</td>
    <td>18.31x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1880.03 K</td>
    <td style="white-space: nowrap; text-align: right">0.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±977.26%</td>
    <td style="white-space: nowrap; text-align: right">0.20 μs</td>
    <td style="white-space: nowrap; text-align: right">0.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">250.10 K</td>
    <td style="white-space: nowrap; text-align: right">4.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±143.78%</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">29.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">52.45 K</td>
    <td style="white-space: nowrap; text-align: right">19.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.49%</td>
    <td style="white-space: nowrap; text-align: right">14.85 μs</td>
    <td style="white-space: nowrap; text-align: right">55.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.51 K</td>
    <td style="white-space: nowrap; text-align: right">21.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.38%</td>
    <td style="white-space: nowrap; text-align: right">16.61 μs</td>
    <td style="white-space: nowrap; text-align: right">91.65 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1880.03 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">250.10 K</td>
    <td style="white-space: nowrap; text-align: right">7.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">52.45 K</td>
    <td style="white-space: nowrap; text-align: right">35.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.51 K</td>
    <td style="white-space: nowrap; text-align: right">41.31x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.61 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">6.14 KB</td>
    <td>10.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">21.41 KB</td>
    <td>35.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">17.78 KB</td>
    <td>29.18x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1534.71 K</td>
    <td style="white-space: nowrap; text-align: right">0.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±920.63%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">6.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">163.09 K</td>
    <td style="white-space: nowrap; text-align: right">6.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±211.38%</td>
    <td style="white-space: nowrap; text-align: right">3.57 μs</td>
    <td style="white-space: nowrap; text-align: right">80.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">41.27 K</td>
    <td style="white-space: nowrap; text-align: right">24.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±63.67%</td>
    <td style="white-space: nowrap; text-align: right">18.86 μs</td>
    <td style="white-space: nowrap; text-align: right">91.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.72 K</td>
    <td style="white-space: nowrap; text-align: right">24.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±46.48%</td>
    <td style="white-space: nowrap; text-align: right">19.46 μs</td>
    <td style="white-space: nowrap; text-align: right">61.83 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1534.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">163.09 K</td>
    <td style="white-space: nowrap; text-align: right">9.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">41.27 K</td>
    <td style="white-space: nowrap; text-align: right">37.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.72 K</td>
    <td style="white-space: nowrap; text-align: right">37.69x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.30 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">8 KB</td>
    <td>26.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">26.53 KB</td>
    <td>89.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">21.78 KB</td>
    <td>73.37x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1454.71 K</td>
    <td style="white-space: nowrap; text-align: right">0.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±821.86%</td>
    <td style="white-space: nowrap; text-align: right">0.26 μs</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">160.40 K</td>
    <td style="white-space: nowrap; text-align: right">6.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±144.23%</td>
    <td style="white-space: nowrap; text-align: right">4.29 μs</td>
    <td style="white-space: nowrap; text-align: right">48.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">35.79 K</td>
    <td style="white-space: nowrap; text-align: right">27.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±41.13%</td>
    <td style="white-space: nowrap; text-align: right">22.70 μs</td>
    <td style="white-space: nowrap; text-align: right">63.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">35.54 K</td>
    <td style="white-space: nowrap; text-align: right">28.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.57%</td>
    <td style="white-space: nowrap; text-align: right">21.37 μs</td>
    <td style="white-space: nowrap; text-align: right">93.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1454.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">160.40 K</td>
    <td style="white-space: nowrap; text-align: right">9.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">35.79 K</td>
    <td style="white-space: nowrap; text-align: right">40.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">35.54 K</td>
    <td style="white-space: nowrap; text-align: right">40.93x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">7.97 KB</td>
    <td>6.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">24.70 KB</td>
    <td>19.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">31.40 KB</td>
    <td>25.12x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1452.70 K</td>
    <td style="white-space: nowrap; text-align: right">0.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±872.71%</td>
    <td style="white-space: nowrap; text-align: right">0.28 μs</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">146.52 K</td>
    <td style="white-space: nowrap; text-align: right">6.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±131.76%</td>
    <td style="white-space: nowrap; text-align: right">4.55 μs</td>
    <td style="white-space: nowrap; text-align: right">46.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.14 K</td>
    <td style="white-space: nowrap; text-align: right">31.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±52.72%</td>
    <td style="white-space: nowrap; text-align: right">25.20 μs</td>
    <td style="white-space: nowrap; text-align: right">93.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">31.86 K</td>
    <td style="white-space: nowrap; text-align: right">31.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.93%</td>
    <td style="white-space: nowrap; text-align: right">29.66 μs</td>
    <td style="white-space: nowrap; text-align: right">65.64 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1452.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">146.52 K</td>
    <td style="white-space: nowrap; text-align: right">9.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.14 K</td>
    <td style="white-space: nowrap; text-align: right">45.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">31.86 K</td>
    <td style="white-space: nowrap; text-align: right">45.59x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.41 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">10.08 KB</td>
    <td>7.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">36.70 KB</td>
    <td>26.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">28.05 KB</td>
    <td>19.94x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1169.14 K</td>
    <td style="white-space: nowrap; text-align: right">0.86 μs</td>
    <td style="white-space: nowrap; text-align: right">±766.92%</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
    <td style="white-space: nowrap; text-align: right">14.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">100.33 K</td>
    <td style="white-space: nowrap; text-align: right">9.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±170.83%</td>
    <td style="white-space: nowrap; text-align: right">5.00 μs</td>
    <td style="white-space: nowrap; text-align: right">78.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.09 K</td>
    <td style="white-space: nowrap; text-align: right">33.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.19%</td>
    <td style="white-space: nowrap; text-align: right">28.50 μs</td>
    <td style="white-space: nowrap; text-align: right">93.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.88 K</td>
    <td style="white-space: nowrap; text-align: right">34.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.04%</td>
    <td style="white-space: nowrap; text-align: right">33.29 μs</td>
    <td style="white-space: nowrap; text-align: right">67.54 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1169.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">100.33 K</td>
    <td style="white-space: nowrap; text-align: right">11.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.09 K</td>
    <td style="white-space: nowrap; text-align: right">38.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.88 K</td>
    <td style="white-space: nowrap; text-align: right">40.48x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.19 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">10.16 KB</td>
    <td>8.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">41.70 KB</td>
    <td>35.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">31.38 KB</td>
    <td>26.43x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">492.42 K</td>
    <td style="white-space: nowrap; text-align: right">2.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±521.45%</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
    <td style="white-space: nowrap; text-align: right">74.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">91.79 K</td>
    <td style="white-space: nowrap; text-align: right">10.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.21%</td>
    <td style="white-space: nowrap; text-align: right">10.02 μs</td>
    <td style="white-space: nowrap; text-align: right">14.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.83 K</td>
    <td style="white-space: nowrap; text-align: right">63.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.82%</td>
    <td style="white-space: nowrap; text-align: right">62.16 μs</td>
    <td style="white-space: nowrap; text-align: right">98.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.40 K</td>
    <td style="white-space: nowrap; text-align: right">80.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.16%</td>
    <td style="white-space: nowrap; text-align: right">79.74 μs</td>
    <td style="white-space: nowrap; text-align: right">121.44 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">492.42 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">91.79 K</td>
    <td style="white-space: nowrap; text-align: right">5.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.83 K</td>
    <td style="white-space: nowrap; text-align: right">31.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.40 K</td>
    <td style="white-space: nowrap; text-align: right">39.7x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.02 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">21.34 KB</td>
    <td>21.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">83.10 KB</td>
    <td>81.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">69.55 KB</td>
    <td>68.48x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">871.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±126.61%</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">9.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">60.91 K</td>
    <td style="white-space: nowrap; text-align: right">16.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.49%</td>
    <td style="white-space: nowrap; text-align: right">16.48 μs</td>
    <td style="white-space: nowrap; text-align: right">28.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">10.43 K</td>
    <td style="white-space: nowrap; text-align: right">95.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.69%</td>
    <td style="white-space: nowrap; text-align: right">93.90 μs</td>
    <td style="white-space: nowrap; text-align: right">147.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.43 K</td>
    <td style="white-space: nowrap; text-align: right">134.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.14%</td>
    <td style="white-space: nowrap; text-align: right">133.36 μs</td>
    <td style="white-space: nowrap; text-align: right">190.57 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">871.42 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">60.91 K</td>
    <td style="white-space: nowrap; text-align: right">14.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">10.43 K</td>
    <td style="white-space: nowrap; text-align: right">83.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.43 K</td>
    <td style="white-space: nowrap; text-align: right">117.33x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2.66 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">32.34 KB</td>
    <td>12.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">124.13 KB</td>
    <td>46.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">111.91 KB</td>
    <td>42.13x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">423.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±152.12%</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">14.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">43.91 K</td>
    <td style="white-space: nowrap; text-align: right">22.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.21%</td>
    <td style="white-space: nowrap; text-align: right">21.82 μs</td>
    <td style="white-space: nowrap; text-align: right">40.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.83 K</td>
    <td style="white-space: nowrap; text-align: right">127.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.29%</td>
    <td style="white-space: nowrap; text-align: right">125.32 μs</td>
    <td style="white-space: nowrap; text-align: right">184.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.24 K</td>
    <td style="white-space: nowrap; text-align: right">190.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.90%</td>
    <td style="white-space: nowrap; text-align: right">187.59 μs</td>
    <td style="white-space: nowrap; text-align: right">263.12 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">423.49 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">43.91 K</td>
    <td style="white-space: nowrap; text-align: right">9.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.83 K</td>
    <td style="white-space: nowrap; text-align: right">54.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.24 K</td>
    <td style="white-space: nowrap; text-align: right">80.74x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">6.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">37.15 KB</td>
    <td>5.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">165.49 KB</td>
    <td>26.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">155.38 KB</td>
    <td>24.86x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">394.66 K</td>
    <td style="white-space: nowrap; text-align: right">2.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.83%</td>
    <td style="white-space: nowrap; text-align: right">1.37 μs</td>
    <td style="white-space: nowrap; text-align: right">8.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">35.22 K</td>
    <td style="white-space: nowrap; text-align: right">28.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.22%</td>
    <td style="white-space: nowrap; text-align: right">26.95 μs</td>
    <td style="white-space: nowrap; text-align: right">48.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.23 K</td>
    <td style="white-space: nowrap; text-align: right">160.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.90%</td>
    <td style="white-space: nowrap; text-align: right">156.62 μs</td>
    <td style="white-space: nowrap; text-align: right">224.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.14 K</td>
    <td style="white-space: nowrap; text-align: right">241.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.22%</td>
    <td style="white-space: nowrap; text-align: right">240.42 μs</td>
    <td style="white-space: nowrap; text-align: right">316.14 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">394.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">35.22 K</td>
    <td style="white-space: nowrap; text-align: right">11.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.23 K</td>
    <td style="white-space: nowrap; text-align: right">63.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.14 K</td>
    <td style="white-space: nowrap; text-align: right">95.41x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">4.13 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">53.41 KB</td>
    <td>12.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">207.38 KB</td>
    <td>50.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">199.85 KB</td>
    <td>48.45x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">230.27 K</td>
    <td style="white-space: nowrap; text-align: right">4.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±126.14%</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">20.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">27.53 K</td>
    <td style="white-space: nowrap; text-align: right">36.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.19%</td>
    <td style="white-space: nowrap; text-align: right">34.59 μs</td>
    <td style="white-space: nowrap; text-align: right">60.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.06 K</td>
    <td style="white-space: nowrap; text-align: right">197.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.54%</td>
    <td style="white-space: nowrap; text-align: right">194.45 μs</td>
    <td style="white-space: nowrap; text-align: right">259.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 K</td>
    <td style="white-space: nowrap; text-align: right">298.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.72%</td>
    <td style="white-space: nowrap; text-align: right">294.89 μs</td>
    <td style="white-space: nowrap; text-align: right">390.80 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">230.27 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">27.53 K</td>
    <td style="white-space: nowrap; text-align: right">8.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.06 K</td>
    <td style="white-space: nowrap; text-align: right">45.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 K</td>
    <td style="white-space: nowrap; text-align: right">68.76x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">63.38 KB</td>
    <td>63.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">267.36 KB</td>
    <td>267.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">244.17 KB</td>
    <td>244.17x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">248.84 K</td>
    <td style="white-space: nowrap; text-align: right">4.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.31%</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">26.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">25.98 K</td>
    <td style="white-space: nowrap; text-align: right">38.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.04%</td>
    <td style="white-space: nowrap; text-align: right">36.86 μs</td>
    <td style="white-space: nowrap; text-align: right">58.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 K</td>
    <td style="white-space: nowrap; text-align: right">237.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.51%</td>
    <td style="white-space: nowrap; text-align: right">232.48 μs</td>
    <td style="white-space: nowrap; text-align: right">308.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
    <td style="white-space: nowrap; text-align: right">351.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.65%</td>
    <td style="white-space: nowrap; text-align: right">348.94 μs</td>
    <td style="white-space: nowrap; text-align: right">449.37 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">248.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">25.98 K</td>
    <td style="white-space: nowrap; text-align: right">9.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 K</td>
    <td style="white-space: nowrap; text-align: right">59.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.84 K</td>
    <td style="white-space: nowrap; text-align: right">87.5x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">10.38 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">74.39 KB</td>
    <td>7.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">327.93 KB</td>
    <td>31.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">289.86 KB</td>
    <td>27.94x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">195.22 K</td>
    <td style="white-space: nowrap; text-align: right">5.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.95%</td>
    <td style="white-space: nowrap; text-align: right">2.33 μs</td>
    <td style="white-space: nowrap; text-align: right">14.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">21.08 K</td>
    <td style="white-space: nowrap; text-align: right">47.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.52%</td>
    <td style="white-space: nowrap; text-align: right">46.01 μs</td>
    <td style="white-space: nowrap; text-align: right">73.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 K</td>
    <td style="white-space: nowrap; text-align: right">276.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.28%</td>
    <td style="white-space: nowrap; text-align: right">269.36 μs</td>
    <td style="white-space: nowrap; text-align: right">368.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.56 K</td>
    <td style="white-space: nowrap; text-align: right">391.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.26%</td>
    <td style="white-space: nowrap; text-align: right">390.64 μs</td>
    <td style="white-space: nowrap; text-align: right">500.36 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">195.22 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">21.08 K</td>
    <td style="white-space: nowrap; text-align: right">9.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.62 K</td>
    <td style="white-space: nowrap; text-align: right">53.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.56 K</td>
    <td style="white-space: nowrap; text-align: right">76.34x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">7.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">73.93 KB</td>
    <td>10.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">388.20 KB</td>
    <td>53.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">334.39 KB</td>
    <td>46.12x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">175.11 K</td>
    <td style="white-space: nowrap; text-align: right">5.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.28%</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
    <td style="white-space: nowrap; text-align: right">26.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">18.15 K</td>
    <td style="white-space: nowrap; text-align: right">55.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.69%</td>
    <td style="white-space: nowrap; text-align: right">50.83 μs</td>
    <td style="white-space: nowrap; text-align: right">89.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 K</td>
    <td style="white-space: nowrap; text-align: right">316.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.24%</td>
    <td style="white-space: nowrap; text-align: right">307.59 μs</td>
    <td style="white-space: nowrap; text-align: right">412.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.30 K</td>
    <td style="white-space: nowrap; text-align: right">435.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.42%</td>
    <td style="white-space: nowrap; text-align: right">429.71 μs</td>
    <td style="white-space: nowrap; text-align: right">527.34 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">175.11 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">18.15 K</td>
    <td style="white-space: nowrap; text-align: right">9.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.16 K</td>
    <td style="white-space: nowrap; text-align: right">55.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.30 K</td>
    <td style="white-space: nowrap; text-align: right">76.26x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">4.13 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">93.77 KB</td>
    <td>22.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">448.28 KB</td>
    <td>108.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">380.27 KB</td>
    <td>92.19x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">161.77 K</td>
    <td style="white-space: nowrap; text-align: right">6.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±133.73%</td>
    <td style="white-space: nowrap; text-align: right">2.94 μs</td>
    <td style="white-space: nowrap; text-align: right">41.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.63 K</td>
    <td style="white-space: nowrap; text-align: right">60.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.48%</td>
    <td style="white-space: nowrap; text-align: right">56.28 μs</td>
    <td style="white-space: nowrap; text-align: right">97.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.79 K</td>
    <td style="white-space: nowrap; text-align: right">358.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.89%</td>
    <td style="white-space: nowrap; text-align: right">345.23 μs</td>
    <td style="white-space: nowrap; text-align: right">607.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 K</td>
    <td style="white-space: nowrap; text-align: right">512.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.62%</td>
    <td style="white-space: nowrap; text-align: right">502.26 μs</td>
    <td style="white-space: nowrap; text-align: right">664.91 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">161.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.63 K</td>
    <td style="white-space: nowrap; text-align: right">9.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.79 K</td>
    <td style="white-space: nowrap; text-align: right">57.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 K</td>
    <td style="white-space: nowrap; text-align: right">82.83x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">103.35 KB</td>
    <td>103.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">507.90 KB</td>
    <td>507.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">424.77 KB</td>
    <td>424.77x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">95.47 K</td>
    <td style="white-space: nowrap; text-align: right">10.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.59%</td>
    <td style="white-space: nowrap; text-align: right">5.98 μs</td>
    <td style="white-space: nowrap; text-align: right">31.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">8.36 K</td>
    <td style="white-space: nowrap; text-align: right">119.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.41%</td>
    <td style="white-space: nowrap; text-align: right">121.23 μs</td>
    <td style="white-space: nowrap; text-align: right">171.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 K</td>
    <td style="white-space: nowrap; text-align: right">778.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.85%</td>
    <td style="white-space: nowrap; text-align: right">734.88 μs</td>
    <td style="white-space: nowrap; text-align: right">1028.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.02 K</td>
    <td style="white-space: nowrap; text-align: right">984.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.13%</td>
    <td style="white-space: nowrap; text-align: right">965.74 μs</td>
    <td style="white-space: nowrap; text-align: right">1280.84 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">95.47 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">8.36 K</td>
    <td style="white-space: nowrap; text-align: right">11.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 K</td>
    <td style="white-space: nowrap; text-align: right">74.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.02 K</td>
    <td style="white-space: nowrap; text-align: right">94.02x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">22.66 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">197.82 KB</td>
    <td>8.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1016.95 KB</td>
    <td>44.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">914.95 KB</td>
    <td>40.38x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">74.97 K</td>
    <td style="white-space: nowrap; text-align: right">0.0133 ms</td>
    <td style="white-space: nowrap; text-align: right">±58.72%</td>
    <td style="white-space: nowrap; text-align: right">0.00924 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0429 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.71 K</td>
    <td style="white-space: nowrap; text-align: right">0.175 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.12%</td>
    <td style="white-space: nowrap; text-align: right">0.167 ms</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.16%</td>
    <td style="white-space: nowrap; text-align: right">1.07 ms</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.97%</td>
    <td style="white-space: nowrap; text-align: right">2.08 ms</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">74.97 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.71 K</td>
    <td style="white-space: nowrap; text-align: right">13.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.92 K</td>
    <td style="white-space: nowrap; text-align: right">81.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">147.6x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0433 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.28 MB</td>
    <td>6.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.49 MB</td>
    <td>34.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.41 MB</td>
    <td>32.5x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">39.71 K</td>
    <td style="white-space: nowrap; text-align: right">0.0252 ms</td>
    <td style="white-space: nowrap; text-align: right">±80.87%</td>
    <td style="white-space: nowrap; text-align: right">0.0117 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0604 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.94 K</td>
    <td style="white-space: nowrap; text-align: right">0.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.72%</td>
    <td style="white-space: nowrap; text-align: right">0.25 ms</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.65%</td>
    <td style="white-space: nowrap; text-align: right">1.46 ms</td>
    <td style="white-space: nowrap; text-align: right">1.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.42 K</td>
    <td style="white-space: nowrap; text-align: right">2.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.22%</td>
    <td style="white-space: nowrap; text-align: right">2.33 ms</td>
    <td style="white-space: nowrap; text-align: right">3.08 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">39.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.94 K</td>
    <td style="white-space: nowrap; text-align: right">10.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">59.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.42 K</td>
    <td style="white-space: nowrap; text-align: right">94.7x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0128 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.38 MB</td>
    <td>29.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.99 MB</td>
    <td>155.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.95 MB</td>
    <td>152.57x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">28.41 K</td>
    <td style="white-space: nowrap; text-align: right">0.0352 ms</td>
    <td style="white-space: nowrap; text-align: right">±74.12%</td>
    <td style="white-space: nowrap; text-align: right">0.0160 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0866 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.39 K</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.19%</td>
    <td style="white-space: nowrap; text-align: right">0.30 ms</td>
    <td style="white-space: nowrap; text-align: right">0.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.37%</td>
    <td style="white-space: nowrap; text-align: right">1.76 ms</td>
    <td style="white-space: nowrap; text-align: right">2.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.36 K</td>
    <td style="white-space: nowrap; text-align: right">2.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.27%</td>
    <td style="white-space: nowrap; text-align: right">2.80 ms</td>
    <td style="white-space: nowrap; text-align: right">3.25 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">28.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.39 K</td>
    <td style="white-space: nowrap; text-align: right">8.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.56 K</td>
    <td style="white-space: nowrap; text-align: right">50.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.36 K</td>
    <td style="white-space: nowrap; text-align: right">79.94x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0659 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.47 MB</td>
    <td>7.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.48 MB</td>
    <td>37.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.49 MB</td>
    <td>37.83x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">20.94 K</td>
    <td style="white-space: nowrap; text-align: right">0.0478 ms</td>
    <td style="white-space: nowrap; text-align: right">±65.31%</td>
    <td style="white-space: nowrap; text-align: right">0.0362 ms</td>
    <td style="white-space: nowrap; text-align: right">0.113 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.70 K</td>
    <td style="white-space: nowrap; text-align: right">0.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.43%</td>
    <td style="white-space: nowrap; text-align: right">0.36 ms</td>
    <td style="white-space: nowrap; text-align: right">0.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.58%</td>
    <td style="white-space: nowrap; text-align: right">2.22 ms</td>
    <td style="white-space: nowrap; text-align: right">2.85 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.82%</td>
    <td style="white-space: nowrap; text-align: right">3.15 ms</td>
    <td style="white-space: nowrap; text-align: right">3.71 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">20.94 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.70 K</td>
    <td style="white-space: nowrap; text-align: right">7.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">46.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">66.19x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0353 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.57 MB</td>
    <td>16.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.16 MB</td>
    <td>89.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.04 MB</td>
    <td>86.16x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">21.82 K</td>
    <td style="white-space: nowrap; text-align: right">0.0458 ms</td>
    <td style="white-space: nowrap; text-align: right">±94.61%</td>
    <td style="white-space: nowrap; text-align: right">0.0201 ms</td>
    <td style="white-space: nowrap; text-align: right">0.130 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.26 K</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.97%</td>
    <td style="white-space: nowrap; text-align: right">0.42 ms</td>
    <td style="white-space: nowrap; text-align: right">0.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38 K</td>
    <td style="white-space: nowrap; text-align: right">2.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.97%</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
    <td style="white-space: nowrap; text-align: right">3.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">3.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.94%</td>
    <td style="white-space: nowrap; text-align: right">3.87 ms</td>
    <td style="white-space: nowrap; text-align: right">5.15 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">21.82 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.26 K</td>
    <td style="white-space: nowrap; text-align: right">9.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38 K</td>
    <td style="white-space: nowrap; text-align: right">58.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">85.35x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.00482 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.61 MB</td>
    <td>126.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.84 MB</td>
    <td>796.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.61 MB</td>
    <td>749.68x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.41 K</td>
    <td style="white-space: nowrap; text-align: right">0.106 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.79%</td>
    <td style="white-space: nowrap; text-align: right">0.0592 ms</td>
    <td style="white-space: nowrap; text-align: right">0.31 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.39 K</td>
    <td style="white-space: nowrap; text-align: right">0.72 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.36%</td>
    <td style="white-space: nowrap; text-align: right">0.74 ms</td>
    <td style="white-space: nowrap; text-align: right">0.91 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.40%</td>
    <td style="white-space: nowrap; text-align: right">3.07 ms</td>
    <td style="white-space: nowrap; text-align: right">3.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.164 K</td>
    <td style="white-space: nowrap; text-align: right">6.08 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.91%</td>
    <td style="white-space: nowrap; text-align: right">6.49 ms</td>
    <td style="white-space: nowrap; text-align: right">9.29 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9.41 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.39 K</td>
    <td style="white-space: nowrap; text-align: right">6.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.32 K</td>
    <td style="white-space: nowrap; text-align: right">29.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.164 K</td>
    <td style="white-space: nowrap; text-align: right">57.22x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.110 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.70 MB</td>
    <td>6.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">4.53 MB</td>
    <td>41.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.17 MB</td>
    <td>38.06x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">22.16 K</td>
    <td style="white-space: nowrap; text-align: right">0.0451 ms</td>
    <td style="white-space: nowrap; text-align: right">±61.93%</td>
    <td style="white-space: nowrap; text-align: right">0.0280 ms</td>
    <td style="white-space: nowrap; text-align: right">0.146 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.01%</td>
    <td style="white-space: nowrap; text-align: right">0.57 ms</td>
    <td style="white-space: nowrap; text-align: right">0.89 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.35%</td>
    <td style="white-space: nowrap; text-align: right">3.49 ms</td>
    <td style="white-space: nowrap; text-align: right">4.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.193 K</td>
    <td style="white-space: nowrap; text-align: right">5.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.78%</td>
    <td style="white-space: nowrap; text-align: right">5.09 ms</td>
    <td style="white-space: nowrap; text-align: right">7.83 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">22.16 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.73 K</td>
    <td style="white-space: nowrap; text-align: right">12.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">77.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.193 K</td>
    <td style="white-space: nowrap; text-align: right">114.81x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0791 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.92 MB</td>
    <td>11.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">5.21 MB</td>
    <td>65.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.74 MB</td>
    <td>59.95x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">12.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.0774 ms</td>
    <td style="white-space: nowrap; text-align: right">±67.50%</td>
    <td style="white-space: nowrap; text-align: right">0.0403 ms</td>
    <td style="white-space: nowrap; text-align: right">0.188 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 K</td>
    <td style="white-space: nowrap; text-align: right">0.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.39%</td>
    <td style="white-space: nowrap; text-align: right">0.61 ms</td>
    <td style="white-space: nowrap; text-align: right">0.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.74%</td>
    <td style="white-space: nowrap; text-align: right">3.92 ms</td>
    <td style="white-space: nowrap; text-align: right">4.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.180 K</td>
    <td style="white-space: nowrap; text-align: right">5.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.18%</td>
    <td style="white-space: nowrap; text-align: right">5.56 ms</td>
    <td style="white-space: nowrap; text-align: right">6.02 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">12.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 K</td>
    <td style="white-space: nowrap; text-align: right">8.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.25 K</td>
    <td style="white-space: nowrap; text-align: right">51.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.180 K</td>
    <td style="white-space: nowrap; text-align: right">71.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0486 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.88 MB</td>
    <td>18.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">5.89 MB</td>
    <td>121.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">5.33 MB</td>
    <td>109.84x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3755.28</td>
    <td style="white-space: nowrap; text-align: right">0.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±82.06%</td>
    <td style="white-space: nowrap; text-align: right">0.155 ms</td>
    <td style="white-space: nowrap; text-align: right">0.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">543.89</td>
    <td style="white-space: nowrap; text-align: right">1.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.76%</td>
    <td style="white-space: nowrap; text-align: right">1.88 ms</td>
    <td style="white-space: nowrap; text-align: right">2.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">114.18</td>
    <td style="white-space: nowrap; text-align: right">8.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.63%</td>
    <td style="white-space: nowrap; text-align: right">8.69 ms</td>
    <td style="white-space: nowrap; text-align: right">9.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">80.33</td>
    <td style="white-space: nowrap; text-align: right">12.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.37%</td>
    <td style="white-space: nowrap; text-align: right">12.31 ms</td>
    <td style="white-space: nowrap; text-align: right">15.27 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3755.28</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">543.89</td>
    <td style="white-space: nowrap; text-align: right">6.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">114.18</td>
    <td style="white-space: nowrap; text-align: right">32.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">80.33</td>
    <td style="white-space: nowrap; text-align: right">46.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.31 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.82 MB</td>
    <td>5.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">11.78 MB</td>
    <td>38.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">11.21 MB</td>
    <td>36.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4718.05</td>
    <td style="white-space: nowrap; text-align: right">0.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±79.77%</td>
    <td style="white-space: nowrap; text-align: right">0.131 ms</td>
    <td style="white-space: nowrap; text-align: right">0.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">400.56</td>
    <td style="white-space: nowrap; text-align: right">2.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.92%</td>
    <td style="white-space: nowrap; text-align: right">2.48 ms</td>
    <td style="white-space: nowrap; text-align: right">3.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">79.12</td>
    <td style="white-space: nowrap; text-align: right">12.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.16%</td>
    <td style="white-space: nowrap; text-align: right">12.48 ms</td>
    <td style="white-space: nowrap; text-align: right">14.14 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.34</td>
    <td style="white-space: nowrap; text-align: right">24.79 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.39%</td>
    <td style="white-space: nowrap; text-align: right">25.00 ms</td>
    <td style="white-space: nowrap; text-align: right">27.58 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">4718.05</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">400.56</td>
    <td style="white-space: nowrap; text-align: right">11.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">79.12</td>
    <td style="white-space: nowrap; text-align: right">59.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.34</td>
    <td style="white-space: nowrap; text-align: right">116.95x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0113 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">2.87 MB</td>
    <td>254.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">17.67 MB</td>
    <td>1566.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">17.39 MB</td>
    <td>1542.4x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3048.05</td>
    <td style="white-space: nowrap; text-align: right">0.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±80.20%</td>
    <td style="white-space: nowrap; text-align: right">0.192 ms</td>
    <td style="white-space: nowrap; text-align: right">1.15 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">295.70</td>
    <td style="white-space: nowrap; text-align: right">3.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.26%</td>
    <td style="white-space: nowrap; text-align: right">3.17 ms</td>
    <td style="white-space: nowrap; text-align: right">4.16 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.05</td>
    <td style="white-space: nowrap; text-align: right">18.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.52%</td>
    <td style="white-space: nowrap; text-align: right">18.79 ms</td>
    <td style="white-space: nowrap; text-align: right">20.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">29.95</td>
    <td style="white-space: nowrap; text-align: right">33.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.97%</td>
    <td style="white-space: nowrap; text-align: right">33.36 ms</td>
    <td style="white-space: nowrap; text-align: right">34.84 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3048.05</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">295.70</td>
    <td style="white-space: nowrap; text-align: right">10.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.05</td>
    <td style="white-space: nowrap; text-align: right">57.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">29.95</td>
    <td style="white-space: nowrap; text-align: right">101.77x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.28 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">4.05 MB</td>
    <td>14.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">23.56 MB</td>
    <td>84.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">23.80 MB</td>
    <td>85.24x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2502.52</td>
    <td style="white-space: nowrap; text-align: right">0.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±73.78%</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
    <td style="white-space: nowrap; text-align: right">0.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">241.27</td>
    <td style="white-space: nowrap; text-align: right">4.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.10%</td>
    <td style="white-space: nowrap; text-align: right">4.09 ms</td>
    <td style="white-space: nowrap; text-align: right">4.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">42.96</td>
    <td style="white-space: nowrap; text-align: right">23.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.10%</td>
    <td style="white-space: nowrap; text-align: right">23.19 ms</td>
    <td style="white-space: nowrap; text-align: right">23.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">18.31</td>
    <td style="white-space: nowrap; text-align: right">54.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.09%</td>
    <td style="white-space: nowrap; text-align: right">56.75 ms</td>
    <td style="white-space: nowrap; text-align: right">57.97 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">2502.52</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">241.27</td>
    <td style="white-space: nowrap; text-align: right">10.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">42.96</td>
    <td style="white-space: nowrap; text-align: right">58.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">18.31</td>
    <td style="white-space: nowrap; text-align: right">136.71x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.76 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">4.60 MB</td>
    <td>6.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">29.46 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">30.37 MB</td>
    <td>39.81x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3128.61</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±51.29%</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">209.13</td>
    <td style="white-space: nowrap; text-align: right">4.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.05%</td>
    <td style="white-space: nowrap; text-align: right">4.66 ms</td>
    <td style="white-space: nowrap; text-align: right">6.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">33.59</td>
    <td style="white-space: nowrap; text-align: right">29.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.25%</td>
    <td style="white-space: nowrap; text-align: right">29.16 ms</td>
    <td style="white-space: nowrap; text-align: right">31.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.46</td>
    <td style="white-space: nowrap; text-align: right">69.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.22%</td>
    <td style="white-space: nowrap; text-align: right">70.90 ms</td>
    <td style="white-space: nowrap; text-align: right">73.20 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3128.61</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">209.13</td>
    <td style="white-space: nowrap; text-align: right">14.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">33.59</td>
    <td style="white-space: nowrap; text-align: right">93.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.46</td>
    <td style="white-space: nowrap; text-align: right">216.35x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.60 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">5.36 MB</td>
    <td>9.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">37.18 MB</td>
    <td>62.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">37.05 MB</td>
    <td>62.15x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3043.37</td>
    <td style="white-space: nowrap; text-align: right">0.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.44%</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">165.13</td>
    <td style="white-space: nowrap; text-align: right">6.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.03%</td>
    <td style="white-space: nowrap; text-align: right">6.00 ms</td>
    <td style="white-space: nowrap; text-align: right">7.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">31.58</td>
    <td style="white-space: nowrap; text-align: right">31.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.22%</td>
    <td style="white-space: nowrap; text-align: right">30.79 ms</td>
    <td style="white-space: nowrap; text-align: right">33.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.58</td>
    <td style="white-space: nowrap; text-align: right">73.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.32%</td>
    <td style="white-space: nowrap; text-align: right">69.52 ms</td>
    <td style="white-space: nowrap; text-align: right">90.15 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3043.37</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">165.13</td>
    <td style="white-space: nowrap; text-align: right">18.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">31.58</td>
    <td style="white-space: nowrap; text-align: right">96.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.58</td>
    <td style="white-space: nowrap; text-align: right">224.04x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.29 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">6.23 MB</td>
    <td>21.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">44.90 MB</td>
    <td>154.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">43.82 MB</td>
    <td>150.64x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1525.52</td>
    <td style="white-space: nowrap; text-align: right">0.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±94.18%</td>
    <td style="white-space: nowrap; text-align: right">0.34 ms</td>
    <td style="white-space: nowrap; text-align: right">1.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">127.08</td>
    <td style="white-space: nowrap; text-align: right">7.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.94%</td>
    <td style="white-space: nowrap; text-align: right">7.70 ms</td>
    <td style="white-space: nowrap; text-align: right">9.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">25.64</td>
    <td style="white-space: nowrap; text-align: right">39.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.39%</td>
    <td style="white-space: nowrap; text-align: right">38.75 ms</td>
    <td style="white-space: nowrap; text-align: right">41.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.90</td>
    <td style="white-space: nowrap; text-align: right">100.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.25%</td>
    <td style="white-space: nowrap; text-align: right">101.05 ms</td>
    <td style="white-space: nowrap; text-align: right">110.78 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1525.52</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">127.08</td>
    <td style="white-space: nowrap; text-align: right">12.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">25.64</td>
    <td style="white-space: nowrap; text-align: right">59.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.90</td>
    <td style="white-space: nowrap; text-align: right">154.04x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.22 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">7.44 MB</td>
    <td>6.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">52.63 MB</td>
    <td>43.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">50.65 MB</td>
    <td>41.49x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1470.94</td>
    <td style="white-space: nowrap; text-align: right">0.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±88.37%</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
    <td style="white-space: nowrap; text-align: right">2.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">120.19</td>
    <td style="white-space: nowrap; text-align: right">8.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.21%</td>
    <td style="white-space: nowrap; text-align: right">8.33 ms</td>
    <td style="white-space: nowrap; text-align: right">10.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">22.69</td>
    <td style="white-space: nowrap; text-align: right">44.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.21%</td>
    <td style="white-space: nowrap; text-align: right">43.90 ms</td>
    <td style="white-space: nowrap; text-align: right">45.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.32</td>
    <td style="white-space: nowrap; text-align: right">120.19 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.06%</td>
    <td style="white-space: nowrap; text-align: right">119.87 ms</td>
    <td style="white-space: nowrap; text-align: right">122.03 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1470.94</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">120.19</td>
    <td style="white-space: nowrap; text-align: right">12.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">22.69</td>
    <td style="white-space: nowrap; text-align: right">64.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.32</td>
    <td style="white-space: nowrap; text-align: right">176.8x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.18 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">8.39 MB</td>
    <td>7.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">60.35 MB</td>
    <td>51.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">57.51 MB</td>
    <td>48.7x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">901.28</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±80.14%</td>
    <td style="white-space: nowrap; text-align: right">0.45 ms</td>
    <td style="white-space: nowrap; text-align: right">2.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">119.66</td>
    <td style="white-space: nowrap; text-align: right">8.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.45%</td>
    <td style="white-space: nowrap; text-align: right">8.12 ms</td>
    <td style="white-space: nowrap; text-align: right">9.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">20.10</td>
    <td style="white-space: nowrap; text-align: right">49.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.70%</td>
    <td style="white-space: nowrap; text-align: right">49.77 ms</td>
    <td style="white-space: nowrap; text-align: right">50.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.49</td>
    <td style="white-space: nowrap; text-align: right">133.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.02%</td>
    <td style="white-space: nowrap; text-align: right">132.90 ms</td>
    <td style="white-space: nowrap; text-align: right">135.68 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">901.28</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">119.66</td>
    <td style="white-space: nowrap; text-align: right">7.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">20.10</td>
    <td style="white-space: nowrap; text-align: right">44.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.49</td>
    <td style="white-space: nowrap; text-align: right">120.29x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.88 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">10.22 MB</td>
    <td>11.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">68.08 MB</td>
    <td>77.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">64.43 MB</td>
    <td>73.58x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">465.50</td>
    <td style="white-space: nowrap; text-align: right">2.15 ms</td>
    <td style="white-space: nowrap; text-align: right">±98.60%</td>
    <td style="white-space: nowrap; text-align: right">0.84 ms</td>
    <td style="white-space: nowrap; text-align: right">5.71 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">50.70</td>
    <td style="white-space: nowrap; text-align: right">19.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.72%</td>
    <td style="white-space: nowrap; text-align: right">19.71 ms</td>
    <td style="white-space: nowrap; text-align: right">19.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.88</td>
    <td style="white-space: nowrap; text-align: right">101.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.26%</td>
    <td style="white-space: nowrap; text-align: right">101.21 ms</td>
    <td style="white-space: nowrap; text-align: right">101.45 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.51</td>
    <td style="white-space: nowrap; text-align: right">284.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.81%</td>
    <td style="white-space: nowrap; text-align: right">300.98 ms</td>
    <td style="white-space: nowrap; text-align: right">301.23 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">465.50</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">50.70</td>
    <td style="white-space: nowrap; text-align: right">9.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.88</td>
    <td style="white-space: nowrap; text-align: right">47.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.51</td>
    <td style="white-space: nowrap; text-align: right">132.65x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.25 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">18.53 MB</td>
    <td>73.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">136.15 MB</td>
    <td>541.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">134.63 MB</td>
    <td>535.24x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">772.07</td>
    <td style="white-space: nowrap; text-align: right">1.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.34%</td>
    <td style="white-space: nowrap; text-align: right">1.31 ms</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">32.80</td>
    <td style="white-space: nowrap; text-align: right">30.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.27%</td>
    <td style="white-space: nowrap; text-align: right">30.65 ms</td>
    <td style="white-space: nowrap; text-align: right">32.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.57</td>
    <td style="white-space: nowrap; text-align: right">152.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.74%</td>
    <td style="white-space: nowrap; text-align: right">152.01 ms</td>
    <td style="white-space: nowrap; text-align: right">153.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.27</td>
    <td style="white-space: nowrap; text-align: right">441.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.39%</td>
    <td style="white-space: nowrap; text-align: right">441.30 ms</td>
    <td style="white-space: nowrap; text-align: right">479.97 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">772.07</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">32.80</td>
    <td style="white-space: nowrap; text-align: right">23.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.57</td>
    <td style="white-space: nowrap; text-align: right">117.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.27</td>
    <td style="white-space: nowrap; text-align: right">340.72x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.83 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">28.39 MB</td>
    <td>15.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">204.23 MB</td>
    <td>111.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">206.69 MB</td>
    <td>113.16x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">596.80</td>
    <td style="white-space: nowrap; text-align: right">1.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.04%</td>
    <td style="white-space: nowrap; text-align: right">1.66 ms</td>
    <td style="white-space: nowrap; text-align: right">1.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">24.48</td>
    <td style="white-space: nowrap; text-align: right">40.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.89%</td>
    <td style="white-space: nowrap; text-align: right">41.86 ms</td>
    <td style="white-space: nowrap; text-align: right">42.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.98</td>
    <td style="white-space: nowrap; text-align: right">200.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.52%</td>
    <td style="white-space: nowrap; text-align: right">200.77 ms</td>
    <td style="white-space: nowrap; text-align: right">202.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71</td>
    <td style="white-space: nowrap; text-align: right">583.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">583.49 ms</td>
    <td style="white-space: nowrap; text-align: right">583.49 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">596.80</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">24.48</td>
    <td style="white-space: nowrap; text-align: right">24.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.98</td>
    <td style="white-space: nowrap; text-align: right">119.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71</td>
    <td style="white-space: nowrap; text-align: right">348.22x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.97 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">38.96 MB</td>
    <td>40.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272.31 MB</td>
    <td>280.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">280.63 MB</td>
    <td>288.93x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">131.86</td>
    <td style="white-space: nowrap; text-align: right">7.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±77.98%</td>
    <td style="white-space: nowrap; text-align: right">7.58 ms</td>
    <td style="white-space: nowrap; text-align: right">11.77 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.16</td>
    <td style="white-space: nowrap; text-align: right">52.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.83%</td>
    <td style="white-space: nowrap; text-align: right">52.18 ms</td>
    <td style="white-space: nowrap; text-align: right">52.49 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.00</td>
    <td style="white-space: nowrap; text-align: right">250.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.85%</td>
    <td style="white-space: nowrap; text-align: right">250.18 ms</td>
    <td style="white-space: nowrap; text-align: right">251.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.17</td>
    <td style="white-space: nowrap; text-align: right">851.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">851.61 ms</td>
    <td style="white-space: nowrap; text-align: right">851.61 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">131.86</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.16</td>
    <td style="white-space: nowrap; text-align: right">6.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.00</td>
    <td style="white-space: nowrap; text-align: right">32.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.17</td>
    <td style="white-space: nowrap; text-align: right">112.3x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.56 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">48.67 MB</td>
    <td>87.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">340.39 MB</td>
    <td>613.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">356.22 MB</td>
    <td>641.56x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">113.57</td>
    <td style="white-space: nowrap; text-align: right">8.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±98.26%</td>
    <td style="white-space: nowrap; text-align: right">8.81 ms</td>
    <td style="white-space: nowrap; text-align: right">14.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.55</td>
    <td style="white-space: nowrap; text-align: right">60.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.30%</td>
    <td style="white-space: nowrap; text-align: right">60.41 ms</td>
    <td style="white-space: nowrap; text-align: right">63.53 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27</td>
    <td style="white-space: nowrap; text-align: right">305.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.76%</td>
    <td style="white-space: nowrap; text-align: right">305.82 ms</td>
    <td style="white-space: nowrap; text-align: right">307.47 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.10</td>
    <td style="white-space: nowrap; text-align: right">909.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">909.54 ms</td>
    <td style="white-space: nowrap; text-align: right">909.54 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">113.57</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.55</td>
    <td style="white-space: nowrap; text-align: right">6.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.27</td>
    <td style="white-space: nowrap; text-align: right">34.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.10</td>
    <td style="white-space: nowrap; text-align: right">103.3x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.67 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">61.23 MB</td>
    <td>91.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">426.78 MB</td>
    <td>640.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">433.14 MB</td>
    <td>650.0x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">98.21</td>
    <td style="white-space: nowrap; text-align: right">10.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±37.26%</td>
    <td style="white-space: nowrap; text-align: right">10.18 ms</td>
    <td style="white-space: nowrap; text-align: right">12.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">12.74</td>
    <td style="white-space: nowrap; text-align: right">78.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.72%</td>
    <td style="white-space: nowrap; text-align: right">78.47 ms</td>
    <td style="white-space: nowrap; text-align: right">81.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.76</td>
    <td style="white-space: nowrap; text-align: right">362.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">362.52 ms</td>
    <td style="white-space: nowrap; text-align: right">362.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85</td>
    <td style="white-space: nowrap; text-align: right">1175.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1175.67 ms</td>
    <td style="white-space: nowrap; text-align: right">1175.67 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">98.21</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">12.74</td>
    <td style="white-space: nowrap; text-align: right">7.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.76</td>
    <td style="white-space: nowrap; text-align: right">35.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85</td>
    <td style="white-space: nowrap; text-align: right">115.47x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.41 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">69.88 MB</td>
    <td>49.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">513.17 MB</td>
    <td>363.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">511.19 MB</td>
    <td>362.53x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">284.93</td>
    <td style="white-space: nowrap; text-align: right">3.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.10%</td>
    <td style="white-space: nowrap; text-align: right">3.51 ms</td>
    <td style="white-space: nowrap; text-align: right">3.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">10.79</td>
    <td style="white-space: nowrap; text-align: right">92.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.81%</td>
    <td style="white-space: nowrap; text-align: right">92.70 ms</td>
    <td style="white-space: nowrap; text-align: right">105.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38</td>
    <td style="white-space: nowrap; text-align: right">419.99 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">419.99 ms</td>
    <td style="white-space: nowrap; text-align: right">419.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.65</td>
    <td style="white-space: nowrap; text-align: right">1539.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1539.65 ms</td>
    <td style="white-space: nowrap; text-align: right">1539.65 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">284.93</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">10.79</td>
    <td style="white-space: nowrap; text-align: right">26.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38</td>
    <td style="white-space: nowrap; text-align: right">119.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.65</td>
    <td style="white-space: nowrap; text-align: right">438.69x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2.91 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">81.44 MB</td>
    <td>27.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">599.56 MB</td>
    <td>205.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">590.14 MB</td>
    <td>202.6x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">48.55</td>
    <td style="white-space: nowrap; text-align: right">20.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">20.60 ms</td>
    <td style="white-space: nowrap; text-align: right">20.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">11.18</td>
    <td style="white-space: nowrap; text-align: right">89.48 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">89.48 ms</td>
    <td style="white-space: nowrap; text-align: right">89.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08</td>
    <td style="white-space: nowrap; text-align: right">480.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">480.38 ms</td>
    <td style="white-space: nowrap; text-align: right">480.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.58</td>
    <td style="white-space: nowrap; text-align: right">1722.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1722.80 ms</td>
    <td style="white-space: nowrap; text-align: right">1722.80 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">48.55</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">11.18</td>
    <td style="white-space: nowrap; text-align: right">4.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08</td>
    <td style="white-space: nowrap; text-align: right">23.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.58</td>
    <td style="white-space: nowrap; text-align: right">83.63x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">5.33 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">89.86 MB</td>
    <td>16.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">685.95 MB</td>
    <td>128.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">669.80 MB</td>
    <td>125.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">73.98</td>
    <td style="white-space: nowrap; text-align: right">13.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">13.52 ms</td>
    <td style="white-space: nowrap; text-align: right">13.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.63</td>
    <td style="white-space: nowrap; text-align: right">103.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">103.82 ms</td>
    <td style="white-space: nowrap; text-align: right">103.82 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71</td>
    <td style="white-space: nowrap; text-align: right">584.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">584.05 ms</td>
    <td style="white-space: nowrap; text-align: right">584.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49</td>
    <td style="white-space: nowrap; text-align: right">2020.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2020.30 ms</td>
    <td style="white-space: nowrap; text-align: right">2020.30 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">73.98</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.63</td>
    <td style="white-space: nowrap; text-align: right">7.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71</td>
    <td style="white-space: nowrap; text-align: right">43.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49</td>
    <td style="white-space: nowrap; text-align: right">149.47x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2.27 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">99.20 MB</td>
    <td>43.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">772.34 MB</td>
    <td>339.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">750.09 MB</td>
    <td>329.73x</td>
  </tr>

</table>


<hr/>

