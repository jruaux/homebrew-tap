class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "0.31.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/#{version}/riot-#{version}.tgz"
    sha256 "ec8476d94748d86dd2c5f349d438e6c42282aeb5fa5907664e65d79eea5f2eb0"
  
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
