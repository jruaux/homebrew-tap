class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.5.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "03a0033784ba1bc164b94ed083f8c8642986148a6ecd695a4c75dd6f821acb8b"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
