# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.1/llm-now-v2.5.1-macos-arm64.zip"
      sha256 "3900f120875adfe2d8657131148bc527d57247078b6d30b74c0cec481fc84691"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.1/llm-now-v2.5.1-macos-x64.zip"
      sha256 "c2e847e17b2453508a06e11dbfabd37d5ab1d8a8fa3ba4d139de56cc26152de8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.1/llm-now-v2.5.1-linux-arm64.zip"
      sha256 "4c8325323ac6ceb410420ddb08e4aa08fb1c029dc3f09ec12a003399b83cd68a"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.5.1/llm-now-v2.5.1-linux-x64.zip"
      sha256 "4e243f8dff152564977bded16f77123d57ab36fc485d1c9942d23279de1e5278"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
