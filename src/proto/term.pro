/* term.c */
guicolor_T termgui_get_color(char_u *name);
guicolor_T termgui_mch_get_rgb(guicolor_T color);
void init_term_props(int all);
void f_terminalprops(typval_T *argvars, typval_T *rettv);
void set_color_count(int nr);
keyprot_T match_keyprotocol(char_u *term);
int set_termname(char_u *term);
void free_cur_term(void);
void getlinecol(long *cp, long *rp);
int add_termcap_entry(char_u *name, int force);
int term_is_8bit(char_u *name);
int term_is_gui(char_u *name);
char_u *tltoa(unsigned long i);
void termcapinit(char_u *name);
void out_flush(void);
void out_flush_cursor(int force, int clear_selection);
void out_flush_check(void);
void out_trash(void);
void out_char(unsigned c);
void out_str_nf(char_u *s);
void out_str_cf(char_u *s);
void out_str(char_u *s);
void term_windgoto(int row, int col);
void term_cursor_right(int i);
void term_append_lines(int line_count);
void term_delete_lines(int line_count);
void term_set_winpos(int x, int y);
int term_get_winpos(int *x, int *y, varnumber_T timeout);
void term_set_winsize(int height, int width);
void term_fg_color(int n);
void term_bg_color(int n);
void term_ul_color(int n);
char_u *term_bg_default(void);
void term_fg_rgb_color(guicolor_T rgb);
void term_bg_rgb_color(guicolor_T rgb);
void term_ul_rgb_color(guicolor_T rgb);
void term_settitle(char_u *title);
void term_push_title(int which);
void term_pop_title(int which);
void ttest(int pairs);
void add_long_to_buf(long_u val, char_u *dst);
int get_bytes_from_buf(char_u *buf, char_u *bytes, int num_bytes);
void check_shellsize(void);
void limit_screen_size(void);
void win_new_shellsize(void);
void shell_resized(void);
void shell_resized_check(void);
void set_shellsize(int width, int height, int mustset);
void out_str_t_TE(void);
void out_str_t_TI(void);
void out_str_t_BE(void);
void may_send_t_RK(void);
void settmode(tmode_T tmode);
void starttermcap(void);
void stoptermcap(void);
void may_req_termresponse(void);
void check_terminal_behavior(void);
void may_req_bg_color(void);
int swapping_screen(void);
void scroll_start(void);
void cursor_on_force(void);
void cursor_on(void);
void cursor_off(void);
int cursor_is_sleeping(void);
void cursor_sleep(void);
void cursor_unsleep(void);
void term_cursor_mode(int forced);
void term_cursor_color(char_u *color);
int blink_state_is_inverted(void);
void term_cursor_shape(int shape, int blink);
void scroll_region_set(win_T *wp, int off);
void scroll_region_reset(void);
void clear_termcodes(void);
void add_termcode(char_u *name, char_u *string, int flags);
char_u *find_termcode(char_u *name);
char_u *get_termcode(int i);
int get_termcode_len(int idx);
void del_termcode(char_u *name);
void set_mouse_topline(win_T *wp);
int is_mouse_topline(win_T *wp);
int put_string_in_typebuf(int offset, int slen, char_u *string, int new_slen, char_u *buf, int bufsize, int *buflen);
int decode_modifiers(int n);
int check_termcode(int max_offset, char_u *buf, int bufsize, int *buflen);
void term_get_fg_color(char_u *r, char_u *g, char_u *b);
void term_get_bg_color(char_u *r, char_u *g, char_u *b);
char_u *replace_termcodes(char_u *from, char_u **bufp, int flags, int *did_simplify);
void show_termcodes(int flags);
int show_one_termcode(char_u *name, char_u *code, int printit);
void update_tcap(int attr);
void swap_tcap(void);
void ansi_color2rgb(int nr, char_u *r, char_u *g, char_u *b, char_u *ansi_idx);
void cterm_color2rgb(int nr, char_u *r, char_u *g, char_u *b, char_u *ansi_idx);
int term_replace_keycodes(char_u *ta_buf, int ta_len, int len_arg);
/* vim: set ft=c : */
