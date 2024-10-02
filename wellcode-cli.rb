class WellcodeCli < Formula
    include Language::Python::Virtualenv

    desc "Engineering Team Metrics Script"
    homepage "https://github.com/wellcode-ai/wellcode-cli"
    url "https://github.com/wellcode-ai/wellcode-cli/archive/v0.1.1.tar.gz"
    sha256 "f8a6a3026496bfa27fa8f050a7539e77485b2ef23bb876d6508b34ad415d536d"
    license "MIT"

    depends_on "python@3.9"

    def install
      virtualenv_install_with_resources
    end

    test do
      assert_match "Wellcode CLI version 0.1.1", shell_output("#{bin}/wellcode-cli --version")
    end
  end
