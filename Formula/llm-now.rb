# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.1/llm-now-v2.4.1-macos-arm64.zip"
      sha256 "8e05a0268133de5723add17b33121dd5bbb8c857643d3e2636d1bedf482e4474"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.1/llm-now-v2.4.1-macos-x64.zip"
      sha256 "002de86882db7d81a238560eeb74d83e13e5948a185aa573f7f0acf500b02828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.1/llm-now-v2.4.1-linux-arm64.zip"
      sha256 "89c650e68537ffcac3a7781a9dc8fc73e7739a5ca057ebd2ff0673c32d921a7b"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.4.1/llm-now-v2.4.1-linux-x64.zip"
      sha256 "ecfa8338f47b8f00c1361e982df8e87ab24c2701cd6166636612e46ab5085724"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
