class WellcodeCli < Formula
    include Language::Python::Virtualenv

    desc "Engineering Team Metrics Script"
    homepage "https://github.com/wellcode-ai/wellcode-cli"
    url "https://github.com/wellcode-ai/wellcode-cli/archive/v0.1.4.tar.gz"
    sha256 "ad032c08a17be6a436ef3dc21bc8b4041c4a0cbe703085e1a119f65f92a54467"
    license "MIT"

    depends_on "python@3.11"


    
    resource "PyGithub" do
      url "https://files.pythonhosted.org/packages/98/36/386d282903c572b18abc36de68aaf4146db4659c82dceee009ef88a86b67/PyGithub-1.55.tar.gz"
      sha256 "1bbfff9372047ff3f21d5cd8e07720f3dbfdaf6462fcaed9d815f528f1ba7283"
    end
    
    resource "slackclient" do
      url "https://files.pythonhosted.org/packages/ca/c4/f147d5602b060f76555688bc0d88d30c814b827602874c589674db46daeb/slackclient-2.9.4.tar.gz"
      sha256 "ab79fefb5412d0595bc01d2f195a787597f2a617b6766562932ab9ffbe5cb173"
    end
    
    resource "python-dotenv" do
      url "https://files.pythonhosted.org/packages/31/06/1ef763af20d0572c032fa22882cfbfb005fba6e7300715a37840858c919e/python-dotenv-1.0.0.tar.gz"
      sha256 "a8df96034aae6d2d50a4ebe8216326c61c3eb64836776504fcca410e5937a3ba"
    end  
    
    resource "anthropic" do
      url "https://files.pythonhosted.org/packages/98/7a/4a9d0ceff414a53ee505243e2a8a682b6812fb1faa265efe1417fab8b040/anthropic-0.3.6.tar.gz"
      sha256 "6e644c84ad9375dc12e07b36aab1862ca4db98eb1750e08acfe4847e62afe0dd"
    end
    
    resource "slack-sdk" do
      url "https://files.pythonhosted.org/packages/67/db/a684491e6d791aa4052ccc49d11dc492d37cb2c9261e53fa87871553960a/slack_sdk-3.21.3.tar.gz"
      sha256 "20829bdc1a423ec93dac903470975ebf3bc76fd3fd91a4dadc0eeffc940ecb0c"
    end
    
    resource "splitio-client" do
      url "https://files.pythonhosted.org/packages/3d/ee/7f08df091d0a09e94f7938ed97d46b5436232882ea0260a082b8d4fe0427/splitio_client-9.2.0.tar.gz"
      sha256 "a98f379289a1a614c6a84a7eb45375c0d043b67196c5341a75502c360e191836"
    end
    
    resource "setuptools" do
      url "https://files.pythonhosted.org/packages/26/f4/ca5cb6df512f453ad50f78900bf7ec6a5491ee44bb49d0f6f76802dbdd43/setuptools-65.5.1.tar.gz"
      sha256 "e197a19aa8ec9722928f2206f8de752def0e4c9fc6953527360d1c36d94ddb2f"
    end

    def install
      virtualenv_install_with_resources
    end

    test do
      assert_match "wellcode-cli 0.1.4", shell_output("#{bin}/wellcode-cli --version")
    end
  end
