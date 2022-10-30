#Handeling a secret file

###1. build first image
```
docker build -t myapp -f ./Dockerfile-01 .
```

###2. login into the container
```
docker run -it myapp sh
```

###3. open the secret file
```
cat ASecretFile.txt 
```


After building our image, we would like to create a new image, without the `ASecretFile.txt`.
we will remove the `ASecretFile.txt`
Exmaple is in `Dockerfile-02`

###1. build new image, and remove `ASecretFile.txt`
```
docker build -t myapp -f ./Dockerfile-02 .
```

###2. login into the container
```
docker run -it myapp sh
```

###3. look for the secret file.
```
ls -la ASecretFile.txt
```

Is the secret file really gone?
The secret file is gone from the last layer, but acualy it reamins in the previous layer, and can be extracted
