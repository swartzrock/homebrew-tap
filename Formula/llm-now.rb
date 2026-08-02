# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.1.0/llm-now-v2.1.0-macos-arm64.zip"
      sha256 "1d5b7548ff7e50505bcfb3a5ba72f1590d1b80099ccfa3d210684356a940dc37"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.1.0/llm-now-v2.1.0-macos-x64.zip"
      sha256 "b1ce059163b78122e60930709ab41448bfeb9f1502454674ebfb9d0eae7c92bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.1.0/llm-now-v2.1.0-linux-arm64.zip"
      sha256 "880bf36a47831557ddb07b2f80d4e25ab8b5ff6a03cdabb5d9964b42b95a3dd3"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.1.0/llm-now-v2.1.0-linux-x64.zip"
      sha256 "da58653c0ba19d97b24f4ea4f31f123d33440ec49569b2f359cb98a2574a8e70"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
