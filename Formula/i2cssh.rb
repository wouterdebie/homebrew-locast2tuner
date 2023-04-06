class I2cssh < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "http://github.com/wouterdebie/i2cssh"
  url "https://files.pythonhosted.org/packages/23/bd/17965d94d44caa04f19075df788af0890698bf5dd11e2d7eee412f829583/i2cssh-0.0.15.tar.gz"
  sha256 "f88d73f83fe5f1c11db7a9ae6c48ff8f5f603ae0e6b81dc12a86160807c4e107"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "click-option-group" do
    url "https://files.pythonhosted.org/packages/3c/86/5de6d909d9dcc85627a178788ec3e8c3ef81cda175badb48ad0bb582628d/click-option-group-0.5.3.tar.gz"
    sha256 "a6e924f3c46b657feb5b72679f7e930f8e5b224b766ab35c91ae4019b4e0615e"
  end

  resource "iterm2" do
    url "https://files.pythonhosted.org/packages/f5/8b/02049f33cbb3a15d414eaa9225480707f87575d54d61362e7e9a268dcc98/iterm2-2.6.tar.gz"
    sha256 "acabe7af40b8f264e48db1b21e1bcdce027dee9e6627b178c14f1930f615feb3"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/4a/e0/9da6a25f4ac72455f5da9d4af8d75144d15e29d415220773850e0ec23d3e/protobuf-4.22.1.tar.gz"
    sha256 "dce7a55d501c31ecf688adb2f6c3f763cf11bc0be815d1946a84d74772ab07a7"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/bd/90/6b5802fad3992d6eac7163216e0389a72475cbb57b23005135190e96d160/websockets-11.0.1.tar.gz"
    sha256 "369410925b240b30ef1c1deadbd6331e9cd865ad0b8966bf31e276cc8e0da159"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
