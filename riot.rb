class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "1.10.5"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-#{version}.tgz"
    sha256 "2bc237b8dc6f424dd0e1a1fdb4cc7245d6e78a697922134b11f9469ff45dfd82"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot"
      mkdir prefix/"bash"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.bash"
      bash_completion.install "#{prefix}/bash/completion.bash" => "riot"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.zsh"
      zsh_completion.install "#{prefix}/bash/completion.zsh" => "_riot"
    end
  end
