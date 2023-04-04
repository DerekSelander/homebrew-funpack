# typed: false
# frozen_string_literal: true

class Mscan < Formula
  desc "An LLDB plugin that aids in finding stuff in memory"

  depends_on :macos

  on_macos do
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.3.tar.gz"

      def install
        bin.install "mscan"
      end
  end


  test do
    system "arch -arm64 #{bin}/mscan"
  end
end
