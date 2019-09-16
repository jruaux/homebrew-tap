class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "0.30.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/#{version}/riot-#{version}.tgz"
    sha256 "50ca2354dc321a00d4f91679a91a6e0fc533fe35fd2166994df6828b30e6d239"
  
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
