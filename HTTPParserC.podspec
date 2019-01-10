Pod::Spec.new do |s|
  s.name = 'HTTPParserC'
  s.version = '2.9.0'
  s.license = 'MIT'

  s.summary = 'HTTP message parser written in C'
  s.description = <<-DESC
    HTTPParser is a HTTP message parser written in C. It parses both requests and responses.
    The parser is designed to be used in performance HTTP applications.
    It does not make any syscalls nor allocations, it does not buffer data, it can be interrupted at anytime.
    Depending on your architecture, it only requires about 40 bytes of data per message stream
    (in a web server that is per connection).
  DESC

  s.author = 'Building42'
  s.homepage = 'https://github.com/Building42/HTTPParserC'
  s.documentation_url = 'https://github.com/nodejs/http-parser'

  s.source = { :git => "https://github.com/Building42/HTTPParserC.git", :tag => s.version }
  s.source_files = 'Sources/http_parser.{h,c}'
  s.preserve_paths = 'Sources/http_parser.{h,c}'

  s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/HTTPParserC/Sources/**' }
  s.requires_arc = false

  s.ios.deployment_target = '8.0'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.6'
end
