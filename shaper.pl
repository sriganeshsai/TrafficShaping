#!/usr/bin/perl -w

    for (my $i=1; $i <= 9; $i++)
{
       sleep 6;

        for ($i = 1) {
print(" clearing the eth1 network shaping settings \n");
my @clear= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 1 Mb/s Bandwidth  \n");
my @cmd= `sudo tc qdisc add dev eth1 root tbf rate 1mbit burst 1600 limit 3000`;
        }

sleep 240;

for ($i = 2) {
print(" clearing the eth1 network shaping settings \n");
my @clear1= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 3 Mb/s Bandwidth \n");
my @cmd1 = `sudo tc qdisc add dev eth1 root tbf rate 3mbit burst 1600 limit 3000`;
}

sleep 240;

for ($i = 3) {
print(" clearing the network eth1 shaper settings \n");
my @clear2= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 200 ± 50 ms delay \n");
my @cmd2 =`sudo tc qdisc add dev eth1 root netem delay 200ms 50ms`;
}

sleep 240;

for ($i = 4) {
print(" clearing the eth1 network shaping settings \n");

my @clear3= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 400 ± 100 ms delay \n");
my @cmd3 =`sudo tc qdisc add dev eth1 root netem delay 400ms 100ms`;
}

sleep 240;

for ($i = 5) {
print(" clearing the eth1 network shaping settings \n");
my @clear4= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 5% loss \n");
my @cmd4 = ` sudo tc qdisc add dev eth1 root netem loss 5% `;
}

sleep 240;

for ($i = 6) {
print(" clearing the eth1 network shaping settings \n");
my @clear3= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 400 ± 100 ms delay \n");
my @cmd3 =`sudo tc qdisc add dev eth1 root netem delay 400ms 100ms`;
}

sleep 240;

for ($i = 5) {
print(" clearing the eth1 network shaping settings \n");
my @clear4= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 5% loss \n");
my @cmd4 = ` sudo tc qdisc add dev eth1 root netem loss 5% `;
}

sleep 240;

for ($i = 6) {
print(" clearing the eth1 network shaping settings \n");

my @clear5= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 10% loss \n");
my @cmd5 = ` sudo tc qdisc add dev eth1 root netem loss 10% `;
}

sleep 240;

for ($i = 7) {
print(" clearing the eth1 network shaping settings \n");
my @clear6= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 1Mb,400 ± 100 ms \n");
my @cmd6 = ` sudo tc qdisc add dev eth1 root netem delay 400ms 100ms rate 1mbit 1600 limit 3000`;
}

sleep 240;

for ($i = 8) {
print(" clearing the eth1 network shaping settings \n");

my @clear7= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("network condition set to: 3Mb,200 ± 50 ms \n");
my @cmd7 = ` sudo tc qdisc add dev eth1 root netem delay 200ms 50ms rate 3mbit 1600 limit 3000`;
}

sleep 240;

for ($i =9)  {
print(" clearing the eth1 network shaping settings \n");
my @clear8= `sudo tc qdisc del dev eth1 root`;
sleep 3;
print("There is no shaping on network\n");
}
}
