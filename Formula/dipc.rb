# typed: false
# frozen_string_literal: true

class Dipc < Formula
  desc "Interposes Apple IPC messages"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.3.tar.gz"

      def install
        bin.install "dipc"
#        bash_completion.install "completions/_bash" => "dipc"
#        zsh_completion.install "completions/_zsh" => "_dipc"
#        fish_completion.install "completions/_fish" => "ipsw.fish"
#        man1.install Dir["manpages/*"]
      end
    end
#    if Hardware::CPU.intel?
#      url "https://github.com/blacktop/ipsw/releases/download/v3.1.303/ipsw_3.1.303_macOS_x86_64_extras.tar.gz"
#      sha256 "c88774b959ad24eea6d28cc124893a73dede6664e14faf1661e5a32e9e08c71d"
#
#      def install
#        bin.install "ipsw"
#        bash_completion.install "completions/_bash" => "ipsw"
#        zsh_completion.install "completions/_zsh" => "_ipsw"
#        fish_completion.install "completions/_fish" => "ipsw.fish"
#        man1.install Dir["manpages/*"]
#      end
#    end
  end

#  conflicts_with "ipsw-frida"

  test do
    system "arch -arm64 #{bin}/dipc --version"
    echo "In order to introspect Apple software, you'll need to disable SIP, reboot, then execute the following:"
    echo "\> sudo nvram boot-args=-arm64e_preview_abi && rebot"
    echo "This will allow you to execute third party arm64e executables, critical for inspecting other arm64e executables"
  end
end
