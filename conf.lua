function love.conf(t)
    t.identity = 'concord-demo'
    t.version = '11.3'

    -- Window
    t.window.title = 'Concord Demo'
    t.window.width = 512
    t.window.height = 480
    t.window.vsync = false

    -- Modules
    t.modules.physics = false

    -- Love Release
    t.releases = {
        title = 'concord-demo',
        loveVersion = '11.3',
        version = '0.1.0',
        author = 'John Cheesman',
        email = 'me@johncheesman.org.uk',
        description = 'Example of the Concord ECS library',
        excludeFileList = {
            'doc',
            'docs',
            'readme',
            'spec',
            'tests',
            'tutorials',
            '**/*.md',
            '**/*.txt',
            '**/*.yml',
            '**/*.luacheckrc',
            '**/*.ld',
            'LICENSE'
        },
        releaseDirectory = 'release'
    }
end

