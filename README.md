# astrodocker
Dockerising the hard-to-install astronmy packages

# MacOS

1. Install XQuartz: https://www.xquartz.org/
2. Launch XQuartz. Under the XQuartz menu, select Preferences
3. Go to the security tab and ensure "Allow connections from network clients" is checked.
4. Restart your computer
5. run in the terminal on your mac0S host: 
 
    ```xhost +```

6. Grab latest docker image

    ```docker pull ghcr.io/astrophpeter/astrodocker:latest```

7. Enter container

    ```docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v <any volume you want>:/home -e DISPLAY=host.docker.internal:0 ghcr.io/astrophpeter/astrodocker:latest bash```

8. Run pyraf

    ```pyraf```