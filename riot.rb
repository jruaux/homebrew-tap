class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "1.5.0"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/#{version}/riot-#{version}.tgz"
    sha256 "ef3cd00794b2a4f605c08027f13fe1e2f49e50dfb39c70c6de3e6a2b432adce5"
  
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
