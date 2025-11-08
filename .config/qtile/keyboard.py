import subprocess

def Keyboard():
    def run(cmd):
        subprocess.run(cmd, shell=True)

    cmd = ["sh", "-c", "xrandr --listactivemonitors"]
    monitor = subprocess.check_output(cmd).decode().strip().split()
    print(monitor)

    # change keyboard to hhkb layout on laptop
    if monitor[-1] == "eDP-1":
        run("setxkbmap -option ctrl:nocaps")
        run("xmodmap -e \"keycode 51 = BackSpace\"")
        run("xmodmap -e \"keycode 22 = backslash bar\"")
        return
    else:
        run("setxkbmap -option ctrl:nocaps")
        run("xmodmap -e \"keycode 22 = BackSpace\"")
        run("xmodmap -e \"keycode 51 = backslash bar\"")
        return

