class I2cssh < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "http://github.com/wouterdebie/i2cssh"
  url "https://files.pythonhosted.org/packages/14/56/e5334abe2b45fdfc98ed9fce74a4a86067d9655f19ddbf42138e37f4b2f7/i2cssh-0.1.10.tar.gz"
  sha256 "63cd0f90dadd377e96664decfacd5411d66a8f0a7289f7179c77405f56dcde2e"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  resource "click-option-group" do
    url "https://files.pythonhosted.org/packages/e7/b8/91054601a2e05fd9060cb1baf56be5b24145817b059e078669e1099529c7/click-option-group-0.5.6.tar.gz"
    sha256 "97d06703873518cc5038509443742b25069a3c7562d1ea72ff08bfadde1ce777"
  end

  resource "iterm2" do
    url "https://files.pythonhosted.org/packages/f5/8b/02049f33cbb3a15d414eaa9225480707f87575d54d61362e7e9a268dcc98/iterm2-2.6.tar.gz"
    sha256 "acabe7af40b8f264e48db1b21e1bcdce027dee9e6627b178c14f1930f615feb3"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/ea/ab/ae590cd71f5a50cd9e0979593e217529b532a001e46c2dd0811c8697f4ad/protobuf-5.26.0.tar.gz"
    sha256 "82f5870d74c99addfe4152777bdf8168244b9cf0ac65f8eccf045ddfa9d80d9b"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/2e/62/7a7874b7285413c954a4cca3c11fd851f11b2fe5b4ae2d9bee4f6d9bdb10/websockets-12.0.tar.gz"
    sha256 "81df9cbcbb6c260de1e007e58c011bfebe2dafc8435107b0537f393dd38c8b1b"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
