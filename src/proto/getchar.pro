/* getchar.c */
char_u *get_recorded(void);
char_u *get_inserted(void);
int stuff_empty(void);
int readbuf1_empty(void);
void typeahead_noflush(int c);
void flush_buffers(flush_buffers_T flush_typeahead);
void ResetRedobuff(void);
void CancelRedo(void);
void saveRedobuff(save_redo_T *save_redo);
void restoreRedobuff(save_redo_T *save_redo);
void AppendToRedobuff(char_u *s);
void AppendToRedobuffLit(char_u *str, int len);
void AppendCharToRedobuff(int c);
void AppendNumberToRedobuff(long n);
void stuffReadbuff(char_u *s);
void stuffRedoReadbuff(char_u *s);
void stuffReadbuffSpec(char_u *s);
void stuffcharReadbuff(int c);
void stuffnumReadbuff(long n);
void stuffescaped(char_u *arg, int literally);
int start_redo(long count, int old_redo);
int start_redo_ins(void);
void stop_redo_ins(void);
int noremap_keys(void);
int ins_typebuf(char_u *str, int noremap, int offset, int nottyped, int silent);
void ins_char_typebuf(int c, int modifier, int gotchars_ignore);
int typebuf_changed(int tb_change_cnt);
int typebuf_typed(void);
int typebuf_maplen(void);
void del_typebuf(int len, int offset);
int save_typebuf(void);
void save_typeahead(tasave_T *tp);
void restore_typeahead(tasave_T *tp, int overwrite);
void openscript(char_u *name, int directly);
void close_all_scripts(void);
int using_script(void);
void before_blocking(void);
int merge_modifyOtherKeys(int c_arg, int *modifiers);
int vgetc(void);
int safe_vgetc(void);
int plain_vgetc(void);
int vpeekc(void);
int vpeekc_nomap(void);
int vpeekc_any(void);
int char_avail(void);
void f_getchar(typval_T *argvars, typval_T *rettv);
void f_getcharstr(typval_T *argvars, typval_T *rettv);
void f_getcharmod(typval_T *argvars, typval_T *rettv);
void parse_queued_messages(void);
void vungetc(int c);
int fix_input_buffer(char_u *buf, int len);
int input_available(void);
char_u *getcmdkeycmd(int promptc, void *cookie, int indent, getline_opt_T do_concat);
/* vim: set ft=c : */
