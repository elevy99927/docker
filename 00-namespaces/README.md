# 1. Create new network ns
```
ip netns add red
ip netns add blue
```

## View your network namespaces
```
ip netns list

or 

ip netns
```

## View your host's links:
```
ip link
```

## view the links in the namespaces:
```
ip netns exec red ip link 
ip netns exec blue ip link 
```
## view the arp table on your host
```
arp -an
```

## view the arp table on you namespaces:
```
ip netns exec red arp -an
ip netns exec blue arp -an
```

# 2. Connect the namespaces
connent the two namespaces using a virtual interfaces.

## create virtual interfaces:
```
ip link add veth-red type veth peer name veth-blue
```
## View your new links:
```
ip link |grep veth
```

## connect the virtual interfaces to the namspaces:
```
ip link set veth-red netns red
ip link set veth-blue netns blue
```
## View your new links on your namespaces:
```
ip netns exec red ip link
ip netns exec blue ip link
```

# 3. Set Ip address to the virtual interfaces
```
ip -n red addr add 192.168.100.1/24 dev veth-red
ip -n blue addr add 192.168.100.2/24 dev veth-blue
```
## set the virtual insetfaces up:
```
ip -n red link set veth-red up
ip -n blue link set veth-blue up
```

## ping between the two namespaces:
```
ip netns exec red ping 192.168.100.2
```

## The two namespaces are now connected
