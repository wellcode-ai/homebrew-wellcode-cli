class WellcodeCli < Formula
    include Language::Python::Virtualenv

    desc "Engineering Team Metrics Script"
    homepage "https://github.com/wellcode-ai/wellcode-cli"
    url "https://github.com/wellcode-ai/wellcode-cli/archive/v0.1.0.tar.gz"
    sha256 "f741e5ec45d0f689f5e85aae09d0adee3715d686464daefa6b02b6ddb5ced3f4"
    license "MIT"

    depends_on "python@3.9"

    def install
      virtualenv_install_with_resources
    end

    test do
      assert_match "Wellcode CLI version 0.1.0", shell_output("#{bin}/wellcode-cli --version")
    end
  end