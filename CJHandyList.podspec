
Pod::Spec.new do |s|

 

  s.name         = "CJHandyList"
  s.version      = "0.0.3"
  s.summary      = "让 UITableView / UICollectionView 更加简单优雅，轻易实现列表动态化、模块化。"
  s.description  = <<-DESC
              让 UITableView / UICollectionView 更加简单优雅，轻易实现列表动态化、模块化。
                   DESC

  s.homepage     = "https://github.com/Cingjin"
  
  s.license      = "MIT"

  s.author       = { "Cingjin" => "15327288437@163.com" }

  s.platform     = :ios,"8.0"

  s.source       = { :git => "https://github.com/Cingjin/CJHandyList.git", :tag => "#{s.version}" }

  s.source_files  = "CJHandyList/**/*.{h,m}"

  s.requires_arc  = true

end
