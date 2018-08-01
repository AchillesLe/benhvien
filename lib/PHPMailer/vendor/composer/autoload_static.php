<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit516a881101e20de06e4280d248ac8b1d
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit516a881101e20de06e4280d248ac8b1d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit516a881101e20de06e4280d248ac8b1d::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
