# typed: false
# frozen_string_literal: true

class Excinject < Formula
  desc "Inject a dylib into a remote process"

  depends_on :macos

  on_macos do
      url "https://github.com/DerekSelander/homebrew-funpack/archive/refs/tags/0.0.9.tar.gz"

      def install
        bin.install "excinject"
      end
  end


  test do
    system "#{bin}/excinject"
  end
end
