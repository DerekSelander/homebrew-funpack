# typed: false
# frozen_string_literal: true

class Dwatch < Formula
  desc "Lightweight API monitoring on remote process"

  depends_on :macos

  on_macos do
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.15.tar.gz"

      def install
        bin.install "dwatch"
      end
  end


  test do
    system "#{bin}/dwatch"
  end
end
