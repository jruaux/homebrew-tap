class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.3"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "0451ef0851286d31fda9388706ec8e91d2e375a5b130b244780e1e527366ea66"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
