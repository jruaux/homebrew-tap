class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.0"
    module "file"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-#{module}-#{version}.tgz"
    sha256 "5c68e6b6d4ce3c3262a48145fb04c976da45ca87c78f1015245b757668364ef4"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-#{module}"
      mkdir prefix/"bash"
  
      zsh_completion.install "#{libexec}/zsh/_riot-#{module}" => "_riot-#{module}"
    end
  end
