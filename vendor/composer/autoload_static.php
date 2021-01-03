<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf5efe1f60c2e1283151bac7cbf7808fc
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\src\\' => 8,
            'App\\config\\' => 11,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\src\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
        'App\\config\\' => 
        array (
            0 => __DIR__ . '/../..' . '/config',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf5efe1f60c2e1283151bac7cbf7808fc::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf5efe1f60c2e1283151bac7cbf7808fc::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf5efe1f60c2e1283151bac7cbf7808fc::$classMap;

        }, null, ClassLoader::class);
    }
}
