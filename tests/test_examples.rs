/*
    Test the unit tests in the examples/ directory.
*/

use state_graph::constants::*;
use state_graph::driver;

/*
    Helper functions
*/

fn assert_one(dir: &str, name: &str) {
    driver::assert_example(
        &format!("{}/{}", dir, name),
        UNIT_TEST_TIMEOUT_SECS,
    );
}
fn assert_expensive(dir: &str, name: &str) {
    driver::assert_example(
        &format!("{}/{}", dir, name),
        UNIT_TEST_TIMEOUT_EXPENSIVE,
    );
}
fn assert_all(dir: &str) {
    for basename in driver::example_basenames_in_dir(dir) {
        driver::assert_example(&basename, UNIT_TEST_TIMEOUT_SECS);
    }
}

/*
    Handwritten unit tests
*/

#[test]
fn test_1() {
    assert_one(EX_DIR_HANDWRITTEN, "1");
}
#[test]
fn test_2() {
    assert_one(EX_DIR_HANDWRITTEN, "2");
}
#[test]
fn test_3() {
    assert_one(EX_DIR_HANDWRITTEN, "3");
}
#[test]
fn test_4() {
    assert_one(EX_DIR_HANDWRITTEN, "4");
}
#[test]
fn test_5() {
    assert_one(EX_DIR_HANDWRITTEN, "5");
}
#[test]
fn test_6() {
    assert_one(EX_DIR_HANDWRITTEN, "6");
}
#[test]
fn test_7() {
    assert_one(EX_DIR_HANDWRITTEN, "7");
}
#[test]
fn test_8() {
    assert_one(EX_DIR_HANDWRITTEN, "8");
}
#[test]
fn test_9() {
    assert_one(EX_DIR_HANDWRITTEN, "9");
}
#[test]
fn test_10() {
    assert_one(EX_DIR_HANDWRITTEN, "10");
}
#[test]
fn test_11() {
    assert_one(EX_DIR_HANDWRITTEN, "11");
}
#[test]
fn test_12() {
    assert_one(EX_DIR_HANDWRITTEN, "12");
}
#[test]
fn test_13() {
    assert_one(EX_DIR_HANDWRITTEN, "13");
}
#[test]
fn test_14() {
    assert_one(EX_DIR_HANDWRITTEN, "14");
}
#[test]
fn test_15() {
    assert_one(EX_DIR_HANDWRITTEN, "15");
}
#[test]
fn test_16() {
    assert_one(EX_DIR_HANDWRITTEN, "16");
}
#[test]
fn test_17() {
    assert_one(EX_DIR_HANDWRITTEN, "17");
}
#[test]
fn test_18() {
    assert_one(EX_DIR_HANDWRITTEN, "18");
}
#[test]
fn test_19() {
    assert_one(EX_DIR_HANDWRITTEN, "19");
}
#[test]
fn test_20() {
    assert_one(EX_DIR_HANDWRITTEN, "20");
}
#[test]
fn test_tree() {
    assert_one(EX_DIR_HANDWRITTEN, "tree_3");
}

/*
    Auto-generated examples
*/

#[test]
fn test_line() {
    assert_one(EX_DIR_GENERATED, "line_3");
    assert_one(EX_DIR_GENERATED, "line_10");
    assert_one(EX_DIR_GENERATED, "line_20");
    assert_one(EX_DIR_GENERATED, "line_100");
}

#[test]
fn test_reverseline() {
    assert_one(EX_DIR_GENERATED, "reverseline_3");
    assert_one(EX_DIR_GENERATED, "reverseline_10");
    assert_one(EX_DIR_GENERATED, "reverseline_20");
    assert_one(EX_DIR_GENERATED, "reverseline_100");
}

#[test]
fn test_unkline() {
    assert_one(EX_DIR_GENERATED, "unkline_3");
    assert_one(EX_DIR_GENERATED, "unkline_10");
    assert_one(EX_DIR_GENERATED, "unkline_20");
    assert_one(EX_DIR_GENERATED, "unkline_100");
}

#[test]
fn test_reverseunkline() {
    assert_one(EX_DIR_GENERATED, "reverseunkline_3");
    assert_one(EX_DIR_GENERATED, "reverseunkline_10");
    assert_one(EX_DIR_GENERATED, "reverseunkline_20");
    assert_one(EX_DIR_GENERATED, "reverseunkline_100");
}

#[test]
fn test_loop() {
    assert_one(EX_DIR_GENERATED, "loop_3");
    assert_one(EX_DIR_GENERATED, "loop_10");
    assert_one(EX_DIR_GENERATED, "loop_20");
    assert_one(EX_DIR_GENERATED, "loop_100");
}

#[test]
fn test_unkloop() {
    assert_one(EX_DIR_GENERATED, "unkloop_3");
    assert_one(EX_DIR_GENERATED, "unkloop_10");
    assert_one(EX_DIR_GENERATED, "unkloop_20");
    assert_one(EX_DIR_GENERATED, "unkloop_100");
}

