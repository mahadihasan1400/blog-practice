<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitbc3572a5f905d5cef0d4fb0801a73251
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitbc3572a5f905d5cef0d4fb0801a73251::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitbc3572a5f905d5cef0d4fb0801a73251::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
