class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "1.10.6"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-#{version}.tgz"
    sha256 "5d0801d22a2dd8a6b2f251e3621f03ecd56eb440564ca8237e1d7b6039a1687e"
  
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