#[test]
fn test_reverseloop() {
    assert_one(EX_DIR_GENERATED, "reverseloop_3");
    assert_one(EX_DIR_GENERATED, "reverseloop_10");
    assert_one(EX_DIR_GENERATED, "reverseloop_20");
    assert_one(EX_DIR_GENERATED, "reverseloop_100");
}

#[test]
fn test_reverseunkloop() {
    assert_one(EX_DIR_GENERATED, "reverseunkloop_3");
    assert_one(EX_DIR_GENERATED, "reverseunkloop_10");
    assert_one(EX_DIR_GENERATED, "reverseunkloop_20");
    assert_one(EX_DIR_GENERATED, "reverseunkloop_100");
}

#[test]
#[ignore]
fn test_generated_expensive() {
    assert_expensive(EX_DIR_GENERATED, "line_1000");
    assert_expensive(EX_DIR_GENERATED, "reverseline_1000");
    assert_expensive(EX_DIR_GENERATED, "unkline_1000");
    assert_expensive(EX_DIR_GENERATED, "reverseunkline_1000");
    assert_expensive(EX_DIR_GENERATED, "loop_1000");
    assert_expensive(EX_DIR_GENERATED, "reverseloop_1000");
    assert_expensive(EX_DIR_GENERATED, "unkloop_1000");
    assert_expensive(EX_DIR_GENERATED, "reverseunkloop_1000");
}

/*
    Regex Examples
    (No expected output -- compares for agreement across algorithms)
*/

#[test]
fn test_regex_comp() {
    assert_all(EX_DIR_REGEX_COMP);
}

#[test]
fn test_regex_inter() {
    assert_all(EX_DIR_REGEX_INTER);
}

#[test]
fn test_regex_count() {
    assert_one(EX_DIR_REGEX_COUNT, "re_count_sat_easy");
    assert_one(EX_DIR_REGEX_COUNT, "re_count_sat_medium");
}

#[test]
fn test_regex_loop() {
    assert_one(EX_DIR_REGEX_LOOP, "deadloop1_sat");
    assert_one(EX_DIR_REGEX_LOOP, "deadloop2_sat");
    assert_one(EX_DIR_REGEX_LOOP, "deadloop3_unsat");
    assert_one(EX_DIR_REGEX_LOOP, "evil1_unsat");
    assert_one(EX_DIR_REGEX_LOOP, "evil2_inter_unsat");
    assert_one(EX_DIR_REGEX_LOOP, "evil2_sat");
    assert_one(EX_DIR_REGEX_LOOP, "nestedloop1_unsat");
    assert_one(EX_DIR_REGEX_LOOP, "nestedloop2_sat");
    assert_one(EX_DIR_REGEX_LOOP, "nestedloop2_unsat");
}

#[test]
fn test_regex_detblowup() {
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_sat_3");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_sat_5");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_sat_10");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_sat_100");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_unsat_1");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_unsat_3");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_unsat_5");
    assert_one(EX_DIR_REGEX_BLOWUP, "det_blowup_unsat_10");
    assert_one(EX_DIR_REGEX_BLOWUP, "digit05_unsat");
    assert_one(EX_DIR_REGEX_BLOWUP, "digit10_unsat");
    assert_one(EX_DIR_REGEX_BLOWUP, "digit15_unsat");
    assert_one(EX_DIR_REGEX_BLOWUP, "digit20_unsat");
}

#[test]
fn test_regex_date() {
    assert_one(EX_DIR_REGEX_DATE, "date_minimal_sat");
    assert_one(EX_DIR_REGEX_DATE, "date_minimal_unsat");
}

#[test]
fn test_regex_sgeasy() {
    assert_one(EX_DIR_REGEX_SGEASY, "diamond_chain_10");
    assert_one(EX_DIR_REGEX_SGEASY, "inter_1_2_3");
    assert_one(EX_DIR_REGEX_SGEASY, "inter_star_3_3");
    assert_one(EX_DIR_REGEX_SGEASY, "long_3");
}

#[test]
fn test_regex_password() {
    assert_one(EX_DIR_REGEX_PASSW, "passw_sat1");
    assert_one(EX_DIR_REGEX_PASSW, "passw_sat2");
    assert_one(EX_DIR_REGEX_PASSW, "passw_sat3");
    assert_one(EX_DIR_REGEX_PASSW, "passw_sat4");
    assert_one(EX_DIR_REGEX_PASSW, "passw_unsat1");
    assert_one(EX_DIR_REGEX_PASSW, "passw_unsat3");
    assert_one(EX_DIR_REGEX_PASSW, "passw_very_complex_2_4_unsat");
    assert_one(EX_DIR_REGEX_PASSW, "passw_very_complex_3_4_unsat");
}

