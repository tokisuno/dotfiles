-- NOTE: This is only for my personal use on Fedora 42
-- If you want to adapt this to your own distro, I've made it easy
-- by making the package manager a variable you can change
PkgManager = " dnf install -y "
local packages = {
	"awesome",
	"emacs",
	"zsh",
	"neovim",
	"tmux",
	"git",
	"lazygit",
	"fastfetch",
	"flameshot",
	"flatpak",
}

for _, app in pairs(packages) do
	print("Now attempting to install: " .. app)
	os.execute("sudo" .. PkgManager .. app)
end

print("This is just in case flatpak doesn't auto-add its own repo")
os.execute("flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo")

-- This is Fedora specific
print("Controversially installing Google Chrome...")
os.execute("sudo" .. PkgManager .. "fedora-workstation-repositories")
os.execute("sudo dnf config-manager setopt google-chrome.enabled=1")
os.execute("sudo" .. PkgManager .. "google-chrome-stable")

print("Installing Ghostty through Copr...")
os.execute("sudo dnf copr enable scottames/ghostty")
os.execute("sudo" .. PkgManager .. "ghostty")
