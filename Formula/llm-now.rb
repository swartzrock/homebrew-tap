# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.6.0/llm-now-v2.6.0-macos-arm64.zip"
      sha256 "8c45c51924d55f282cc36087674100abeb7cd9153c8898633e47a7a0c608a10e"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.6.0/llm-now-v2.6.0-macos-x64.zip"
      sha256 "6954f2c1595d36f2ec64ae645baaac19f5619c054e8bd77d352f686c4fb58e57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.6.0/llm-now-v2.6.0-linux-arm64.zip"
      sha256 "b720ab73595d7af8ebabf6223e7acf636e9dc5ea835f195abcb1504b081e0a13"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.6.0/llm-now-v2.6.0-linux-x64.zip"
      sha256 "0bdc1283fe870602e5a83279ceacc787a13aa6aeb1d8095eb4ed734271903a6c"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
