
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
    <td style="white-space: nowrap; text-align: right">7045.35 K</td>
    <td style="white-space: nowrap; text-align: right">0.142 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.82%</td>
    <td style="white-space: nowrap; text-align: right">0.0845 μs</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">368.13 K</td>
    <td style="white-space: nowrap; text-align: right">2.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.49%</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">4.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">320.51 K</td>
    <td style="white-space: nowrap; text-align: right">3.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.94%</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">3.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">207.02 K</td>
    <td style="white-space: nowrap; text-align: right">4.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.47%</td>
    <td style="white-space: nowrap; text-align: right">2.79 μs</td>
    <td style="white-space: nowrap; text-align: right">18.64 μs</td>
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
    <td style="white-space: nowrap;text-align: right">7045.35 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">368.13 K</td>
    <td style="white-space: nowrap; text-align: right">19.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">320.51 K</td>
    <td style="white-space: nowrap; text-align: right">21.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">207.02 K</td>
    <td style="white-space: nowrap; text-align: right">34.03x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">384 B</td>
    <td>24.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">456 B</td>
    <td>28.5x</td>
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
    <td style="white-space: nowrap; text-align: right">4667.44 K</td>
    <td style="white-space: nowrap; text-align: right">0.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±80.92%</td>
    <td style="white-space: nowrap; text-align: right">0.127 μs</td>
    <td style="white-space: nowrap; text-align: right">0.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.45 K</td>
    <td style="white-space: nowrap; text-align: right">4.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.23%</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
    <td style="white-space: nowrap; text-align: right">18.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">232.30 K</td>
    <td style="white-space: nowrap; text-align: right">4.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±133.11%</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">25.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">216.44 K</td>
    <td style="white-space: nowrap; text-align: right">4.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±142.24%</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">29.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4667.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.45 K</td>
    <td style="white-space: nowrap; text-align: right">19.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">232.30 K</td>
    <td style="white-space: nowrap; text-align: right">20.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">216.44 K</td>
    <td style="white-space: nowrap; text-align: right">21.56x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">584 B</td>
    <td>18.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">720 B</td>
    <td>22.5x</td>
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
    <td style="white-space: nowrap; text-align: right">8452.19 K</td>
    <td style="white-space: nowrap; text-align: right">0.118 μs</td>
    <td style="white-space: nowrap; text-align: right">±68.27%</td>
    <td style="white-space: nowrap; text-align: right">0.0985 μs</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">347.40 K</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.40%</td>
    <td style="white-space: nowrap; text-align: right">2.78 μs</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">247.75 K</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.57%</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
    <td style="white-space: nowrap; text-align: right">16.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">216.95 K</td>
    <td style="white-space: nowrap; text-align: right">4.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.04%</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">17.45 μs</td>
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
    <td style="white-space: nowrap;text-align: right">8452.19 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">347.40 K</td>
    <td style="white-space: nowrap; text-align: right">24.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">247.75 K</td>
    <td style="white-space: nowrap; text-align: right">34.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">216.95 K</td>
    <td style="white-space: nowrap; text-align: right">38.96x</td>
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
    <td style="white-space: nowrap">816 B</td>
    <td>17.0x</td>
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
    <td style="white-space: nowrap; text-align: right">9075.44 K</td>
    <td style="white-space: nowrap; text-align: right">0.110 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.38%</td>
    <td style="white-space: nowrap; text-align: right">0.0385 μs</td>
    <td style="white-space: nowrap; text-align: right">0.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">347.67 K</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.51%</td>
    <td style="white-space: nowrap; text-align: right">2.85 μs</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.65 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.29%</td>
    <td style="white-space: nowrap; text-align: right">3.34 μs</td>
    <td style="white-space: nowrap; text-align: right">6.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">222.77 K</td>
    <td style="white-space: nowrap; text-align: right">4.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.87%</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
    <td style="white-space: nowrap; text-align: right">9.19 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9075.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">347.67 K</td>
    <td style="white-space: nowrap; text-align: right">26.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.65 K</td>
    <td style="white-space: nowrap; text-align: right">32.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">222.77 K</td>
    <td style="white-space: nowrap; text-align: right">40.74x</td>
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
    <td style="white-space: nowrap">1.02 KB</td>
    <td>16.25x</td>
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
    <td style="white-space: nowrap; text-align: right">15763.55 K</td>
    <td style="white-space: nowrap; text-align: right">0.0634 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.40%</td>
    <td style="white-space: nowrap; text-align: right">0.0475 μs</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">281.61 K</td>
    <td style="white-space: nowrap; text-align: right">3.55 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.17%</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">243.94 K</td>
    <td style="white-space: nowrap; text-align: right">4.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.36%</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">19.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">202.93 K</td>
    <td style="white-space: nowrap; text-align: right">4.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.06%</td>
    <td style="white-space: nowrap; text-align: right">4.32 μs</td>
    <td style="white-space: nowrap; text-align: right">15.44 μs</td>
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
    <td style="white-space: nowrap;text-align: right">15763.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">281.61 K</td>
    <td style="white-space: nowrap; text-align: right">55.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">243.94 K</td>
    <td style="white-space: nowrap; text-align: right">64.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">202.93 K</td>
    <td style="white-space: nowrap; text-align: right">77.68x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.32 KB</td>
    <td>16.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.98 KB</td>
    <td>12.6x</td>
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
    <td style="white-space: nowrap; text-align: right">9184.85 K</td>
    <td style="white-space: nowrap; text-align: right">0.109 μs</td>
    <td style="white-space: nowrap; text-align: right">±136.59%</td>
    <td style="white-space: nowrap; text-align: right">0.0355 μs</td>
    <td style="white-space: nowrap; text-align: right">0.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">247.10 K</td>
    <td style="white-space: nowrap; text-align: right">4.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.65%</td>
    <td style="white-space: nowrap; text-align: right">2.97 μs</td>
    <td style="white-space: nowrap; text-align: right">17.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">226.14 K</td>
    <td style="white-space: nowrap; text-align: right">4.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.39%</td>
    <td style="white-space: nowrap; text-align: right">4.39 μs</td>
    <td style="white-space: nowrap; text-align: right">4.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">165.05 K</td>
    <td style="white-space: nowrap; text-align: right">6.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.99%</td>
    <td style="white-space: nowrap; text-align: right">4.37 μs</td>
    <td style="white-space: nowrap; text-align: right">18.47 μs</td>
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
    <td style="white-space: nowrap;text-align: right">9184.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">247.10 K</td>
    <td style="white-space: nowrap; text-align: right">37.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">226.14 K</td>
    <td style="white-space: nowrap; text-align: right">40.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">165.05 K</td>
    <td style="white-space: nowrap; text-align: right">55.65x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.82 KB</td>
    <td>19.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.98 KB</td>
    <td>21.08x</td>
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
    <td style="white-space: nowrap; text-align: right">2986.19 K</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±297.19%</td>
    <td style="white-space: nowrap; text-align: right">0.0360 μs</td>
    <td style="white-space: nowrap; text-align: right">4.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">215.85 K</td>
    <td style="white-space: nowrap; text-align: right">4.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.08%</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">16.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">209.01 K</td>
    <td style="white-space: nowrap; text-align: right">4.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.81%</td>
    <td style="white-space: nowrap; text-align: right">4.83 μs</td>
    <td style="white-space: nowrap; text-align: right">5.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">194.35 K</td>
    <td style="white-space: nowrap; text-align: right">5.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.64%</td>
    <td style="white-space: nowrap; text-align: right">4.31 μs</td>
    <td style="white-space: nowrap; text-align: right">17.61 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2986.19 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">215.85 K</td>
    <td style="white-space: nowrap; text-align: right">13.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">209.01 K</td>
    <td style="white-space: nowrap; text-align: right">14.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">194.35 K</td>
    <td style="white-space: nowrap; text-align: right">15.37x</td>
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
    <td style="white-space: nowrap">1.17 KB</td>
    <td>10.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.25 KB</td>
    <td>20.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.34 KB</td>
    <td>21.43x</td>
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
    <td style="white-space: nowrap; text-align: right">10349.29 K</td>
    <td style="white-space: nowrap; text-align: right">0.0966 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.37%</td>
    <td style="white-space: nowrap; text-align: right">0.0565 μs</td>
    <td style="white-space: nowrap; text-align: right">0.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">323.49 K</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.56%</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">198.05 K</td>
    <td style="white-space: nowrap; text-align: right">5.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.58%</td>
    <td style="white-space: nowrap; text-align: right">5.08 μs</td>
    <td style="white-space: nowrap; text-align: right">5.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">195.48 K</td>
    <td style="white-space: nowrap; text-align: right">5.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.47%</td>
    <td style="white-space: nowrap; text-align: right">4.84 μs</td>
    <td style="white-space: nowrap; text-align: right">9.22 μs</td>
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
    <td style="white-space: nowrap;text-align: right">10349.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">323.49 K</td>
    <td style="white-space: nowrap; text-align: right">31.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">198.05 K</td>
    <td style="white-space: nowrap; text-align: right">52.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">195.48 K</td>
    <td style="white-space: nowrap; text-align: right">52.94x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.73 KB</td>
    <td>21.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.75 KB</td>
    <td>22.0x</td>
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
    <td style="white-space: nowrap; text-align: right">12749.00 K</td>
    <td style="white-space: nowrap; text-align: right">0.0784 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.17%</td>
    <td style="white-space: nowrap; text-align: right">0.0510 μs</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">261.52 K</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.86%</td>
    <td style="white-space: nowrap; text-align: right">3.76 μs</td>
    <td style="white-space: nowrap; text-align: right">4.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">178.54 K</td>
    <td style="white-space: nowrap; text-align: right">5.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.06%</td>
    <td style="white-space: nowrap; text-align: right">5.24 μs</td>
    <td style="white-space: nowrap; text-align: right">11.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">169.15 K</td>
    <td style="white-space: nowrap; text-align: right">5.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.01%</td>
    <td style="white-space: nowrap; text-align: right">4.82 μs</td>
    <td style="white-space: nowrap; text-align: right">19.23 μs</td>
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
    <td style="white-space: nowrap;text-align: right">12749.00 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">261.52 K</td>
    <td style="white-space: nowrap; text-align: right">48.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">178.54 K</td>
    <td style="white-space: nowrap; text-align: right">71.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">169.15 K</td>
    <td style="white-space: nowrap; text-align: right">75.37x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.25 KB</td>
    <td>23.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.24 KB</td>
    <td>23.06x</td>
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
    <td style="white-space: nowrap; text-align: right">12102.87 K</td>
    <td style="white-space: nowrap; text-align: right">0.0826 μs</td>
    <td style="white-space: nowrap; text-align: right">±129.37%</td>
    <td style="white-space: nowrap; text-align: right">0.0445 μs</td>
    <td style="white-space: nowrap; text-align: right">0.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">251.52 K</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.56%</td>
    <td style="white-space: nowrap; text-align: right">3.89 μs</td>
    <td style="white-space: nowrap; text-align: right">4.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">164.26 K</td>
    <td style="white-space: nowrap; text-align: right">6.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±46.61%</td>
    <td style="white-space: nowrap; text-align: right">5.37 μs</td>
    <td style="white-space: nowrap; text-align: right">16.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.0157 K</td>
    <td style="white-space: nowrap; text-align: right">63702.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.84%</td>
    <td style="white-space: nowrap; text-align: right">114081.40 μs</td>
    <td style="white-space: nowrap; text-align: right">124896.52 μs</td>
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
    <td style="white-space: nowrap;text-align: right">12102.87 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">251.52 K</td>
    <td style="white-space: nowrap; text-align: right">48.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">164.26 K</td>
    <td style="white-space: nowrap; text-align: right">73.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.0157 K</td>
    <td style="white-space: nowrap; text-align: right">770983.23x</td>
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
    <td style="white-space: nowrap; text-align: right">6914.43 K</td>
    <td style="white-space: nowrap; text-align: right">0.145 μs</td>
    <td style="white-space: nowrap; text-align: right">±111.04%</td>
    <td style="white-space: nowrap; text-align: right">0.0690 μs</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">195.98 K</td>
    <td style="white-space: nowrap; text-align: right">5.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.56%</td>
    <td style="white-space: nowrap; text-align: right">4.97 μs</td>
    <td style="white-space: nowrap; text-align: right">6.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">128.21 K</td>
    <td style="white-space: nowrap; text-align: right">7.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.48%</td>
    <td style="white-space: nowrap; text-align: right">7.48 μs</td>
    <td style="white-space: nowrap; text-align: right">11.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">54.17 K</td>
    <td style="white-space: nowrap; text-align: right">18.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.17%</td>
    <td style="white-space: nowrap; text-align: right">15.51 μs</td>
    <td style="white-space: nowrap; text-align: right">34.64 μs</td>
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
    <td style="white-space: nowrap;text-align: right">6914.43 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">195.98 K</td>
    <td style="white-space: nowrap; text-align: right">35.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">128.21 K</td>
    <td style="white-space: nowrap; text-align: right">53.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">54.17 K</td>
    <td style="white-space: nowrap; text-align: right">127.63x</td>
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
    <td style="white-space: nowrap">6.47 KB</td>
    <td>20.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.09 KB</td>
    <td>32.3x</td>
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
    <td style="white-space: nowrap; text-align: right">572.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±298.90%</td>
    <td style="white-space: nowrap; text-align: right">0.117 μs</td>
    <td style="white-space: nowrap; text-align: right">20.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">159.26 K</td>
    <td style="white-space: nowrap; text-align: right">6.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.11%</td>
    <td style="white-space: nowrap; text-align: right">6.14 μs</td>
    <td style="white-space: nowrap; text-align: right">8.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">81.95 K</td>
    <td style="white-space: nowrap; text-align: right">12.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.57%</td>
    <td style="white-space: nowrap; text-align: right">9.91 μs</td>
    <td style="white-space: nowrap; text-align: right">25.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">41.59 K</td>
    <td style="white-space: nowrap; text-align: right">24.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±42.64%</td>
    <td style="white-space: nowrap; text-align: right">19.83 μs</td>
    <td style="white-space: nowrap; text-align: right">55.94 μs</td>
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
    <td style="white-space: nowrap;text-align: right">572.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">159.26 K</td>
    <td style="white-space: nowrap; text-align: right">3.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">81.95 K</td>
    <td style="white-space: nowrap; text-align: right">6.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">41.59 K</td>
    <td style="white-space: nowrap; text-align: right">13.77x</td>
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
    <td style="white-space: nowrap">0.47 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">3.88 KB</td>
    <td>8.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">9.81 KB</td>
    <td>20.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.59 KB</td>
    <td>22.58x</td>
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
    <td style="white-space: nowrap; text-align: right">4610.07 K</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.34%</td>
    <td style="white-space: nowrap; text-align: right">0.132 μs</td>
    <td style="white-space: nowrap; text-align: right">0.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">132.90 K</td>
    <td style="white-space: nowrap; text-align: right">7.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.82%</td>
    <td style="white-space: nowrap; text-align: right">6.40 μs</td>
    <td style="white-space: nowrap; text-align: right">18.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">66.31 K</td>
    <td style="white-space: nowrap; text-align: right">15.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.58%</td>
    <td style="white-space: nowrap; text-align: right">13.54 μs</td>
    <td style="white-space: nowrap; text-align: right">30.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">53.96 K</td>
    <td style="white-space: nowrap; text-align: right">18.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.76%</td>
    <td style="white-space: nowrap; text-align: right">14.70 μs</td>
    <td style="white-space: nowrap; text-align: right">32.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">4610.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">132.90 K</td>
    <td style="white-space: nowrap; text-align: right">34.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">66.31 K</td>
    <td style="white-space: nowrap; text-align: right">69.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">53.96 K</td>
    <td style="white-space: nowrap; text-align: right">85.43x</td>
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
    <td style="white-space: nowrap">4.83 KB</td>
    <td>51.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">12.98 KB</td>
    <td>138.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">11.48 KB</td>
    <td>122.5x</td>
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
    <td style="white-space: nowrap; text-align: right">3942.55 K</td>
    <td style="white-space: nowrap; text-align: right">0.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.76%</td>
    <td style="white-space: nowrap; text-align: right">0.178 μs</td>
    <td style="white-space: nowrap; text-align: right">0.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">130.52 K</td>
    <td style="white-space: nowrap; text-align: right">7.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.96%</td>
    <td style="white-space: nowrap; text-align: right">6.96 μs</td>
    <td style="white-space: nowrap; text-align: right">16.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">56.85 K</td>
    <td style="white-space: nowrap; text-align: right">17.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.44%</td>
    <td style="white-space: nowrap; text-align: right">14.63 μs</td>
    <td style="white-space: nowrap; text-align: right">33.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.18 K</td>
    <td style="white-space: nowrap; text-align: right">22.13 μs</td>
    <td style="white-space: nowrap; text-align: right">±43.24%</td>
    <td style="white-space: nowrap; text-align: right">18.52 μs</td>
    <td style="white-space: nowrap; text-align: right">51.13 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3942.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">130.52 K</td>
    <td style="white-space: nowrap; text-align: right">30.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">56.85 K</td>
    <td style="white-space: nowrap; text-align: right">69.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.18 K</td>
    <td style="white-space: nowrap; text-align: right">87.27x</td>
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
    <td style="white-space: nowrap">16.28 KB</td>
    <td>20.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">14.34 KB</td>
    <td>18.35x</td>
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
    <td style="white-space: nowrap; text-align: right">1301.96 K</td>
    <td style="white-space: nowrap; text-align: right">0.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±204.60%</td>
    <td style="white-space: nowrap; text-align: right">0.177 μs</td>
    <td style="white-space: nowrap; text-align: right">5.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">68.88 K</td>
    <td style="white-space: nowrap; text-align: right">14.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.26%</td>
    <td style="white-space: nowrap; text-align: right">9.31 μs</td>
    <td style="white-space: nowrap; text-align: right">47.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.15 K</td>
    <td style="white-space: nowrap; text-align: right">18.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.88%</td>
    <td style="white-space: nowrap; text-align: right">18.29 μs</td>
    <td style="white-space: nowrap; text-align: right">25.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">42.05 K</td>
    <td style="white-space: nowrap; text-align: right">23.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±48.10%</td>
    <td style="white-space: nowrap; text-align: right">20.23 μs</td>
    <td style="white-space: nowrap; text-align: right">63.06 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1301.96 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">68.88 K</td>
    <td style="white-space: nowrap; text-align: right">18.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.15 K</td>
    <td style="white-space: nowrap; text-align: right">24.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">42.05 K</td>
    <td style="white-space: nowrap; text-align: right">30.96x</td>
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
    <td style="white-space: nowrap">0.88 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">7.05 KB</td>
    <td>8.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">21.58 KB</td>
    <td>24.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">17.99 KB</td>
    <td>20.56x</td>
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
    <td style="white-space: nowrap; text-align: right">2385.01 K</td>
    <td style="white-space: nowrap; text-align: right">0.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.83%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">2.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">110.76 K</td>
    <td style="white-space: nowrap; text-align: right">9.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.52%</td>
    <td style="white-space: nowrap; text-align: right">8.27 μs</td>
    <td style="white-space: nowrap; text-align: right">12.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">43.89 K</td>
    <td style="white-space: nowrap; text-align: right">22.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.40%</td>
    <td style="white-space: nowrap; text-align: right">22.39 μs</td>
    <td style="white-space: nowrap; text-align: right">30.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">42.26 K</td>
    <td style="white-space: nowrap; text-align: right">23.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.00%</td>
    <td style="white-space: nowrap; text-align: right">23.12 μs</td>
    <td style="white-space: nowrap; text-align: right">30.08 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2385.01 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">110.76 K</td>
    <td style="white-space: nowrap; text-align: right">21.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">43.89 K</td>
    <td style="white-space: nowrap; text-align: right">54.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">42.26 K</td>
    <td style="white-space: nowrap; text-align: right">56.44x</td>
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
    <td style="white-space: nowrap">1.09 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">8 KB</td>
    <td>7.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">26.57 KB</td>
    <td>24.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">21.34 KB</td>
    <td>19.51x</td>
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
    <td style="white-space: nowrap; text-align: right">2074.69 K</td>
    <td style="white-space: nowrap; text-align: right">0.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.98%</td>
    <td style="white-space: nowrap; text-align: right">0.26 μs</td>
    <td style="white-space: nowrap; text-align: right">1.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">92.23 K</td>
    <td style="white-space: nowrap; text-align: right">10.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.13%</td>
    <td style="white-space: nowrap; text-align: right">8.48 μs</td>
    <td style="white-space: nowrap; text-align: right">31.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">36.43 K</td>
    <td style="white-space: nowrap; text-align: right">27.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.29%</td>
    <td style="white-space: nowrap; text-align: right">25.43 μs</td>
    <td style="white-space: nowrap; text-align: right">37.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.98 K</td>
    <td style="white-space: nowrap; text-align: right">32.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±42.15%</td>
    <td style="white-space: nowrap; text-align: right">25.09 μs</td>
    <td style="white-space: nowrap; text-align: right">64.06 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2074.69 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">92.23 K</td>
    <td style="white-space: nowrap; text-align: right">22.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">36.43 K</td>
    <td style="white-space: nowrap; text-align: right">56.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.98 K</td>
    <td style="white-space: nowrap; text-align: right">66.98x</td>
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
    <td style="white-space: nowrap">8.97 KB</td>
    <td>7.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">25 KB</td>
    <td>20.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">31.76 KB</td>
    <td>25.41x</td>
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
    <td style="white-space: nowrap; text-align: right">3279.46 K</td>
    <td style="white-space: nowrap; text-align: right">0.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±34.79%</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
    <td style="white-space: nowrap; text-align: right">0.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">97.95 K</td>
    <td style="white-space: nowrap; text-align: right">10.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.12%</td>
    <td style="white-space: nowrap; text-align: right">9.64 μs</td>
    <td style="white-space: nowrap; text-align: right">13.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">33.52 K</td>
    <td style="white-space: nowrap; text-align: right">29.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.52%</td>
    <td style="white-space: nowrap; text-align: right">28.22 μs</td>
    <td style="white-space: nowrap; text-align: right">40.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">29.23 K</td>
    <td style="white-space: nowrap; text-align: right">34.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.50%</td>
    <td style="white-space: nowrap; text-align: right">28.77 μs</td>
    <td style="white-space: nowrap; text-align: right">77.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3279.46 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">97.95 K</td>
    <td style="white-space: nowrap; text-align: right">33.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">33.52 K</td>
    <td style="white-space: nowrap; text-align: right">97.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">29.23 K</td>
    <td style="white-space: nowrap; text-align: right">112.18x</td>
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
    <td style="white-space: nowrap">10.22 KB</td>
    <td>7.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">36.56 KB</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">28.55 KB</td>
    <td>20.3x</td>
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
    <td style="white-space: nowrap; text-align: right">2017.87 K</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±69.07%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">78.04 K</td>
    <td style="white-space: nowrap; text-align: right">12.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±55.47%</td>
    <td style="white-space: nowrap; text-align: right">10.06 μs</td>
    <td style="white-space: nowrap; text-align: right">34.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.70 K</td>
    <td style="white-space: nowrap; text-align: right">34.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.94%</td>
    <td style="white-space: nowrap; text-align: right">31.96 μs</td>
    <td style="white-space: nowrap; text-align: right">51.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">25.91 K</td>
    <td style="white-space: nowrap; text-align: right">38.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.63%</td>
    <td style="white-space: nowrap; text-align: right">34.16 μs</td>
    <td style="white-space: nowrap; text-align: right">69.49 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2017.87 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">78.04 K</td>
    <td style="white-space: nowrap; text-align: right">25.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.70 K</td>
    <td style="white-space: nowrap; text-align: right">70.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">25.91 K</td>
    <td style="white-space: nowrap; text-align: right">77.89x</td>
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
    <td style="white-space: nowrap">1.44 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">11.17 KB</td>
    <td>7.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">32.06 KB</td>
    <td>22.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">41.70 KB</td>
    <td>29.01x</td>
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
    <td style="white-space: nowrap; text-align: right">1197.91 K</td>
    <td style="white-space: nowrap; text-align: right">0.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.28%</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">1.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">49.24 K</td>
    <td style="white-space: nowrap; text-align: right">20.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.58%</td>
    <td style="white-space: nowrap; text-align: right">15.73 μs</td>
    <td style="white-space: nowrap; text-align: right">35.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.69 K</td>
    <td style="white-space: nowrap; text-align: right">68.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.94%</td>
    <td style="white-space: nowrap; text-align: right">64.82 μs</td>
    <td style="white-space: nowrap; text-align: right">94.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.28 K</td>
    <td style="white-space: nowrap; text-align: right">70.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.35%</td>
    <td style="white-space: nowrap; text-align: right">66.19 μs</td>
    <td style="white-space: nowrap; text-align: right">116.79 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1197.91 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">49.24 K</td>
    <td style="white-space: nowrap; text-align: right">24.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.69 K</td>
    <td style="white-space: nowrap; text-align: right">81.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.28 K</td>
    <td style="white-space: nowrap; text-align: right">83.9x</td>
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
    <td style="white-space: nowrap">3.13 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">21.94 KB</td>
    <td>7.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">70.90 KB</td>
    <td>22.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">82.92 KB</td>
    <td>26.54x</td>
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
    <td style="white-space: nowrap; text-align: right">578.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±112.35%</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
    <td style="white-space: nowrap; text-align: right">8.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">39.95 K</td>
    <td style="white-space: nowrap; text-align: right">25.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.10%</td>
    <td style="white-space: nowrap; text-align: right">22.04 μs</td>
    <td style="white-space: nowrap; text-align: right">38.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.41 K</td>
    <td style="white-space: nowrap; text-align: right">106.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.40%</td>
    <td style="white-space: nowrap; text-align: right">99.47 μs</td>
    <td style="white-space: nowrap; text-align: right">165.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">106.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.61%</td>
    <td style="white-space: nowrap; text-align: right">98.01 μs</td>
    <td style="white-space: nowrap; text-align: right">157.22 μs</td>
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
    <td style="white-space: nowrap;text-align: right">578.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">39.95 K</td>
    <td style="white-space: nowrap; text-align: right">14.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.41 K</td>
    <td style="white-space: nowrap; text-align: right">61.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.38 K</td>
    <td style="white-space: nowrap; text-align: right">61.63x</td>
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
    <td style="white-space: nowrap">32.34 KB</td>
    <td>206.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">124.87 KB</td>
    <td>799.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">112.20 KB</td>
    <td>718.1x</td>
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
    <td style="white-space: nowrap; text-align: right">325.48 K</td>
    <td style="white-space: nowrap; text-align: right">3.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±111.49%</td>
    <td style="white-space: nowrap; text-align: right">1.37 μs</td>
    <td style="white-space: nowrap; text-align: right">10.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">33.39 K</td>
    <td style="white-space: nowrap; text-align: right">29.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.24%</td>
    <td style="white-space: nowrap; text-align: right">28.28 μs</td>
    <td style="white-space: nowrap; text-align: right">39.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.68 K</td>
    <td style="white-space: nowrap; text-align: right">130.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.84%</td>
    <td style="white-space: nowrap; text-align: right">124.93 μs</td>
    <td style="white-space: nowrap; text-align: right">172.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.80 K</td>
    <td style="white-space: nowrap; text-align: right">147.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.80%</td>
    <td style="white-space: nowrap; text-align: right">132.10 μs</td>
    <td style="white-space: nowrap; text-align: right">306.82 μs</td>
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
    <td style="white-space: nowrap;text-align: right">325.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">33.39 K</td>
    <td style="white-space: nowrap; text-align: right">9.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.68 K</td>
    <td style="white-space: nowrap; text-align: right">42.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.80 K</td>
    <td style="white-space: nowrap; text-align: right">47.88x</td>
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
    <td style="white-space: nowrap">42.80 KB</td>
    <td>6.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">166.16 KB</td>
    <td>26.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">155.40 KB</td>
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
    <td style="white-space: nowrap; text-align: right">339.46 K</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.62%</td>
    <td style="white-space: nowrap; text-align: right">1.84 μs</td>
    <td style="white-space: nowrap; text-align: right">11.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">28.18 K</td>
    <td style="white-space: nowrap; text-align: right">35.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.76%</td>
    <td style="white-space: nowrap; text-align: right">31.80 μs</td>
    <td style="white-space: nowrap; text-align: right">64.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.85 K</td>
    <td style="white-space: nowrap; text-align: right">171.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.20%</td>
    <td style="white-space: nowrap; text-align: right">166.50 μs</td>
    <td style="white-space: nowrap; text-align: right">236.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.80 K</td>
    <td style="white-space: nowrap; text-align: right">172.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.79%</td>
    <td style="white-space: nowrap; text-align: right">157.19 μs</td>
    <td style="white-space: nowrap; text-align: right">389.32 μs</td>
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
    <td style="white-space: nowrap;text-align: right">339.46 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">28.18 K</td>
    <td style="white-space: nowrap; text-align: right">12.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.85 K</td>
    <td style="white-space: nowrap; text-align: right">58.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.80 K</td>
    <td style="white-space: nowrap; text-align: right">58.5x</td>
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
    <td style="white-space: nowrap">7.81 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">53.41 KB</td>
    <td>6.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">198.51 KB</td>
    <td>25.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">207.75 KB</td>
    <td>26.59x</td>
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
    <td style="white-space: nowrap; text-align: right">286.63 K</td>
    <td style="white-space: nowrap; text-align: right">3.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.10%</td>
    <td style="white-space: nowrap; text-align: right">2.20 μs</td>
    <td style="white-space: nowrap; text-align: right">15.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">23.57 K</td>
    <td style="white-space: nowrap; text-align: right">42.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.56%</td>
    <td style="white-space: nowrap; text-align: right">39.72 μs</td>
    <td style="white-space: nowrap; text-align: right">77.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.01 K</td>
    <td style="white-space: nowrap; text-align: right">199.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.93%</td>
    <td style="white-space: nowrap; text-align: right">197.42 μs</td>
    <td style="white-space: nowrap; text-align: right">231.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.83 K</td>
    <td style="white-space: nowrap; text-align: right">206.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.92%</td>
    <td style="white-space: nowrap; text-align: right">195.80 μs</td>
    <td style="white-space: nowrap; text-align: right">351.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">286.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">23.57 K</td>
    <td style="white-space: nowrap; text-align: right">12.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.01 K</td>
    <td style="white-space: nowrap; text-align: right">57.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.83 K</td>
    <td style="white-space: nowrap; text-align: right">59.29x</td>
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
    <td style="white-space: nowrap">9.38 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">58.09 KB</td>
    <td>6.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">268.39 KB</td>
    <td>28.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">244.67 KB</td>
    <td>26.1x</td>
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
    <td style="white-space: nowrap; text-align: right">399.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.38%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">3.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">22.46 K</td>
    <td style="white-space: nowrap; text-align: right">44.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.91%</td>
    <td style="white-space: nowrap; text-align: right">43.71 μs</td>
    <td style="white-space: nowrap; text-align: right">55.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 K</td>
    <td style="white-space: nowrap; text-align: right">249.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.49%</td>
    <td style="white-space: nowrap; text-align: right">237.44 μs</td>
    <td style="white-space: nowrap; text-align: right">418.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.86 K</td>
    <td style="white-space: nowrap; text-align: right">259.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.64%</td>
    <td style="white-space: nowrap; text-align: right">235.73 μs</td>
    <td style="white-space: nowrap; text-align: right">405.20 μs</td>
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
    <td style="white-space: nowrap;text-align: right">399.32 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">22.46 K</td>
    <td style="white-space: nowrap; text-align: right">17.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.01 K</td>
    <td style="white-space: nowrap; text-align: right">99.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.86 K</td>
    <td style="white-space: nowrap; text-align: right">103.52x</td>
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
    <td style="white-space: nowrap">10 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">68.95 KB</td>
    <td>6.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">328.62 KB</td>
    <td>32.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">292.18 KB</td>
    <td>29.22x</td>
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
    <td style="white-space: nowrap; text-align: right">252.70 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.49%</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">12.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">18.11 K</td>
    <td style="white-space: nowrap; text-align: right">55.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±29.59%</td>
    <td style="white-space: nowrap; text-align: right">52.01 μs</td>
    <td style="white-space: nowrap; text-align: right">114.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 K</td>
    <td style="white-space: nowrap; text-align: right">292.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.23%</td>
    <td style="white-space: nowrap; text-align: right">272.76 μs</td>
    <td style="white-space: nowrap; text-align: right">497.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 K</td>
    <td style="white-space: nowrap; text-align: right">292.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.18%</td>
    <td style="white-space: nowrap; text-align: right">276.26 μs</td>
    <td style="white-space: nowrap; text-align: right">477.67 μs</td>
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
    <td style="white-space: nowrap;text-align: right">252.70 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">18.11 K</td>
    <td style="white-space: nowrap; text-align: right">13.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 K</td>
    <td style="white-space: nowrap; text-align: right">73.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 K</td>
    <td style="white-space: nowrap; text-align: right">73.98x</td>
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
    <td style="white-space: nowrap">12.50 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">84.48 KB</td>
    <td>6.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">338.45 KB</td>
    <td>27.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">388.57 KB</td>
    <td>31.09x</td>
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
    <td style="white-space: nowrap; text-align: right">303.67 K</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.02%</td>
    <td style="white-space: nowrap; text-align: right">3.18 μs</td>
    <td style="white-space: nowrap; text-align: right">4.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.21 K</td>
    <td style="white-space: nowrap; text-align: right">61.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.76%</td>
    <td style="white-space: nowrap; text-align: right">57.11 μs</td>
    <td style="white-space: nowrap; text-align: right">104.30 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 K</td>
    <td style="white-space: nowrap; text-align: right">315.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.85%</td>
    <td style="white-space: nowrap; text-align: right">308.83 μs</td>
    <td style="white-space: nowrap; text-align: right">377.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.99 K</td>
    <td style="white-space: nowrap; text-align: right">334.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.33%</td>
    <td style="white-space: nowrap; text-align: right">331.61 μs</td>
    <td style="white-space: nowrap; text-align: right">458.83 μs</td>
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
    <td style="white-space: nowrap;text-align: right">303.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.21 K</td>
    <td style="white-space: nowrap; text-align: right">18.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 K</td>
    <td style="white-space: nowrap; text-align: right">95.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.99 K</td>
    <td style="white-space: nowrap; text-align: right">101.72x</td>
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
    <td style="white-space: nowrap">14.06 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">95.06 KB</td>
    <td>6.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">383.61 KB</td>
    <td>27.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">448.92 KB</td>
    <td>31.92x</td>
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
    <td style="white-space: nowrap; text-align: right">222.01 K</td>
    <td style="white-space: nowrap; text-align: right">4.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.68%</td>
    <td style="white-space: nowrap; text-align: right">3.47 μs</td>
    <td style="white-space: nowrap; text-align: right">19.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.08 K</td>
    <td style="white-space: nowrap; text-align: right">62.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.04%</td>
    <td style="white-space: nowrap; text-align: right">58.98 μs</td>
    <td style="white-space: nowrap; text-align: right">86.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.81 K</td>
    <td style="white-space: nowrap; text-align: right">356.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.92%</td>
    <td style="white-space: nowrap; text-align: right">352.05 μs</td>
    <td style="white-space: nowrap; text-align: right">414.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">359.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.05%</td>
    <td style="white-space: nowrap; text-align: right">333.61 μs</td>
    <td style="white-space: nowrap; text-align: right">654.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">222.01 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">16.08 K</td>
    <td style="white-space: nowrap; text-align: right">13.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.81 K</td>
    <td style="white-space: nowrap; text-align: right">79.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.78 K</td>
    <td style="white-space: nowrap; text-align: right">79.76x</td>
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
    <td style="white-space: nowrap">15.63 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">92.55 KB</td>
    <td>5.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">509.25 KB</td>
    <td>32.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">429.73 KB</td>
    <td>27.5x</td>
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
    <td style="white-space: nowrap; text-align: right">109.98 K</td>
    <td style="white-space: nowrap; text-align: right">9.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.66%</td>
    <td style="white-space: nowrap; text-align: right">6.62 μs</td>
    <td style="white-space: nowrap; text-align: right">25.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.00 K</td>
    <td style="white-space: nowrap; text-align: right">111.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.44%</td>
    <td style="white-space: nowrap; text-align: right">110.59 μs</td>
    <td style="white-space: nowrap; text-align: right">117.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 K</td>
    <td style="white-space: nowrap; text-align: right">756.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.18%</td>
    <td style="white-space: nowrap; text-align: right">741.93 μs</td>
    <td style="white-space: nowrap; text-align: right">824.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.24 K</td>
    <td style="white-space: nowrap; text-align: right">805.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.46%</td>
    <td style="white-space: nowrap; text-align: right">769.44 μs</td>
    <td style="white-space: nowrap; text-align: right">1086.30 μs</td>
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
    <td style="white-space: nowrap;text-align: right">109.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.00 K</td>
    <td style="white-space: nowrap; text-align: right">12.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 K</td>
    <td style="white-space: nowrap; text-align: right">83.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.24 K</td>
    <td style="white-space: nowrap; text-align: right">88.61x</td>
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
    <td style="white-space: nowrap">10.44 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">210.26 KB</td>
    <td>20.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">927.45 KB</td>
    <td>88.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1017.57 KB</td>
    <td>97.49x</td>
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
    <td style="white-space: nowrap; text-align: right">102.30 K</td>
    <td style="white-space: nowrap; text-align: right">0.00978 ms</td>
    <td style="white-space: nowrap; text-align: right">±24.65%</td>
    <td style="white-space: nowrap; text-align: right">0.00918 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0187 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">0.179 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.34%</td>
    <td style="white-space: nowrap; text-align: right">0.175 ms</td>
    <td style="white-space: nowrap; text-align: right">0.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.18 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.55%</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">1.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.62%</td>
    <td style="white-space: nowrap; text-align: right">1.21 ms</td>
    <td style="white-space: nowrap; text-align: right">1.30 ms</td>
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
    <td style="white-space: nowrap;text-align: right">102.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">18.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.85 K</td>
    <td style="white-space: nowrap; text-align: right">120.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.83 K</td>
    <td style="white-space: nowrap; text-align: right">123.64x</td>
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
    <td style="white-space: nowrap">0.0403 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.29 MB</td>
    <td>7.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.49 MB</td>
    <td>37.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.42 MB</td>
    <td>35.34x</td>
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
    <td style="white-space: nowrap; text-align: right">70.54 K</td>
    <td style="white-space: nowrap; text-align: right">0.0142 ms</td>
    <td style="white-space: nowrap; text-align: right">±25.67%</td>
    <td style="white-space: nowrap; text-align: right">0.0129 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0268 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.22 K</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.03%</td>
    <td style="white-space: nowrap; text-align: right">0.22 ms</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.54%</td>
    <td style="white-space: nowrap; text-align: right">1.51 ms</td>
    <td style="white-space: nowrap; text-align: right">1.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.50%</td>
    <td style="white-space: nowrap; text-align: right">1.64 ms</td>
    <td style="white-space: nowrap; text-align: right">1.85 ms</td>
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
    <td style="white-space: nowrap;text-align: right">70.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">4.22 K</td>
    <td style="white-space: nowrap; text-align: right">16.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.66 K</td>
    <td style="white-space: nowrap; text-align: right">107.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.60 K</td>
    <td style="white-space: nowrap; text-align: right">117.52x</td>
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
    <td style="white-space: nowrap">0.0610 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.41 MB</td>
    <td>6.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.99 MB</td>
    <td>32.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.96 MB</td>
    <td>32.07x</td>
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
    <td style="white-space: nowrap; text-align: right">50.67 K</td>
    <td style="white-space: nowrap; text-align: right">0.0197 ms</td>
    <td style="white-space: nowrap; text-align: right">±40.54%</td>
    <td style="white-space: nowrap; text-align: right">0.0168 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0461 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.37 K</td>
    <td style="white-space: nowrap; text-align: right">0.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.70%</td>
    <td style="white-space: nowrap; text-align: right">0.27 ms</td>
    <td style="white-space: nowrap; text-align: right">0.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.48%</td>
    <td style="white-space: nowrap; text-align: right">1.90 ms</td>
    <td style="white-space: nowrap; text-align: right">2.29 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.46 K</td>
    <td style="white-space: nowrap; text-align: right">2.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.26%</td>
    <td style="white-space: nowrap; text-align: right">2.15 ms</td>
    <td style="white-space: nowrap; text-align: right">2.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">50.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.37 K</td>
    <td style="white-space: nowrap; text-align: right">15.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">100.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.46 K</td>
    <td style="white-space: nowrap; text-align: right">111.33x</td>
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
    <td style="white-space: nowrap">0.0478 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.44 MB</td>
    <td>9.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.49 MB</td>
    <td>51.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.50 MB</td>
    <td>52.34x</td>
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
    <td style="white-space: nowrap; text-align: right">35.76 K</td>
    <td style="white-space: nowrap; text-align: right">0.0280 ms</td>
    <td style="white-space: nowrap; text-align: right">±48.84%</td>
    <td style="white-space: nowrap; text-align: right">0.0211 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0671 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.83 K</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.52%</td>
    <td style="white-space: nowrap; text-align: right">0.33 ms</td>
    <td style="white-space: nowrap; text-align: right">0.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.40 K</td>
    <td style="white-space: nowrap; text-align: right">2.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.67%</td>
    <td style="white-space: nowrap; text-align: right">2.38 ms</td>
    <td style="white-space: nowrap; text-align: right">2.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.73%</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
    <td style="white-space: nowrap; text-align: right">2.99 ms</td>
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
    <td style="white-space: nowrap;text-align: right">35.76 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.83 K</td>
    <td style="white-space: nowrap; text-align: right">12.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.40 K</td>
    <td style="white-space: nowrap; text-align: right">90.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.37 K</td>
    <td style="white-space: nowrap; text-align: right">95.36x</td>
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
    <td style="white-space: nowrap">0.0916 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.60 MB</td>
    <td>6.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.17 MB</td>
    <td>34.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.07 MB</td>
    <td>33.52x</td>
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
    <td style="white-space: nowrap; text-align: right">38.14 K</td>
    <td style="white-space: nowrap; text-align: right">0.0262 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.21%</td>
    <td style="white-space: nowrap; text-align: right">0.0250 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0390 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.50 K</td>
    <td style="white-space: nowrap; text-align: right">0.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.28%</td>
    <td style="white-space: nowrap; text-align: right">0.40 ms</td>
    <td style="white-space: nowrap; text-align: right">0.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 K</td>
    <td style="white-space: nowrap; text-align: right">2.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.65%</td>
    <td style="white-space: nowrap; text-align: right">2.86 ms</td>
    <td style="white-space: nowrap; text-align: right">3.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.29 K</td>
    <td style="white-space: nowrap; text-align: right">3.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.80%</td>
    <td style="white-space: nowrap; text-align: right">3.40 ms</td>
    <td style="white-space: nowrap; text-align: right">4.42 ms</td>
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
    <td style="white-space: nowrap;text-align: right">38.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.50 K</td>
    <td style="white-space: nowrap; text-align: right">15.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 K</td>
    <td style="white-space: nowrap; text-align: right">111.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.29 K</td>
    <td style="white-space: nowrap; text-align: right">130.73x</td>
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
    <td style="white-space: nowrap">0.107 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.72 MB</td>
    <td>6.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.85 MB</td>
    <td>36.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.63 MB</td>
    <td>33.99x</td>
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
    <td style="white-space: nowrap; text-align: right">28.82 K</td>
    <td style="white-space: nowrap; text-align: right">0.0347 ms</td>
    <td style="white-space: nowrap; text-align: right">±33.79%</td>
    <td style="white-space: nowrap; text-align: right">0.0282 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0667 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 K</td>
    <td style="white-space: nowrap; text-align: right">0.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.46%</td>
    <td style="white-space: nowrap; text-align: right">0.43 ms</td>
    <td style="white-space: nowrap; text-align: right">0.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.72%</td>
    <td style="white-space: nowrap; text-align: right">3.53 ms</td>
    <td style="white-space: nowrap; text-align: right">5.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.27 K</td>
    <td style="white-space: nowrap; text-align: right">3.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.63%</td>
    <td style="white-space: nowrap; text-align: right">3.73 ms</td>
    <td style="white-space: nowrap; text-align: right">4.28 ms</td>
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
    <td style="white-space: nowrap;text-align: right">28.82 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 K</td>
    <td style="white-space: nowrap; text-align: right">12.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">103.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.27 K</td>
    <td style="white-space: nowrap; text-align: right">108.71x</td>
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
    <td style="white-space: nowrap">0.0853 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.73 MB</td>
    <td>8.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">4.53 MB</td>
    <td>53.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.20 MB</td>
    <td>49.19x</td>
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
    <td style="white-space: nowrap; text-align: right">27.60 K</td>
    <td style="white-space: nowrap; text-align: right">0.0362 ms</td>
    <td style="white-space: nowrap; text-align: right">±32.13%</td>
    <td style="white-space: nowrap; text-align: right">0.0320 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0756 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.88 K</td>
    <td style="white-space: nowrap; text-align: right">0.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.00%</td>
    <td style="white-space: nowrap; text-align: right">0.50 ms</td>
    <td style="white-space: nowrap; text-align: right">0.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">3.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.78%</td>
    <td style="white-space: nowrap; text-align: right">3.87 ms</td>
    <td style="white-space: nowrap; text-align: right">4.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.08%</td>
    <td style="white-space: nowrap; text-align: right">4.46 ms</td>
    <td style="white-space: nowrap; text-align: right">5.95 ms</td>
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
    <td style="white-space: nowrap;text-align: right">27.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.88 K</td>
    <td style="white-space: nowrap; text-align: right">14.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.26 K</td>
    <td style="white-space: nowrap; text-align: right">107.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">125.8x</td>
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
    <td style="white-space: nowrap">0.137 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.79 MB</td>
    <td>5.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">5.21 MB</td>
    <td>37.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.77 MB</td>
    <td>34.71x</td>
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
    <td style="white-space: nowrap; text-align: right">24.21 K</td>
    <td style="white-space: nowrap; text-align: right">0.0413 ms</td>
    <td style="white-space: nowrap; text-align: right">±36.75%</td>
    <td style="white-space: nowrap; text-align: right">0.0366 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0945 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.75 K</td>
    <td style="white-space: nowrap; text-align: right">0.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.10%</td>
    <td style="white-space: nowrap; text-align: right">0.56 ms</td>
    <td style="white-space: nowrap; text-align: right">0.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.58%</td>
    <td style="white-space: nowrap; text-align: right">4.41 ms</td>
    <td style="white-space: nowrap; text-align: right">4.53 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.198 K</td>
    <td style="white-space: nowrap; text-align: right">5.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.56%</td>
    <td style="white-space: nowrap; text-align: right">5.06 ms</td>
    <td style="white-space: nowrap; text-align: right">5.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">24.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.75 K</td>
    <td style="white-space: nowrap; text-align: right">13.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">104.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.198 K</td>
    <td style="white-space: nowrap; text-align: right">122.31x</td>
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
    <td style="white-space: nowrap">0.153 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.94 MB</td>
    <td>6.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">5.89 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">5.34 MB</td>
    <td>34.99x</td>
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
    <td style="white-space: nowrap; text-align: right">11519.22</td>
    <td style="white-space: nowrap; text-align: right">0.0868 ms</td>
    <td style="white-space: nowrap; text-align: right">±27.42%</td>
    <td style="white-space: nowrap; text-align: right">0.0777 ms</td>
    <td style="white-space: nowrap; text-align: right">0.166 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">876.61</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.37%</td>
    <td style="white-space: nowrap; text-align: right">1.14 ms</td>
    <td style="white-space: nowrap; text-align: right">1.18 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">102.37</td>
    <td style="white-space: nowrap; text-align: right">9.77 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.12%</td>
    <td style="white-space: nowrap; text-align: right">9.16 ms</td>
    <td style="white-space: nowrap; text-align: right">13.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">79.84</td>
    <td style="white-space: nowrap; text-align: right">12.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.27%</td>
    <td style="white-space: nowrap; text-align: right">11.82 ms</td>
    <td style="white-space: nowrap; text-align: right">16.09 ms</td>
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
    <td style="white-space: nowrap;text-align: right">11519.22</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">876.61</td>
    <td style="white-space: nowrap; text-align: right">13.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">102.37</td>
    <td style="white-space: nowrap; text-align: right">112.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">79.84</td>
    <td style="white-space: nowrap; text-align: right">144.29x</td>
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
    <td style="white-space: nowrap">1.85 MB</td>
    <td>6.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">11.78 MB</td>
    <td>38.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">11.23 MB</td>
    <td>36.79x</td>
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
    <td style="white-space: nowrap; text-align: right">7990.41</td>
    <td style="white-space: nowrap; text-align: right">0.125 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.71%</td>
    <td style="white-space: nowrap; text-align: right">0.119 ms</td>
    <td style="white-space: nowrap; text-align: right">0.152 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">555.10</td>
    <td style="white-space: nowrap; text-align: right">1.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.63%</td>
    <td style="white-space: nowrap; text-align: right">1.80 ms</td>
    <td style="white-space: nowrap; text-align: right">1.90 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">65.81</td>
    <td style="white-space: nowrap; text-align: right">15.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.20%</td>
    <td style="white-space: nowrap; text-align: right">14.03 ms</td>
    <td style="white-space: nowrap; text-align: right">20.48 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">47.37</td>
    <td style="white-space: nowrap; text-align: right">21.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.10%</td>
    <td style="white-space: nowrap; text-align: right">19.77 ms</td>
    <td style="white-space: nowrap; text-align: right">26.90 ms</td>
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
    <td style="white-space: nowrap;text-align: right">7990.41</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">555.10</td>
    <td style="white-space: nowrap; text-align: right">14.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">65.81</td>
    <td style="white-space: nowrap; text-align: right">121.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">47.37</td>
    <td style="white-space: nowrap; text-align: right">168.68x</td>
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
    <td style="white-space: nowrap">0.46 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">3.07 MB</td>
    <td>6.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">17.68 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">17.40 MB</td>
    <td>38.02x</td>
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
    <td style="white-space: nowrap; text-align: right">4881.77</td>
    <td style="white-space: nowrap; text-align: right">0.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±36.94%</td>
    <td style="white-space: nowrap; text-align: right">0.175 ms</td>
    <td style="white-space: nowrap; text-align: right">0.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">343.42</td>
    <td style="white-space: nowrap; text-align: right">2.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±19.51%</td>
    <td style="white-space: nowrap; text-align: right">2.64 ms</td>
    <td style="white-space: nowrap; text-align: right">4.09 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">18.61</td>
    <td style="white-space: nowrap; text-align: right">53.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±142.28%</td>
    <td style="white-space: nowrap; text-align: right">21.05 ms</td>
    <td style="white-space: nowrap; text-align: right">209.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.03</td>
    <td style="white-space: nowrap; text-align: right">71.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±123.20%</td>
    <td style="white-space: nowrap; text-align: right">34.32 ms</td>
    <td style="white-space: nowrap; text-align: right">228.16 ms</td>
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
    <td style="white-space: nowrap;text-align: right">4881.77</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">343.42</td>
    <td style="white-space: nowrap; text-align: right">14.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">18.61</td>
    <td style="white-space: nowrap; text-align: right">262.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">14.03</td>
    <td style="white-space: nowrap; text-align: right">347.83x</td>
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
    <td style="white-space: nowrap">0.61 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">4.09 MB</td>
    <td>6.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">23.57 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">23.81 MB</td>
    <td>39.0x</td>
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
    <td style="white-space: nowrap; text-align: right">3234.40</td>
    <td style="white-space: nowrap; text-align: right">0.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±38.58%</td>
    <td style="white-space: nowrap; text-align: right">0.23 ms</td>
    <td style="white-space: nowrap; text-align: right">0.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">270.54</td>
    <td style="white-space: nowrap; text-align: right">3.70 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.75%</td>
    <td style="white-space: nowrap; text-align: right">3.33 ms</td>
    <td style="white-space: nowrap; text-align: right">5.17 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">36.63</td>
    <td style="white-space: nowrap; text-align: right">27.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.34%</td>
    <td style="white-space: nowrap; text-align: right">25.82 ms</td>
    <td style="white-space: nowrap; text-align: right">32.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">18.93</td>
    <td style="white-space: nowrap; text-align: right">52.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.86%</td>
    <td style="white-space: nowrap; text-align: right">53.17 ms</td>
    <td style="white-space: nowrap; text-align: right">61.81 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3234.40</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">270.54</td>
    <td style="white-space: nowrap; text-align: right">11.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">36.63</td>
    <td style="white-space: nowrap; text-align: right">88.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">18.93</td>
    <td style="white-space: nowrap; text-align: right">170.83x</td>
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
    <td style="white-space: nowrap">5.07 MB</td>
    <td>6.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">29.46 MB</td>
    <td>38.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">30.38 MB</td>
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
    <td style="white-space: nowrap; text-align: right">2571.75</td>
    <td style="white-space: nowrap; text-align: right">0.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±40.85%</td>
    <td style="white-space: nowrap; text-align: right">0.26 ms</td>
    <td style="white-space: nowrap; text-align: right">0.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">217.99</td>
    <td style="white-space: nowrap; text-align: right">4.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.51%</td>
    <td style="white-space: nowrap; text-align: right">4.07 ms</td>
    <td style="white-space: nowrap; text-align: right">6.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.01</td>
    <td style="white-space: nowrap; text-align: right">31.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.74%</td>
    <td style="white-space: nowrap; text-align: right">29.98 ms</td>
    <td style="white-space: nowrap; text-align: right">37.21 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">17.35</td>
    <td style="white-space: nowrap; text-align: right">57.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.54%</td>
    <td style="white-space: nowrap; text-align: right">56.00 ms</td>
    <td style="white-space: nowrap; text-align: right">67.53 ms</td>
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
    <td style="white-space: nowrap;text-align: right">2571.75</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">217.99</td>
    <td style="white-space: nowrap; text-align: right">11.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.01</td>
    <td style="white-space: nowrap; text-align: right">80.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">17.35</td>
    <td style="white-space: nowrap; text-align: right">148.21x</td>
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
    <td style="white-space: nowrap">0.0790 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">6.13 MB</td>
    <td>77.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">37.18 MB</td>
    <td>470.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">37.07 MB</td>
    <td>469.12x</td>
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
    <td style="white-space: nowrap; text-align: right">2601.89</td>
    <td style="white-space: nowrap; text-align: right">0.38 ms</td>
    <td style="white-space: nowrap; text-align: right">±38.47%</td>
    <td style="white-space: nowrap; text-align: right">0.31 ms</td>
    <td style="white-space: nowrap; text-align: right">0.65 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">179.73</td>
    <td style="white-space: nowrap; text-align: right">5.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±21.30%</td>
    <td style="white-space: nowrap; text-align: right">5.04 ms</td>
    <td style="white-space: nowrap; text-align: right">7.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">27.13</td>
    <td style="white-space: nowrap; text-align: right">36.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.71%</td>
    <td style="white-space: nowrap; text-align: right">36.34 ms</td>
    <td style="white-space: nowrap; text-align: right">38.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">15.26</td>
    <td style="white-space: nowrap; text-align: right">65.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.28%</td>
    <td style="white-space: nowrap; text-align: right">65.29 ms</td>
    <td style="white-space: nowrap; text-align: right">68.26 ms</td>
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
    <td style="white-space: nowrap;text-align: right">2601.89</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">179.73</td>
    <td style="white-space: nowrap; text-align: right">14.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">27.13</td>
    <td style="white-space: nowrap; text-align: right">95.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">15.26</td>
    <td style="white-space: nowrap; text-align: right">170.47x</td>
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
    <td style="white-space: nowrap">6.53 MB</td>
    <td>22.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">44.91 MB</td>
    <td>153.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">43.83 MB</td>
    <td>150.04x</td>
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
    <td style="white-space: nowrap; text-align: right">2052.80</td>
    <td style="white-space: nowrap; text-align: right">0.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±36.69%</td>
    <td style="white-space: nowrap; text-align: right">0.36 ms</td>
    <td style="white-space: nowrap; text-align: right">0.74 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">24.16</td>
    <td style="white-space: nowrap; text-align: right">41.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.00%</td>
    <td style="white-space: nowrap; text-align: right">41.13 ms</td>
    <td style="white-space: nowrap; text-align: right">42.57 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">22.06</td>
    <td style="white-space: nowrap; text-align: right">45.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±195.63%</td>
    <td style="white-space: nowrap; text-align: right">5.58 ms</td>
    <td style="white-space: nowrap; text-align: right">203.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.11</td>
    <td style="white-space: nowrap; text-align: right">76.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.45%</td>
    <td style="white-space: nowrap; text-align: right">76.54 ms</td>
    <td style="white-space: nowrap; text-align: right">77.19 ms</td>
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
    <td style="white-space: nowrap;text-align: right">2052.80</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">24.16</td>
    <td style="white-space: nowrap; text-align: right">84.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">22.06</td>
    <td style="white-space: nowrap; text-align: right">93.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.11</td>
    <td style="white-space: nowrap; text-align: right">156.54x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">52.63 MB</td>
    <td>69.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">8.17 MB</td>
    <td>10.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">50.67 MB</td>
    <td>66.68x</td>
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
    <td style="white-space: nowrap; text-align: right">1491.88</td>
    <td style="white-space: nowrap; text-align: right">0.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±32.24%</td>
    <td style="white-space: nowrap; text-align: right">0.80 ms</td>
    <td style="white-space: nowrap; text-align: right">0.84 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">85.10</td>
    <td style="white-space: nowrap; text-align: right">11.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±20.18%</td>
    <td style="white-space: nowrap; text-align: right">11.92 ms</td>
    <td style="white-space: nowrap; text-align: right">14.93 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">19.79</td>
    <td style="white-space: nowrap; text-align: right">50.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.96%</td>
    <td style="white-space: nowrap; text-align: right">47.22 ms</td>
    <td style="white-space: nowrap; text-align: right">61.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">11.38</td>
    <td style="white-space: nowrap; text-align: right">87.89 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.60%</td>
    <td style="white-space: nowrap; text-align: right">87.87 ms</td>
    <td style="white-space: nowrap; text-align: right">89.31 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1491.88</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">85.10</td>
    <td style="white-space: nowrap; text-align: right">17.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">19.79</td>
    <td style="white-space: nowrap; text-align: right">75.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">11.38</td>
    <td style="white-space: nowrap; text-align: right">131.13x</td>
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
    <td style="white-space: nowrap">1.37 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">8.96 MB</td>
    <td>6.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">60.35 MB</td>
    <td>43.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">57.52 MB</td>
    <td>41.88x</td>
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
    <td style="white-space: nowrap; text-align: right">900.32</td>
    <td style="white-space: nowrap; text-align: right">1.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±17.71%</td>
    <td style="white-space: nowrap; text-align: right">1.02 ms</td>
    <td style="white-space: nowrap; text-align: right">1.42 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">110.46</td>
    <td style="white-space: nowrap; text-align: right">9.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±48.57%</td>
    <td style="white-space: nowrap; text-align: right">7.09 ms</td>
    <td style="white-space: nowrap; text-align: right">16.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">17.96</td>
    <td style="white-space: nowrap; text-align: right">55.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.77%</td>
    <td style="white-space: nowrap; text-align: right">53.97 ms</td>
    <td style="white-space: nowrap; text-align: right">63.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.15</td>
    <td style="white-space: nowrap; text-align: right">109.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.04%</td>
    <td style="white-space: nowrap; text-align: right">107.17 ms</td>
    <td style="white-space: nowrap; text-align: right">117.78 ms</td>
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
    <td style="white-space: nowrap;text-align: right">900.32</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">110.46</td>
    <td style="white-space: nowrap; text-align: right">8.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">17.96</td>
    <td style="white-space: nowrap; text-align: right">50.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.15</td>
    <td style="white-space: nowrap; text-align: right">98.36x</td>
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
    <td style="white-space: nowrap">0.47 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">10.22 MB</td>
    <td>21.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">68.08 MB</td>
    <td>143.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">64.45 MB</td>
    <td>135.92x</td>
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
    <td style="white-space: nowrap; text-align: right">137.75</td>
    <td style="white-space: nowrap; text-align: right">7.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.81%</td>
    <td style="white-space: nowrap; text-align: right">9.56 ms</td>
    <td style="white-space: nowrap; text-align: right">11.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">61.70</td>
    <td style="white-space: nowrap; text-align: right">16.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.44%</td>
    <td style="white-space: nowrap; text-align: right">16.29 ms</td>
    <td style="white-space: nowrap; text-align: right">18.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">8.25</td>
    <td style="white-space: nowrap; text-align: right">121.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.45%</td>
    <td style="white-space: nowrap; text-align: right">121.21 ms</td>
    <td style="white-space: nowrap; text-align: right">125.02 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.68</td>
    <td style="white-space: nowrap; text-align: right">271.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±15.26%</td>
    <td style="white-space: nowrap; text-align: right">271.41 ms</td>
    <td style="white-space: nowrap; text-align: right">300.69 ms</td>
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
    <td style="white-space: nowrap;text-align: right">137.75</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">61.70</td>
    <td style="white-space: nowrap; text-align: right">2.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">8.25</td>
    <td style="white-space: nowrap; text-align: right">16.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.68</td>
    <td style="white-space: nowrap; text-align: right">37.39x</td>
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
    <td style="white-space: nowrap">1.79 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">20.44 MB</td>
    <td>11.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">136.16 MB</td>
    <td>76.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">134.66 MB</td>
    <td>75.4x</td>
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
    <td style="white-space: nowrap; text-align: right">653.64</td>
    <td style="white-space: nowrap; text-align: right">1.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.02%</td>
    <td style="white-space: nowrap; text-align: right">1.60 ms</td>
    <td style="white-space: nowrap; text-align: right">1.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">38.02</td>
    <td style="white-space: nowrap; text-align: right">26.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.64%</td>
    <td style="white-space: nowrap; text-align: right">28.62 ms</td>
    <td style="white-space: nowrap; text-align: right">29.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.25</td>
    <td style="white-space: nowrap; text-align: right">190.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±13.63%</td>
    <td style="white-space: nowrap; text-align: right">190.40 ms</td>
    <td style="white-space: nowrap; text-align: right">208.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.08</td>
    <td style="white-space: nowrap; text-align: right">927.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">927.80 ms</td>
    <td style="white-space: nowrap; text-align: right">927.80 ms</td>
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
    <td style="white-space: nowrap;text-align: right">653.64</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">38.02</td>
    <td style="white-space: nowrap; text-align: right">17.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.25</td>
    <td style="white-space: nowrap; text-align: right">124.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.08</td>
    <td style="white-space: nowrap; text-align: right">606.44x</td>
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
    <td style="white-space: nowrap">1.44 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">29.37 MB</td>
    <td>20.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">204.24 MB</td>
    <td>141.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">206.70 MB</td>
    <td>143.22x</td>
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
    <td style="white-space: nowrap; text-align: right">7.88</td>
    <td style="white-space: nowrap; text-align: right">126.94 ms</td>
    <td style="white-space: nowrap; text-align: right">±138.21%</td>
    <td style="white-space: nowrap; text-align: right">126.94 ms</td>
    <td style="white-space: nowrap; text-align: right">250.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.79</td>
    <td style="white-space: nowrap; text-align: right">147.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±104.54%</td>
    <td style="white-space: nowrap; text-align: right">147.35 ms</td>
    <td style="white-space: nowrap; text-align: right">256.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.53</td>
    <td style="white-space: nowrap; text-align: right">220.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">220.64 ms</td>
    <td style="white-space: nowrap; text-align: right">220.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88</td>
    <td style="white-space: nowrap; text-align: right">531.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">531.91 ms</td>
    <td style="white-space: nowrap; text-align: right">531.91 ms</td>
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
    <td style="white-space: nowrap;text-align: right">7.88</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">6.79</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.53</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88</td>
    <td style="white-space: nowrap; text-align: right">4.19x</td>
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
    <td style="white-space: nowrap">5.52 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">39.54 MB</td>
    <td>7.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272.32 MB</td>
    <td>49.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">280.66 MB</td>
    <td>50.88x</td>
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
    <td style="white-space: nowrap; text-align: right">38.96</td>
    <td style="white-space: nowrap; text-align: right">25.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.81%</td>
    <td style="white-space: nowrap; text-align: right">25.67 ms</td>
    <td style="white-space: nowrap; text-align: right">26.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.80</td>
    <td style="white-space: nowrap; text-align: right">50.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.79%</td>
    <td style="white-space: nowrap; text-align: right">50.50 ms</td>
    <td style="white-space: nowrap; text-align: right">51.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.51</td>
    <td style="white-space: nowrap; text-align: right">284.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">284.60 ms</td>
    <td style="white-space: nowrap; text-align: right">284.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.25</td>
    <td style="white-space: nowrap; text-align: right">800.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">800.26 ms</td>
    <td style="white-space: nowrap; text-align: right">800.26 ms</td>
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
    <td style="white-space: nowrap;text-align: right">38.96</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.80</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.51</td>
    <td style="white-space: nowrap; text-align: right">11.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.25</td>
    <td style="white-space: nowrap; text-align: right">31.18x</td>
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
    <td style="white-space: nowrap">4.56 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">51.09 MB</td>
    <td>11.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">340.39 MB</td>
    <td>74.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">356.25 MB</td>
    <td>78.09x</td>
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
    <td style="white-space: nowrap; text-align: right">110.28</td>
    <td style="white-space: nowrap; text-align: right">9.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">9.07 ms</td>
    <td style="white-space: nowrap; text-align: right">9.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">13.36</td>
    <td style="white-space: nowrap; text-align: right">74.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">74.86 ms</td>
    <td style="white-space: nowrap; text-align: right">74.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.18</td>
    <td style="white-space: nowrap; text-align: right">458.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">458.76 ms</td>
    <td style="white-space: nowrap; text-align: right">458.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.94</td>
    <td style="white-space: nowrap; text-align: right">1061.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1061.14 ms</td>
    <td style="white-space: nowrap; text-align: right">1061.14 ms</td>
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
    <td style="white-space: nowrap;text-align: right">110.28</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">13.36</td>
    <td style="white-space: nowrap; text-align: right">8.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.18</td>
    <td style="white-space: nowrap; text-align: right">50.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.94</td>
    <td style="white-space: nowrap; text-align: right">117.02x</td>
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
    <td style="white-space: nowrap">5.45 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">61.30 MB</td>
    <td>11.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">426.78 MB</td>
    <td>78.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">433.20 MB</td>
    <td>79.46x</td>
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
    <td style="white-space: nowrap; text-align: right">219.87</td>
    <td style="white-space: nowrap; text-align: right">4.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.55 ms</td>
    <td style="white-space: nowrap; text-align: right">4.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">17.43</td>
    <td style="white-space: nowrap; text-align: right">57.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">57.37 ms</td>
    <td style="white-space: nowrap; text-align: right">57.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.46</td>
    <td style="white-space: nowrap; text-align: right">406.91 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">406.91 ms</td>
    <td style="white-space: nowrap; text-align: right">406.91 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.79</td>
    <td style="white-space: nowrap; text-align: right">1260.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1260.76 ms</td>
    <td style="white-space: nowrap; text-align: right">1260.76 ms</td>
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
    <td style="white-space: nowrap;text-align: right">219.87</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">17.43</td>
    <td style="white-space: nowrap; text-align: right">12.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.46</td>
    <td style="white-space: nowrap; text-align: right">89.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.79</td>
    <td style="white-space: nowrap; text-align: right">277.21x</td>
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
    <td style="white-space: nowrap">8.56 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">69.51 MB</td>
    <td>8.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">513.18 MB</td>
    <td>59.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">511.26 MB</td>
    <td>59.74x</td>
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
    <td style="white-space: nowrap; text-align: right">172.15</td>
    <td style="white-space: nowrap; text-align: right">5.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">5.81 ms</td>
    <td style="white-space: nowrap; text-align: right">5.81 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.32</td>
    <td style="white-space: nowrap; text-align: right">107.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">107.35 ms</td>
    <td style="white-space: nowrap; text-align: right">107.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67</td>
    <td style="white-space: nowrap; text-align: right">600.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">600.26 ms</td>
    <td style="white-space: nowrap; text-align: right">600.26 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.73</td>
    <td style="white-space: nowrap; text-align: right">1373.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1373.07 ms</td>
    <td style="white-space: nowrap; text-align: right">1373.07 ms</td>
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
    <td style="white-space: nowrap;text-align: right">172.15</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.32</td>
    <td style="white-space: nowrap; text-align: right">18.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67</td>
    <td style="white-space: nowrap; text-align: right">103.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.73</td>
    <td style="white-space: nowrap; text-align: right">236.37x</td>
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
    <td style="white-space: nowrap">12.21 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">79.40 MB</td>
    <td>6.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">599.57 MB</td>
    <td>49.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">590.19 MB</td>
    <td>48.35x</td>
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
    <td style="white-space: nowrap; text-align: right">15.76</td>
    <td style="white-space: nowrap; text-align: right">63.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">63.44 ms</td>
    <td style="white-space: nowrap; text-align: right">63.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">8.01</td>
    <td style="white-space: nowrap; text-align: right">124.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">124.87 ms</td>
    <td style="white-space: nowrap; text-align: right">124.87 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89</td>
    <td style="white-space: nowrap; text-align: right">527.73 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">527.73 ms</td>
    <td style="white-space: nowrap; text-align: right">527.73 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.62</td>
    <td style="white-space: nowrap; text-align: right">1621.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1621.53 ms</td>
    <td style="white-space: nowrap; text-align: right">1621.53 ms</td>
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
    <td style="white-space: nowrap;text-align: right">15.76</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">8.01</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89</td>
    <td style="white-space: nowrap; text-align: right">8.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.62</td>
    <td style="white-space: nowrap; text-align: right">25.56x</td>
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
    <td style="white-space: nowrap">3.81 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">90.60 MB</td>
    <td>23.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">685.96 MB</td>
    <td>180.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">669.86 MB</td>
    <td>175.86x</td>
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
    <td style="white-space: nowrap; text-align: right">21.93</td>
    <td style="white-space: nowrap; text-align: right">45.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">45.61 ms</td>
    <td style="white-space: nowrap; text-align: right">45.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.51</td>
    <td style="white-space: nowrap; text-align: right">105.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">105.12 ms</td>
    <td style="white-space: nowrap; text-align: right">105.12 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61</td>
    <td style="white-space: nowrap; text-align: right">620.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">620.03 ms</td>
    <td style="white-space: nowrap; text-align: right">620.03 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">1875.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1875.13 ms</td>
    <td style="white-space: nowrap; text-align: right">1875.13 ms</td>
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
    <td style="white-space: nowrap;text-align: right">21.93</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.51</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61</td>
    <td style="white-space: nowrap; text-align: right">13.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.53</td>
    <td style="white-space: nowrap; text-align: right">41.12x</td>
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
    <td style="white-space: nowrap">12.83 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">101.03 MB</td>
    <td>7.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">772.35 MB</td>
    <td>60.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">750.14 MB</td>
    <td>58.46x</td>
  </tr>

</table>


<hr/>

