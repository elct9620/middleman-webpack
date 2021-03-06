module MiddlemanWebpacked
  class Build < CommandRunner
    bin 'node_modules/.bin/webpack'
    mode :production

    def setup
      @arguments.push(
        '--bail',
        '-p',
        "--output-path #{options.source}/#{app.config[:js_dir]}",
        "--config config/webpack/production.js"
      )
    end
  end
end
