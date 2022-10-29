# 1. Create new network ns
```
ip netns add red
ip netns add blue
```

## View your network namespaces
```
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
ip netns exec red arp -an
```

