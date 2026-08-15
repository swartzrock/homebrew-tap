# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.7.0/llm-now-v2.7.0-macos-arm64.zip"
      sha256 "7815b4eefaf1a10fb9be6fc9fc08c9dc55b5b3c77efa16733f43e2c44687288a"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.7.0/llm-now-v2.7.0-macos-x64.zip"
      sha256 "ad2eeaae58248d3fd36cd6f49e59795fd3b696416f1ebae7ab1b851e14a3d0c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.7.0/llm-now-v2.7.0-linux-arm64.zip"
      sha256 "06f2c170cea8e058e8d8ecc98c95a576370e8bb39272a3300a4c73e8e5f77837"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.7.0/llm-now-v2.7.0-linux-x64.zip"
      sha256 "8928c4e6cf4832bc8d03c8935d72e388e88ae13c255b963d03609b0b860cdb4e"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
