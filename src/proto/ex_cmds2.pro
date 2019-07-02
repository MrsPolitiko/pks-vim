/* ex_cmds2.c */
void profile_start(proftime_T *tm);
void profile_end(proftime_T *tm);
void profile_sub(proftime_T *tm, proftime_T *tm2);
char *profile_msg(proftime_T *tm);
float_T profile_float(proftime_T *tm);
void profile_setlimit(long msec, proftime_T *tm);
int profile_passed_limit(proftime_T *tm);
void profile_zero(proftime_T *tm);
long proftime_time_left(proftime_T *due, proftime_T *now);
timer_T *create_timer(long msec, int repeat);
long check_due_timer(void);
timer_T *find_timer(long id);
void stop_timer(timer_T *timer);
void stop_all_timers(void);
void add_timer_info(typval_T *rettv, timer_T *timer);
void add_timer_info_all(typval_T *rettv);
int set_ref_in_timer(int copyID);
void timer_free_all(void);
void profile_divide(proftime_T *tm, int count, proftime_T *tm2);
void profile_add(proftime_T *tm, proftime_T *tm2);
void profile_self(proftime_T *self, proftime_T *total, proftime_T *children);
void profile_get_wait(proftime_T *tm);
void profile_sub_wait(proftime_T *tm, proftime_T *tma);
int profile_equal(proftime_T *tm1, proftime_T *tm2);
int profile_cmp(const proftime_T *tm1, const proftime_T *tm2);
void ex_profile(exarg_T *eap);
char_u *get_profile_name(expand_T *xp, int idx);
void set_context_in_profile_cmd(expand_T *xp, char_u *arg);
void profile_dump(void);
void script_prof_save(proftime_T *tm);
void script_prof_restore(proftime_T *tm);
void prof_inchar_enter(void);
void prof_inchar_exit(void);
int prof_def_func(void);
int autowrite(buf_T *buf, int forceit);
void autowrite_all(void);
int check_changed(buf_T *buf, int flags);
void browse_save_fname(buf_T *buf);
void dialog_changed(buf_T *buf, int checkall);
int can_abandon(buf_T *buf, int forceit);
int check_changed_any(int hidden, int unload);
int check_fname(void);
int buf_write_all(buf_T *buf, int forceit);
int get_arglist_exp(char_u *str, int *fcountp, char_u ***fnamesp, int wig);
void set_arglist(char_u *str);
void check_arg_idx(win_T *win);
void ex_args(exarg_T *eap);
void ex_previous(exarg_T *eap);
void ex_rewind(exarg_T *eap);
void ex_last(exarg_T *eap);
void ex_argument(exarg_T *eap);
void do_argfile(exarg_T *eap, int argn);
void ex_next(exarg_T *eap);
void ex_argedit(exarg_T *eap);
void ex_argadd(exarg_T *eap);
void ex_argdelete(exarg_T *eap);
void ex_listdo(exarg_T *eap);
char_u *get_arglist_name(expand_T *xp, int idx);
void ex_compiler(exarg_T *eap);
void ex_runtime(exarg_T *eap);
int do_in_path(char_u *path, char_u *name, int flags, void (*callback)(char_u *fname, void *ck), void *cookie);
int do_in_runtimepath(char_u *name, int flags, void (*callback)(char_u *fname, void *ck), void *cookie);
int source_runtime(char_u *name, int flags);
int source_in_path(char_u *path, char_u *name, int flags);
void add_pack_start_dirs(void);
void load_start_packages(void);
void ex_packloadall(exarg_T *eap);
void ex_packadd(exarg_T *eap);
void ex_options(exarg_T *eap);
void init_pyxversion(void);
void ex_pyxfile(exarg_T *eap);
void ex_pyx(exarg_T *eap);
void ex_pyxdo(exarg_T *eap);
void ex_source(exarg_T *eap);
linenr_T *source_breakpoint(void *cookie);
int *source_dbg_tick(void *cookie);
int source_level(void *cookie);
int do_source(char_u *fname, int check_other, int is_vimrc);
void ex_scriptnames(exarg_T *eap);
void scriptnames_slash_adjust(void);
char_u *get_scriptname(scid_T id);
void free_scriptnames(void);
char_u *getsourceline(int c, void *cookie, int indent, int do_concat);
void script_line_start(void);
void script_line_exec(void);
void script_line_end(void);
void ex_scriptencoding(exarg_T *eap);
void ex_scriptversion(exarg_T *eap);
void ex_finish(exarg_T *eap);
void do_finish(exarg_T *eap, int reanimate);
int source_finished(char_u *(*fgetline)(int, void *, int, int), void *cookie);
void ex_checktime(exarg_T *eap);
char_u *get_mess_lang(void);
void set_lang_var(void);
void ex_language(exarg_T *eap);
void free_locales(void);
char_u *get_lang_arg(expand_T *xp, int idx);
char_u *get_locales(expand_T *xp, int idx);
/* vim: set ft=c : */
