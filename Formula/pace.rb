class Pace < Formula
  desc "A visual timer for the command line"
  homepage "https://github.com/swartzrock/pace"
  url ""
  sha256 ""
  license "ISC"

  on_macos do
    url "https://github.com/swartzrock/pace/releases/download/0.1.6/pace-macos-x64.tar.bz2"
    sha256 "5703298e3e87967b99c0500c35d436f3c055e47620514122ef4dfc3385fe15f6"

    def install
      bin.install "pace-macos-x64" => "pace"
    end
  end
  on_linux do 
    on_arm do
      url "https://github.com/swartzrock/pace/releases/download/0.1.6/pace-linux-arm64.tar.bz2"
      sha256 "f89fafdfe5580f1e1129dd90be467dfb4b61422d3069c0b227388b8fbcda4d33"

      def install
        bin.install "pace-linux-arm64" => "pace"
      end
    end
    if on_intel?
      url "https://github.com/swartzrock/pace/releases/download/0.1.6/pace-linux-x64.tar.bz2"
      sha256 "44cf24bc988bb1ec6331785d1adc1bdc766e4f495752c8e65cf3857c95d55eee"

      def install
        bin.install "pace-linux-x64" => "pace"
      end
    end
  end

end
