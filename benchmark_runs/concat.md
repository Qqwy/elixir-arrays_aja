
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3639.96 K</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±714.84%</td>
    <td style="white-space: nowrap; text-align: right">0.103 μs</td>
    <td style="white-space: nowrap; text-align: right">2.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">321.15 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±181.08%</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
    <td style="white-space: nowrap; text-align: right">31.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">92.94 K</td>
    <td style="white-space: nowrap; text-align: right">10.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.51%</td>
    <td style="white-space: nowrap; text-align: right">7.46 μs</td>
    <td style="white-space: nowrap; text-align: right">37.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">65.10 K</td>
    <td style="white-space: nowrap; text-align: right">15.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.10%</td>
    <td style="white-space: nowrap; text-align: right">10.97 μs</td>
    <td style="white-space: nowrap; text-align: right">50.20 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3639.96 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">321.15 K</td>
    <td style="white-space: nowrap; text-align: right">11.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">92.94 K</td>
    <td style="white-space: nowrap; text-align: right">39.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">65.10 K</td>
    <td style="white-space: nowrap; text-align: right">55.91x</td>
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
    <td style="white-space: nowrap">3.70 KB</td>
    <td>7.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">10.21 KB</td>
    <td>21.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.09 KB</td>
    <td>21.53x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2035.52 K</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±530.78%</td>
    <td style="white-space: nowrap; text-align: right">0.187 μs</td>
    <td style="white-space: nowrap; text-align: right">16.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">171.83 K</td>
    <td style="white-space: nowrap; text-align: right">5.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±192.06%</td>
    <td style="white-space: nowrap; text-align: right">3.38 μs</td>
    <td style="white-space: nowrap; text-align: right">34.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">47.35 K</td>
    <td style="white-space: nowrap; text-align: right">21.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±46.26%</td>
    <td style="white-space: nowrap; text-align: right">17.88 μs</td>
    <td style="white-space: nowrap; text-align: right">57.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.25 K</td>
    <td style="white-space: nowrap; text-align: right">22.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.74%</td>
    <td style="white-space: nowrap; text-align: right">19.72 μs</td>
    <td style="white-space: nowrap; text-align: right">57.97 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2035.52 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">171.83 K</td>
    <td style="white-space: nowrap; text-align: right">11.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">47.35 K</td>
    <td style="white-space: nowrap; text-align: right">42.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">45.25 K</td>
    <td style="white-space: nowrap; text-align: right">44.98x</td>
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
    <td style="white-space: nowrap">0.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">7.29 KB</td>
    <td>12.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">23.49 KB</td>
    <td>40.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">18.52 KB</td>
    <td>32.03x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">973.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±375.35%</td>
    <td style="white-space: nowrap; text-align: right">0.36 μs</td>
    <td style="white-space: nowrap; text-align: right">25.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">120.80 K</td>
    <td style="white-space: nowrap; text-align: right">8.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.55%</td>
    <td style="white-space: nowrap; text-align: right">6.93 μs</td>
    <td style="white-space: nowrap; text-align: right">28.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">21.59 K</td>
    <td style="white-space: nowrap; text-align: right">46.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.08%</td>
    <td style="white-space: nowrap; text-align: right">43.19 μs</td>
    <td style="white-space: nowrap; text-align: right">101.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">20.63 K</td>
    <td style="white-space: nowrap; text-align: right">48.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.84%</td>
    <td style="white-space: nowrap; text-align: right">46.08 μs</td>
    <td style="white-space: nowrap; text-align: right">111.64 μs</td>
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
    <td style="white-space: nowrap;text-align: right">973.60 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">120.80 K</td>
    <td style="white-space: nowrap; text-align: right">8.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">21.59 K</td>
    <td style="white-space: nowrap; text-align: right">45.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">20.63 K</td>
    <td style="white-space: nowrap; text-align: right">47.19x</td>
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
    <td style="white-space: nowrap">0.41 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">13.73 KB</td>
    <td>33.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">53.13 KB</td>
    <td>130.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">41.41 KB</td>
    <td>101.94x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">608.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±186.39%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">10.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">63.29 K</td>
    <td style="white-space: nowrap; text-align: right">15.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.77%</td>
    <td style="white-space: nowrap; text-align: right">14.47 μs</td>
    <td style="white-space: nowrap; text-align: right">47.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">11.30 K</td>
    <td style="white-space: nowrap; text-align: right">88.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.89%</td>
    <td style="white-space: nowrap; text-align: right">82.13 μs</td>
    <td style="white-space: nowrap; text-align: right">206.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.50 K</td>
    <td style="white-space: nowrap; text-align: right">117.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.39%</td>
    <td style="white-space: nowrap; text-align: right">109.27 μs</td>
    <td style="white-space: nowrap; text-align: right">257.06 μs</td>
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
    <td style="white-space: nowrap;text-align: right">608.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">63.29 K</td>
    <td style="white-space: nowrap; text-align: right">9.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">11.30 K</td>
    <td style="white-space: nowrap; text-align: right">53.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.50 K</td>
    <td style="white-space: nowrap; text-align: right">71.63x</td>
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
    <td style="white-space: nowrap">4 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">27.76 KB</td>
    <td>6.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">106.27 KB</td>
    <td>26.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">94.52 KB</td>
    <td>23.63x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">263.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.66%</td>
    <td style="white-space: nowrap; text-align: right">1.59 μs</td>
    <td style="white-space: nowrap; text-align: right">24.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">31.00 K</td>
    <td style="white-space: nowrap; text-align: right">32.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.60%</td>
    <td style="white-space: nowrap; text-align: right">29.18 μs</td>
    <td style="white-space: nowrap; text-align: right">79.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.77 K</td>
    <td style="white-space: nowrap; text-align: right">173.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.43%</td>
    <td style="white-space: nowrap; text-align: right">158.17 μs</td>
    <td style="white-space: nowrap; text-align: right">357.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 K</td>
    <td style="white-space: nowrap; text-align: right">263.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.92%</td>
    <td style="white-space: nowrap; text-align: right">250.09 μs</td>
    <td style="white-space: nowrap; text-align: right">515.76 μs</td>
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
    <td style="white-space: nowrap;text-align: right">263.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">31.00 K</td>
    <td style="white-space: nowrap; text-align: right">8.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.77 K</td>
    <td style="white-space: nowrap; text-align: right">45.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.79 K</td>
    <td style="white-space: nowrap; text-align: right">69.59x</td>
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
    <td style="white-space: nowrap">3.84 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">54.56 KB</td>
    <td>14.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">214.63 KB</td>
    <td>55.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">206.27 KB</td>
    <td>53.66x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">121.14 K</td>
    <td style="white-space: nowrap; text-align: right">8.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±87.70%</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
    <td style="white-space: nowrap; text-align: right">33.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">14.66 K</td>
    <td style="white-space: nowrap; text-align: right">68.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.82%</td>
    <td style="white-space: nowrap; text-align: right">63.24 μs</td>
    <td style="white-space: nowrap; text-align: right">156.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53 K</td>
    <td style="white-space: nowrap; text-align: right">394.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.01%</td>
    <td style="white-space: nowrap; text-align: right">381.74 μs</td>
    <td style="white-space: nowrap; text-align: right">735.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 K</td>
    <td style="white-space: nowrap; text-align: right">515.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.73%</td>
    <td style="white-space: nowrap; text-align: right">498.46 μs</td>
    <td style="white-space: nowrap; text-align: right">893.40 μs</td>
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
    <td style="white-space: nowrap;text-align: right">121.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">14.66 K</td>
    <td style="white-space: nowrap; text-align: right">8.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53 K</td>
    <td style="white-space: nowrap; text-align: right">47.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 K</td>
    <td style="white-space: nowrap; text-align: right">62.44x</td>
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
    <td style="white-space: nowrap">0.34 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">102.66 KB</td>
    <td>298.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">520.64 KB</td>
    <td>1514.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">440.95 KB</td>
    <td>1282.75x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">53.57 K</td>
    <td style="white-space: nowrap; text-align: right">18.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±80.28%</td>
    <td style="white-space: nowrap; text-align: right">7.10 μs</td>
    <td style="white-space: nowrap; text-align: right">78.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">7.60 K</td>
    <td style="white-space: nowrap; text-align: right">131.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.50%</td>
    <td style="white-space: nowrap; text-align: right">122.86 μs</td>
    <td style="white-space: nowrap; text-align: right">275.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">793.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.57%</td>
    <td style="white-space: nowrap; text-align: right">762.66 μs</td>
    <td style="white-space: nowrap; text-align: right">1287.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.89 K</td>
    <td style="white-space: nowrap; text-align: right">1122.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.66%</td>
    <td style="white-space: nowrap; text-align: right">1073.81 μs</td>
    <td style="white-space: nowrap; text-align: right">1672.01 μs</td>
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
    <td style="white-space: nowrap;text-align: right">53.57 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">7.60 K</td>
    <td style="white-space: nowrap; text-align: right">7.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">42.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.89 K</td>
    <td style="white-space: nowrap; text-align: right">60.11x</td>
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
    <td style="white-space: nowrap">21.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">197.34 KB</td>
    <td>9.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1040.95 KB</td>
    <td>48.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">943.59 KB</td>
    <td>44.4x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">32.43 K</td>
    <td style="white-space: nowrap; text-align: right">0.0308 ms</td>
    <td style="white-space: nowrap; text-align: right">±89.55%</td>
    <td style="white-space: nowrap; text-align: right">0.0125 ms</td>
    <td style="white-space: nowrap; text-align: right">0.143 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.53 K</td>
    <td style="white-space: nowrap; text-align: right">0.28 ms</td>
    <td style="white-space: nowrap; text-align: right">±24.09%</td>
    <td style="white-space: nowrap; text-align: right">0.27 ms</td>
    <td style="white-space: nowrap; text-align: right">0.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.87%</td>
    <td style="white-space: nowrap; text-align: right">1.47 ms</td>
    <td style="white-space: nowrap; text-align: right">2.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.14%</td>
    <td style="white-space: nowrap; text-align: right">2.28 ms</td>
    <td style="white-space: nowrap; text-align: right">2.61 ms</td>
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
    <td style="white-space: nowrap;text-align: right">32.43 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">3.53 K</td>
    <td style="white-space: nowrap; text-align: right">9.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.66 K</td>
    <td style="white-space: nowrap; text-align: right">48.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">74.2x</td>
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
    <td style="white-space: nowrap">0.00993 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.38 MB</td>
    <td>38.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.03 MB</td>
    <td>204.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.00 MB</td>
    <td>200.92x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">16.15 K</td>
    <td style="white-space: nowrap; text-align: right">0.0619 ms</td>
    <td style="white-space: nowrap; text-align: right">±99.30%</td>
    <td style="white-space: nowrap; text-align: right">0.0285 ms</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.71 K</td>
    <td style="white-space: nowrap; text-align: right">0.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±18.73%</td>
    <td style="white-space: nowrap; text-align: right">0.55 ms</td>
    <td style="white-space: nowrap; text-align: right">0.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.04%</td>
    <td style="white-space: nowrap; text-align: right">3.52 ms</td>
    <td style="white-space: nowrap; text-align: right">4.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">4.92 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.69%</td>
    <td style="white-space: nowrap; text-align: right">4.82 ms</td>
    <td style="white-space: nowrap; text-align: right">6.20 ms</td>
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
    <td style="white-space: nowrap;text-align: right">16.15 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">1.71 K</td>
    <td style="white-space: nowrap; text-align: right">9.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">57.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">79.45x</td>
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
    <td style="white-space: nowrap">0.104 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">0.75 MB</td>
    <td>7.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">4.66 MB</td>
    <td>44.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.28 MB</td>
    <td>41.25x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5811.88</td>
    <td style="white-space: nowrap; text-align: right">0.172 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.90%</td>
    <td style="white-space: nowrap; text-align: right">0.0763 ms</td>
    <td style="white-space: nowrap; text-align: right">0.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">863.95</td>
    <td style="white-space: nowrap; text-align: right">1.16 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.76%</td>
    <td style="white-space: nowrap; text-align: right">1.13 ms</td>
    <td style="white-space: nowrap; text-align: right">1.41 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">139.47</td>
    <td style="white-space: nowrap; text-align: right">7.17 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.45%</td>
    <td style="white-space: nowrap; text-align: right">7.21 ms</td>
    <td style="white-space: nowrap; text-align: right">7.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">99.06</td>
    <td style="white-space: nowrap; text-align: right">10.09 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.13%</td>
    <td style="white-space: nowrap; text-align: right">10.13 ms</td>
    <td style="white-space: nowrap; text-align: right">10.57 ms</td>
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
    <td style="white-space: nowrap;text-align: right">5811.88</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">863.95</td>
    <td style="white-space: nowrap; text-align: right">6.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">139.47</td>
    <td style="white-space: nowrap; text-align: right">41.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">99.06</td>
    <td style="white-space: nowrap; text-align: right">58.67x</td>
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
    <td style="white-space: nowrap">0.0727 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">1.48 MB</td>
    <td>20.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">9.64 MB</td>
    <td>132.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">9.06 MB</td>
    <td>124.62x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">6124.11</td>
    <td style="white-space: nowrap; text-align: right">0.163 ms</td>
    <td style="white-space: nowrap; text-align: right">±71.01%</td>
    <td style="white-space: nowrap; text-align: right">0.136 ms</td>
    <td style="white-space: nowrap; text-align: right">0.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">365.03</td>
    <td style="white-space: nowrap; text-align: right">2.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±25.40%</td>
    <td style="white-space: nowrap; text-align: right">2.58 ms</td>
    <td style="white-space: nowrap; text-align: right">4.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">63.00</td>
    <td style="white-space: nowrap; text-align: right">15.87 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.42%</td>
    <td style="white-space: nowrap; text-align: right">15.92 ms</td>
    <td style="white-space: nowrap; text-align: right">16.07 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">37.98</td>
    <td style="white-space: nowrap; text-align: right">26.33 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.21%</td>
    <td style="white-space: nowrap; text-align: right">25.61 ms</td>
    <td style="white-space: nowrap; text-align: right">29.94 ms</td>
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
    <td style="white-space: nowrap;text-align: right">6124.11</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">365.03</td>
    <td style="white-space: nowrap; text-align: right">16.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">63.00</td>
    <td style="white-space: nowrap; text-align: right">97.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">37.98</td>
    <td style="white-space: nowrap; text-align: right">161.23x</td>
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
    <td style="white-space: nowrap">0.50 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">2.95 MB</td>
    <td>5.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">19.30 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">19.13 MB</td>
    <td>38.27x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1188.87</td>
    <td style="white-space: nowrap; text-align: right">0.84 ms</td>
    <td style="white-space: nowrap; text-align: right">±77.11%</td>
    <td style="white-space: nowrap; text-align: right">0.56 ms</td>
    <td style="white-space: nowrap; text-align: right">2.06 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">191.07</td>
    <td style="white-space: nowrap; text-align: right">5.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.10%</td>
    <td style="white-space: nowrap; text-align: right">5.07 ms</td>
    <td style="white-space: nowrap; text-align: right">6.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.32</td>
    <td style="white-space: nowrap; text-align: right">32.98 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.72%</td>
    <td style="white-space: nowrap; text-align: right">32.96 ms</td>
    <td style="white-space: nowrap; text-align: right">34.03 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">11.53</td>
    <td style="white-space: nowrap; text-align: right">86.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.91%</td>
    <td style="white-space: nowrap; text-align: right">83.31 ms</td>
    <td style="white-space: nowrap; text-align: right">93.68 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1188.87</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">191.07</td>
    <td style="white-space: nowrap; text-align: right">6.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.32</td>
    <td style="white-space: nowrap; text-align: right">39.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">11.53</td>
    <td style="white-space: nowrap; text-align: right">103.15x</td>
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
    <td style="white-space: nowrap">0.43 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">6.51 MB</td>
    <td>15.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">41.45 MB</td>
    <td>97.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">40.79 MB</td>
    <td>95.47x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1626.67</td>
    <td style="white-space: nowrap; text-align: right">0.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.30%</td>
    <td style="white-space: nowrap; text-align: right">0.63 ms</td>
    <td style="white-space: nowrap; text-align: right">0.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">80.57</td>
    <td style="white-space: nowrap; text-align: right">12.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.13%</td>
    <td style="white-space: nowrap; text-align: right">12.29 ms</td>
    <td style="white-space: nowrap; text-align: right">13.23 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.06</td>
    <td style="white-space: nowrap; text-align: right">71.13 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.51%</td>
    <td style="white-space: nowrap; text-align: right">71.13 ms</td>
    <td style="white-space: nowrap; text-align: right">71.39 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.10</td>
    <td style="white-space: nowrap; text-align: right">164.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">164.03 ms</td>
    <td style="white-space: nowrap; text-align: right">164.03 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1626.67</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">80.57</td>
    <td style="white-space: nowrap; text-align: right">20.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.06</td>
    <td style="white-space: nowrap; text-align: right">115.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.10</td>
    <td style="white-space: nowrap; text-align: right">266.82x</td>
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
    <td style="white-space: nowrap">2 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">12.27 MB</td>
    <td>6.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">89.23 MB</td>
    <td>44.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">86.03 MB</td>
    <td>43.02x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">386.83</td>
    <td style="white-space: nowrap; text-align: right">2.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2.59 ms</td>
    <td style="white-space: nowrap; text-align: right">2.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">34.79</td>
    <td style="white-space: nowrap; text-align: right">28.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">28.75 ms</td>
    <td style="white-space: nowrap; text-align: right">28.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.11</td>
    <td style="white-space: nowrap; text-align: right">140.59 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">140.59 ms</td>
    <td style="white-space: nowrap; text-align: right">140.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41</td>
    <td style="white-space: nowrap; text-align: right">414.49 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">414.49 ms</td>
    <td style="white-space: nowrap; text-align: right">414.49 ms</td>
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
    <td style="white-space: nowrap;text-align: right">386.83</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">34.79</td>
    <td style="white-space: nowrap; text-align: right">11.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.11</td>
    <td style="white-space: nowrap; text-align: right">54.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41</td>
    <td style="white-space: nowrap; text-align: right">160.34x</td>
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
    <td style="white-space: nowrap">1.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">25.25 MB</td>
    <td>21.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">178.46 MB</td>
    <td>154.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">179.20 MB</td>
    <td>155.61x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">86.95</td>
    <td style="white-space: nowrap; text-align: right">11.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">11.50 ms</td>
    <td style="white-space: nowrap; text-align: right">11.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.98</td>
    <td style="white-space: nowrap; text-align: right">50.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">50.04 ms</td>
    <td style="white-space: nowrap; text-align: right">50.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">278.69 ms</td>
    <td style="white-space: nowrap; text-align: right">278.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.12</td>
    <td style="white-space: nowrap; text-align: right">892.44 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">892.44 ms</td>
    <td style="white-space: nowrap; text-align: right">892.44 ms</td>
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
    <td style="white-space: nowrap;text-align: right">86.95</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">19.98</td>
    <td style="white-space: nowrap; text-align: right">4.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">24.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.12</td>
    <td style="white-space: nowrap; text-align: right">77.6x</td>
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
    <td style="white-space: nowrap">2.98 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">50.26 MB</td>
    <td>16.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">361.37 MB</td>
    <td>121.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">374.79 MB</td>
    <td>125.9x</td>
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
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">201.50</td>
    <td style="white-space: nowrap; text-align: right">4.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.96 ms</td>
    <td style="white-space: nowrap; text-align: right">4.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.77</td>
    <td style="white-space: nowrap; text-align: right">102.37 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">102.37 ms</td>
    <td style="white-space: nowrap; text-align: right">102.37 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.59</td>
    <td style="white-space: nowrap; text-align: right">629.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">629.22 ms</td>
    <td style="white-space: nowrap; text-align: right">629.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">2111.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2111.50 ms</td>
    <td style="white-space: nowrap; text-align: right">2111.50 ms</td>
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
    <td style="white-space: nowrap;text-align: right">201.50</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap; text-align: right">9.77</td>
    <td style="white-space: nowrap; text-align: right">20.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.59</td>
    <td style="white-space: nowrap; text-align: right">126.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">425.48x</td>
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
    <td style="white-space: nowrap">0.79 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (A.Vector)</td>
    <td style="white-space: nowrap">104.69 MB</td>
    <td>132.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">809.86 MB</td>
    <td>1021.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">789.24 MB</td>
    <td>995.89x</td>
  </tr>

</table>


<hr/>

