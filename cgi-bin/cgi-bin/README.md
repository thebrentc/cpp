# C++ cgi-bin proof-of-concept

Compile .cpp to .cgi
`cd cgi-bin; g++ -o index.cgi index.cpp`  

Run in local web server:  
`python3 -m http.server --bind localhost --cgi 8000`  

See: https://stackoverflow.com/questions/30516414/how-to-run-cgi-hello-world-with-python-http-server  
