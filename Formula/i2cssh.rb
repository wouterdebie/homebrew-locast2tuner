class I2cssh < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "http://github.com/wouterdebie/i2cssh"
  url "https://files.pythonhosted.org/packages/a2/0c/cd79d5f09413e1e9a477a9c05bcf24c007ab75395c2b032dd943d8985e44/i2cssh-0.1.9.tar.gz"
  sha256 "3ecd36d5dc75b6ead451274efc63567f3004dcec5ab5554ce3d375a37373e30f"

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
    url "https://files.pythonhosted.org/packages/c8/2d/075627c7c897e6f535261bd8fd3f633c77a2af1afe4013bfd503189c4c46/protobuf-4.24.1.tar.gz"
    sha256 "44837a5ed9c9418ad5d502f89f28ba102e9cd172b6668bc813f21716f9273348"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/d8/3b/2ed38e52eed4cf277f9df5f0463a99199a04d9e29c9e227cfafa57bd3993/websockets-11.0.3.tar.gz"
    sha256 "88fc51d9a26b10fc331be344f1781224a375b78488fc343620184e95a4b27016"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
