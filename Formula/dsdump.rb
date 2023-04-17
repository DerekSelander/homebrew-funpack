# typed: false
# frozen_string_literal: true

class Dsdump < Formula
  desc "An improved nm, objc class dumping tool"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.21.tar.gz"

      def install
        bin.install "dsdump"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.21.tar.gz"
      def install
        bin.install "dsdump"
      end
    end
  end

#  conflicts_with "ipsw-frida"

  test do
    system "arch -arm64 #{bin}/dsdump --version"
    echo "In order to introspect Apple software, you'll need to disable SIP, reboot, then execute the following:"
    echo "\> sudo nvram boot-args=-arm64e_preview_abi && rebot"
    echo "This will allow you to execute third party arm64e executables, critical for inspecting other arm64e executables"
  end
end
