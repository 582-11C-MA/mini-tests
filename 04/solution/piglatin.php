<?php

declare(strict_types=1);
require "check_expect.php";

/**
 * Translate a given $word to piglatin.
 */
function piglatin(string $word): string
{
    $starts_with_vowel = str_contains("aeiouy", $word[0]);
    if ($starts_with_vowel) return $word . "ay";
    $word_rest = substr($word, 1);
    return piglatin($word_rest . $word[0]);
}

check_expect(piglatin("banane"), "ananebay");
check_expect(piglatin("chameau"), "ameauchay");
check_expect(piglatin("air"), "airay");

$input = readline("Enter work to translate: ");
echo piglatin($input);
