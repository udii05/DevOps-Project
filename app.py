import http.server
import socketserver
import os

PORT = 8080

web_dir = '/html'
os.chdir(web_dir)

Handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("0.0.0.0", PORT), Handler) as httpd:
    print("Serving at port", PORT)
    httpd.serve_forever()