#[test]
#[ignore]
fn test_regex_medium() {
    // Medium-length tests, not really necessary to run normally
    assert_expensive(EX_DIR_REGEX_DATE, "date1_sat");
    assert_expensive(EX_DIR_REGEX_DATE, "date2_sat");
    assert_expensive(EX_DIR_REGEX_DATE, "date_unsat");
    assert_expensive(EX_DIR_REGEX_BLOWUP, "det_blowup_sat_1000");
    assert_expensive(EX_DIR_REGEX_SGEASY, "diamond_chain_30");
    assert_expensive(EX_DIR_REGEX_SGEASY, "diamond_chain_100");
    assert_expensive(EX_DIR_REGEX_SGHARD, "diamond_chain_300");
    assert_expensive(EX_DIR_REGEX_SGEASY, "inter_3_6_9");
    assert_expensive(EX_DIR_REGEX_SGHARD, "inter_10_20_30");
    assert_expensive(EX_DIR_REGEX_SGHARD, "inter_30_60_90");
    assert_expensive(EX_DIR_REGEX_SGEASY, "inter_star_10_10");
    assert_expensive(EX_DIR_REGEX_SGEASY, "inter_star_30_30");
    assert_expensive(EX_DIR_REGEX_SGHARD, "inter_star_100_100");
    assert_expensive(EX_DIR_REGEX_SGEASY, "long_10");
    assert_expensive(EX_DIR_REGEX_SGHARD, "long_30");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_4_10_sat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_5_10_sat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_6_10_sat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_7_10_sat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_8_10_sat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_complex_9_10_sat");
}

#[test]
#[ignore]
fn test_regex_expensive() {
    // Long expensive tests
    assert_expensive(EX_DIR_REGEX_BLOWUP, "det_blowup_unsat_100");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_1_7_unsat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_2_7_unsat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_3_7_unsat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_4_7_unsat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_5_7_unsat");
    assert_expensive(EX_DIR_REGEX_PASSW, "passw_very_complex_6_7_unsat");
}

/*
    More Regex Examples -- from RegexLib
    (No expected output -- compares for agreement across algorithms)
*/

#[test]
fn test_regexlib_membership() {
    assert_one(EX_DIR_RLIB_M1, "membership_0");
    assert_one(EX_DIR_RLIB_M1, "membership_10");
    assert_one(EX_DIR_RLIB_M1, "membership_34");
    assert_one(EX_DIR_RLIB_M1, "membership_56");
    assert_one(EX_DIR_RLIB_M1, "membership_94");
    assert_one(EX_DIR_RLIB_M1, "membership_150");
    assert_one(EX_DIR_RLIB_M1, "membership_191");
    assert_one(EX_DIR_RLIB_M1, "membership_535");
    assert_one(EX_DIR_RLIB_M1, "membership_829");
    assert_one(EX_DIR_RLIB_M1, "membership_1153");
    assert_one(EX_DIR_RLIB_M1, "membership_1395");
    assert_one(EX_DIR_RLIB_M1, "membership_1568");
    assert_one(EX_DIR_RLIB_M1, "membership_1625");
    assert_one(EX_DIR_RLIB_M1, "membership_1780");
    assert_one(EX_DIR_RLIB_M1, "membership_1919");
}

#[test]
fn test_regexlib_inter() {
    assert_one(EX_DIR_RLIB_INTER1, "intersect_0_0");
    assert_one(EX_DIR_RLIB_INTER1, "intersect_1_5");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_0_3");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_1_4");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_2_8");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_3_6");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_3_8");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_5_7");
    assert_one(EX_DIR_RLIB_INTER2, "intersect_5_8");
}

#[test]
fn test_regex_subset() {
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_0_2");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_0_9");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_1_5");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_0_2");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_3_7");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_5_9");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_6_2");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_6_9");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_7_8");
    assert_one(EX_DIR_RLIB_SUB1, "notsubset_9_8");
    assert_one(EX_DIR_RLIB_SUB2, "notsubset_2_2");
    assert_one(EX_DIR_RLIB_SUB2, "notsubset_6_6");
    assert_one(EX_DIR_RLIB_SUB2, "notsubset_0_0");
    assert_one(EX_DIR_RLIB_SUB2, "notsubset_9_9");
}

#[test]
#[ignore]
fn test_regexlib_medium() {
    // Medium-length tests
    assert_expensive(EX_DIR_RLIB_M1, "membership_518");
    assert_expensive(EX_DIR_RLIB_M1, "membership_553");
    assert_expensive(EX_DIR_RLIB_M1, "membership_800");
    assert_expensive(EX_DIR_RLIB_M1, "membership_807");
    assert_expensive(EX_DIR_RLIB_M1, "membership_1749");
    assert_expensive(EX_DIR_RLIB_INTER1, "intersect_6_7");
    assert_expensive(EX_DIR_RLIB_INTER1, "intersect_6_8");
    assert_expensive(EX_DIR_RLIB_INTER1, "intersect_8_9");
    assert_expensive(EX_DIR_RLIB_INTER1, "intersect_7_8");
    assert_expensive(EX_DIR_RLIB_INTER1, "intersect_8_8");
    assert_expensive(EX_DIR_RLIB_SUB1, "notsubset_8_7");
    assert_expensive(EX_DIR_RLIB_SUB1, "notsubset_8_6");
    assert_expensive(EX_DIR_RLIB_SUB1, "notsubset_7_6");
}

#[test]
#[ignore]
fn test_regexlib_expensive() {
    // Long expensive tests
    assert_expensive(EX_DIR_RLIB_M1, "membership_854");
}
