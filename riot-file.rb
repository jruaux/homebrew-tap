class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.tgz"
    sha256 "5c68e6b6d4ce3c3262a48145fb04c976da45ca87c78f1015245b757668364ef4"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
      mkdir prefix/"bash"
  
      zsh_completion.install "#{libexec}/zsh/_riot-file" => "_riot-file"
    end
  end
