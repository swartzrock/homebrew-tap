# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.0/llm-now-v2.4.0-macos-arm64.zip"
      sha256 "015edfcb0e181df25db9f4010421ae5d1783af6028eba892b74570bc723358b3"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.0/llm-now-v2.4.0-macos-x64.zip"
      sha256 "ea80fcc58da7160e7078aef813bb44f62bc09142019e0bc2eab581149abf26da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.0/llm-now-v2.4.0-linux-arm64.zip"
      sha256 "f0e769b30e0b31b8984796d5e180e41814da98565a0387cf592dec01bd48e7dc"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.0/llm-now-v2.4.0-linux-x64.zip"
      sha256 "cd6fec01a110e3fe0b67e0e562beaa8ea39b68113aba8710bcd9a67fe0019c1e"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
