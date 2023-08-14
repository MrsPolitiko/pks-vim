/* testing.c */
void f_assert_beeps(typval_T *argvars, typval_T *rettv);
void f_assert_nobeep(typval_T *argvars, typval_T *rettv);
void f_assert_equal(typval_T *argvars, typval_T *rettv);
void f_assert_equalfile(typval_T *argvars, typval_T *rettv);
void f_assert_notequal(typval_T *argvars, typval_T *rettv);
void f_assert_exception(typval_T *argvars, typval_T *rettv);
void f_assert_fails(typval_T *argvars, typval_T *rettv);
void f_assert_false(typval_T *argvars, typval_T *rettv);
void f_assert_inrange(typval_T *argvars, typval_T *rettv);
void f_assert_match(typval_T *argvars, typval_T *rettv);
void f_assert_notmatch(typval_T *argvars, typval_T *rettv);
void f_assert_report(typval_T *argvars, typval_T *rettv);
void f_assert_true(typval_T *argvars, typval_T *rettv);
void f_test_alloc_fail(typval_T *argvars, typval_T *rettv);
void f_test_autochdir(typval_T *argvars, typval_T *rettv);
void f_test_feedinput(typval_T *argvars, typval_T *rettv);
void f_test_getvalue(typval_T *argvars, typval_T *rettv);
void f_test_option_not_set(typval_T *argvars, typval_T *rettv);
void f_test_override(typval_T *argvars, typval_T *rettv);
void f_test_refcount(typval_T *argvars, typval_T *rettv);
void f_test_garbagecollect_now(typval_T *argvars, typval_T *rettv);
void f_test_garbagecollect_soon(typval_T *argvars, typval_T *rettv);
void f_test_ignore_error(typval_T *argvars, typval_T *rettv);
void f_test_null_blob(typval_T *argvars, typval_T *rettv);
void f_test_null_channel(typval_T *argvars, typval_T *rettv);
void f_test_null_dict(typval_T *argvars, typval_T *rettv);
void f_test_null_job(typval_T *argvars, typval_T *rettv);
void f_test_null_list(typval_T *argvars, typval_T *rettv);
void f_test_null_function(typval_T *argvars, typval_T *rettv);
void f_test_null_partial(typval_T *argvars, typval_T *rettv);
void f_test_null_string(typval_T *argvars, typval_T *rettv);
void f_test_unknown(typval_T *argvars, typval_T *rettv);
void f_test_void(typval_T *argvars, typval_T *rettv);
void f_test_setmouse(typval_T *argvars, typval_T *rettv);
void f_test_mswin_event(typval_T *argvars, typval_T *rettv);
void f_test_gui_event(typval_T *argvars, typval_T *rettv);
void f_test_settime(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */
