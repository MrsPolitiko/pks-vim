/* terminal.c */
void init_job_options(jobopt_T *opt);
buf_T *term_start(typval_T *argvar, char **argv, jobopt_T *opt, int flags);
void ex_terminal(exarg_T *eap);
int term_write_session(FILE *fd, win_T *wp, hashtab_T *terminal_bufs);
int term_should_restore(buf_T *buf);
void free_terminal(buf_T *buf);
void free_unused_terminals(void);
void write_to_term(buf_T *buffer, char_u *msg, channel_T *channel);
int term_job_running(term_T *term);
int term_none_open(term_T *term);
int term_try_stop_job(buf_T *buf);
int term_check_timers(int next_due_arg, proftime_T *now);
int term_in_normal_mode(void);
void term_enter_job_mode(void);
int send_keys_to_term(term_T *term, int c, int modmask, int typed);
int terminal_is_active(void);
cursorentry_T *term_get_cursor_shape(guicolor_T *fg, guicolor_T *bg);
int term_use_loop(void);
void term_win_entered(void);
int terminal_loop(int blocking);
int may_close_term_popup(void);
void term_channel_closed(channel_T *ch);
void term_check_channel_closed_recently(void);
int term_do_update_window(win_T *wp);
void term_update_window(win_T *wp);
int term_is_finished(buf_T *buf);
int term_show_buffer(buf_T *buf);
void term_change_in_curbuf(void);
int term_get_attr(win_T *wp, linenr_T lnum, int col);
void term_update_colors(term_T *term);
void term_update_colors_all(void);
char_u *term_get_status_text(term_T *term);
int set_ref_in_term(int copyID);
void f_term_dumpwrite(typval_T *argvars, typval_T *rettv);
int term_swap_diff(void);
void f_term_dumpdiff(typval_T *argvars, typval_T *rettv);
void f_term_dumpload(typval_T *argvars, typval_T *rettv);
void f_term_getaltscreen(typval_T *argvars, typval_T *rettv);
void f_term_getattr(typval_T *argvars, typval_T *rettv);
void f_term_getcursor(typval_T *argvars, typval_T *rettv);
void f_term_getjob(typval_T *argvars, typval_T *rettv);
void f_term_getline(typval_T *argvars, typval_T *rettv);
void f_term_getscrolled(typval_T *argvars, typval_T *rettv);
void f_term_getsize(typval_T *argvars, typval_T *rettv);
void f_term_setsize(typval_T *argvars, typval_T *rettv);
void f_term_getstatus(typval_T *argvars, typval_T *rettv);
void f_term_gettitle(typval_T *argvars, typval_T *rettv);
void f_term_gettty(typval_T *argvars, typval_T *rettv);
void f_term_list(typval_T *argvars, typval_T *rettv);
void f_term_scrape(typval_T *argvars, typval_T *rettv);
void f_term_sendkeys(typval_T *argvars, typval_T *rettv);
void f_term_getansicolors(typval_T *argvars, typval_T *rettv);
void f_term_setansicolors(typval_T *argvars, typval_T *rettv);
void f_term_setapi(typval_T *argvars, typval_T *rettv);
void f_term_setrestore(typval_T *argvars, typval_T *rettv);
void f_term_setkill(typval_T *argvars, typval_T *rettv);
void f_term_start(typval_T *argvars, typval_T *rettv);
void f_term_wait(typval_T *argvars, typval_T *rettv);
void term_send_eof(channel_T *ch);
job_T *term_getjob(term_T *term);
int use_conpty(void);
int terminal_enabled(void);
/* vim: set ft=c : */
