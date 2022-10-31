class Pace < Formula
  desc "A visual timer for the command line"
  homepage "https://github.com/swartzrock/pace"
  url "https://github.com/swartzrock/pace/releases/download/0.1.0/pace-macos-x64.tar.bz2"
  sha256 ""
  license "ISC"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/swartzrock/pace/releases/download/0.1.0/pace-macos-x64.tar.bz2"
      sha256 "213c0ac5185fad713c5c2e2a636aa06bf2062a1aa30819c7368b9e83bf23a775"

      def install
        bin.install "pace-macos-x64" => "pace"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/swartzrock/pace/releases/download/0.1.0/pace-macos-arm64.tar.bz2"
      sha256 "da0d240a02f373e8b41e114abbbd9e040642cfa15ff2d38790ee06ade9f0b47f"

      def install
        bin.install "pace-macos-arm64" => "pace"
      end
    end
  end

end
