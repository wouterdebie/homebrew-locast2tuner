class I2cssh < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "http://github.com/wouterdebie/i2cssh"
  url "https://files.pythonhosted.org/packages/16/84/ad35ec5194aa996820750c97c4715589498f434e69b9fef07428282e7150/i2cssh-0.1.13.tar.gz"
  sha256 "9a665849f64faaf11bf37dfe50f6ab61f540e04196566f67238525dd960822b3"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "click-option-group" do
    url "https://files.pythonhosted.org/packages/e7/b8/91054601a2e05fd9060cb1baf56be5b24145817b059e078669e1099529c7/click-option-group-0.5.6.tar.gz"
    sha256 "97d06703873518cc5038509443742b25069a3c7562d1ea72ff08bfadde1ce777"
  end

  resource "iterm2" do
    url "https://files.pythonhosted.org/packages/4f/eb/47bb125fd3b32969f3bc8e0b8997bbe308484ac4d04331ae1e6199ae2c0f/iterm2-2.7.tar.gz"
    sha256 "f6f0bec46c32cecaf7be7fd82296ec4697d4bf2101f0c4aab24cc123991fa230"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/d2/4f/1639b7b1633d8fd55f216ba01e21bf2c43384ab25ef3ddb35d85a52033e8/protobuf-5.29.1.tar.gz"
    sha256 "683be02ca21a6ffe80db6dd02c0b5b2892322c59ca57fd6c872d652cb80549cb"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/f4/1b/380b883ce05bb5f45a905b61790319a28958a9ab1e4b6b95ff5464b60ca1/websockets-14.1.tar.gz"
    sha256 "398b10c77d471c0aab20a845e7a60076b6390bfdaac7a6d2edb0d2c59d75e8d8"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
