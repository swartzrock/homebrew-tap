class Pace < Formula
  desc "A visual timer for the command line"
  homepage "https://github.com/swartzrock/pace"
  url ""
  sha256 ""
  license "ISC"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/swartzrock/pace/releases/download/0.1.0/pace-macos-arm64.tar.bz2"
      sha256 "f6b042d456e776620685124b15bf0bb34daf59d21179421cccf76e8a8f769680"

      def install
        bin.install "pace-macos-arm64" => "pace"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/swartzrock/pace/releases/download/0.1.0/pace-macos-x64.tar.bz2"
      sha256 "1dcb2b67ba69c69f7f8733da2721e2c9632d33160567a3bdd8743a65cad7c94c"

      def install
        bin.install "pace-macos-x64" => "pace"
      end
    end
  end

end
