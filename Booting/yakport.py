import os
import socket
import sys
import threading
import queue
import time
os.system("cls"),
os.system("mode con lines=22 cols=38"),
os.system("rem Edited by RavelCros_Cro"),
os.system("title Edited by RavelCros_Cro"),
os.system("rem Made by @Wedertgh"),

common_ports = {
    "21": "FTP",
    "22": "SSH",
    "23": "Telnet",
    "25": "SMTP",
    "53": "DNS",
    "80": "HTTP",
    "194": "IRC",
    "443": "HTTPS",
    "3306": "MySQL",
    "25565": "Minecraft"
}

def get_scan_args():
    if len(sys.argv) == 2:
        return (sys.argv[1], 0, 1024)
    elif len(sys.argv) == 3:
        return (sys.argv[1], 0, int(sys.argv[2]))
    elif len(sys.argv) == 4:
        return (sys.argv[1], int(sys.argv[2]), int(sys.argv[3]))

def is_port_open(host, port): #Return boolean
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(0.5)
        sock.connect((host, port))
    except socket.error:
        return False
    return True
print(" [40;36mWelcome to Yakuza Port Scanner")
print("")
def scanner_worker_thread(host):
    while True:
        port = port_queue.get()
        if is_port_open(host, port):
            if str(port) in common_ports:
                print(" [40;32m{} [40;31m({}) [40;33mis OPEN PORT!                  ".format(str(port), common_ports[str(port)]))
            else:
                print(" [40;32m{} [40;33mis OPEN PORT!                      ".format(port))
        port_queue.task_done()



scan_args = get_scan_args()
port_queue = queue.Queue()
for _ in range(20):
    t = threading.Thread(target=scanner_worker_thread, kwargs={"host": scan_args[0]})
    t.daemon = True
    t.start()

start_time = time.time()
for port in range(scan_args[1], scan_args[2]):
    port_queue.put(port)

port_queue.join()
end_time = time.time()
print("Scanning Time {:.3f} seconds.".format(end_time - start_time))
os.system("pause >nul"),
print("exit"),
