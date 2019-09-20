class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "0.34.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/#{version}/riot-#{version}.tgz"
    sha256 "b78c8759146ed5133806a0466655af05870f46160635d96a61fced26df935dea"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot"
      mkdir prefix/"bash"
  
      system "#{bin}/riot --completion-script > #{prefix}/bash/completion.bash"
      bash_completion.install "#{prefix}/bash/completion.bash" => "riot"
  
      system "echo 'autoload -U +X bashcompinit && bashcompinit' > #{prefix}/bash/completion.zsh"
      system "#{bin}/riot --completion-script >> #{prefix}/bash/completion.zsh"
      zsh_completion.install "#{prefix}/bash/completion.zsh" => "_riot"
    end
  end
