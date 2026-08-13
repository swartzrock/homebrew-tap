# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.0/llm-now-v2.5.0-macos-arm64.zip"
      sha256 "5e518079dbb730b275a9192a3769d3012b298e9ecb8f35438f17c0f4fc41294e"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.0/llm-now-v2.5.0-macos-x64.zip"
      sha256 "99f461468ed41597d19ae6bafa5b4b677182472bb1a9c3ea969141f2c44be07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.0/llm-now-v2.5.0-linux-arm64.zip"
      sha256 "11c0e5c6585bb382a3fe6dadc256988221d98745f63793065ab3179b46d65b06"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.0/llm-now-v2.5.0-linux-x64.zip"
      sha256 "01f797b0c9d0349a1ec77e6a64fe512a0b04f47ee500c4d866239d88e0cf2073"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
