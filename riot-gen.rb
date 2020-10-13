class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.3"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "416a59e20a50b9c06e3556998ba17ade1dff811626172fa1eb90dcebdd5b9593"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
