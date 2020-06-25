class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-file-#{version}.tgz"
    sha256 "b8db61ded2b7526908ac0f5ebd543c78d292efcdfeeaada3a3b664de9018fe8b"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
      mkdir prefix/"zsh"
      system "#{bin}/riot-file generate-completion > #{prefix}/zsh/_riot-file"
      zsh_completion.install "#{prefix}/zsh/_riot-file" => "_riot-file"
    end
  end
