Feature: Rachel can never remember how the cucumber AST table methods work

    # See:
    # ls -1 $GEM_HOME/gems/cucumber-*/lib/cucumber/multiline_argument/data_table.rb

    Scenario: raw: enumeration of lists

        Given this table:
            | animal | feet | size   |
            | cat    | 4    | medium |
            | snail  | 1    | small  |
        Then the following equalities hold true:
            | expression      | result  |
            | table.raw.count | 3       |
            | table.raw[0][2] | "size"  |
            | table.raw[2][0] | "snail" |

    Scenario: hashes: enumeration of hashes

        Given this table:
            | animal | feet | size   |
            | cat    | 4    | medium |
            | snail  | 1    | small  |
        Then the following equalities hold true:
            | expression         | result                                                    |
            | table.hashes.count | 2                                                         |
            | table.hashes.first | { "animal" => "cat", "feet" => "4", "size" => "medium" }  |
            | table.hashes.last  | { "animal" => "snail", "feet" => "1", "size" => "small" } |

    Scenario: rows_hash: two-column table to hash

        Given this table:
            | animal | cat    |
            | feet   | 4      |
            | size   | medium |
        Then the following equalities hold true:
            | table.rows_hash | { "animal" => "cat", "feet" => "4", "size" => "medium" }  |

