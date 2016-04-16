/* gui_motif.c */
void gui_x11_create_widgets(void);
void gui_x11_destroy_widgets(void);
void gui_mch_set_text_area_pos(int x, int y, int w, int h);
void gui_x11_set_back_color(void);
void manage_centered(Widget dialog_child);
XmFontList gui_motif_create_fontlist(XFontStruct *font);
XmFontList gui_motif_fontset2fontlist(XFontSet *fontset);
void gui_mch_enable_menu(int flag);
void gui_motif_set_mnemonics(int enable);
void gui_mch_add_menu(vimmenu_T *menu, int idx);
void gui_mch_toggle_tearoffs(int enable);
int gui_mch_text_area_extra_height(void);
void gui_mch_compute_menu_height(Widget id);
void gui_mch_add_menu_item(vimmenu_T *menu, int idx);
void gui_motif_update_mousemodel(vimmenu_T *menu);
void gui_mch_new_menu_colors(void);
void gui_mch_new_menu_font(void);
void gui_mch_new_tooltip_font(void);
void gui_mch_new_tooltip_colors(void);
void gui_mch_destroy_menu(vimmenu_T *menu);
void gui_mch_show_popupmenu(vimmenu_T *menu);
void gui_mch_def_colors(void);
void gui_mch_set_scrollbar_thumb(scrollbar_T *sb, long val, long size, long max);
void gui_mch_set_scrollbar_pos(scrollbar_T *sb, int x, int y, int w, int h);
void gui_mch_enable_scrollbar(scrollbar_T *sb, int flag);
void gui_mch_create_scrollbar(scrollbar_T *sb, int orient);
void gui_mch_destroy_scrollbar(scrollbar_T *sb);
void gui_mch_set_scrollbar_colors(scrollbar_T *sb);
Window gui_x11_get_wid(void);
char_u *gui_mch_browse(int saving, char_u *title, char_u *dflt, char_u *ext, char_u *initdir, char_u *filter);
int gui_mch_dialog(int type, char_u *title, char_u *message, char_u *button_names, int dfltbutton, char_u *textfield, int ex_cmd);
void gui_mch_enable_footer(int showit);
void gui_mch_set_footer(char_u *s);
void gui_mch_show_toolbar(int showit);
int gui_mch_compute_toolbar_height(void);
void motif_get_toolbar_colors(Pixel *bgp, Pixel *fgp, Pixel *bsp, Pixel *tsp, Pixel *hsp);
void gui_mch_show_tabline(int showit);
int gui_mch_showing_tabline(void);
void gui_mch_update_tabline(void);
void gui_mch_set_curtab(int nr);
void gui_motif_menu_fontlist(Widget id);
void gui_mch_find_dialog(exarg_T *eap);
void gui_mch_replace_dialog(exarg_T *eap);
void gui_motif_synch_fonts(void);
/* vim: set ft=c : */
