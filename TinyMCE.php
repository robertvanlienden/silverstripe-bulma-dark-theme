<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorConfig;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;

$formats = [
    [ 'title' => 'Headings', 'items' => [
        ['title' => 'Heading 1', 'block' => 'h1', 'classes' => 'title is-1'],
        ['title' => 'Heading 2', 'block' => 'h2', 'classes' => 'title is-2'],
        ['title' => 'Heading 3', 'block' => 'h3', 'classes' => 'title is-1'],
        ['title' => 'Heading 4', 'block' => 'h4', 'classes' => 'title is-4'],
        ['title' => 'Heading 5', 'block' => 'h5', 'classes' => 'title is-5'],
        ['title' => 'Heading 6', 'block' => 'h6', 'classes' => 'title is-6'],
        ['title' => 'Heading 6', 'block' => 'h6', 'classes' => 'title is-6'],
        [
            'title'           => 'Subtitle',
            'selector'        => 'p',
            'classes'         => 'title-sub',
        ],
    ]
    ],
];

TinyMCEConfig::get('cms')
    ->addButtonsToLine(2, 'styleselect')
    ->setOptions([
        'importcss_append' => true,
        'style_formats' => $formats,
    ])
    ->removeButtons('formatselect');
