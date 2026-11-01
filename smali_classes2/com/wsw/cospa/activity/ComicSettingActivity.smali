.class public Lcom/wsw/cospa/activity/ComicSettingActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId",
        "UseSwitchCompatOrMaterialCode"
    }
.end annotation


# instance fields
.field public llDownloadThreed:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090280
    .end annotation
.end field

.field public llRefreshThreed:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090288
    .end annotation
.end field

.field public llthread:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028d
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field public switchFindSort:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f3
    .end annotation
.end field

.field public switchNotch:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903fe
    .end annotation
.end field

.field public switchPagingReverse:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090400
    .end annotation
.end field

.field public switchReaderPaging:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090403
    .end annotation
.end field

.field public switchShowAllFind:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090406
    .end annotation
.end field

.field public switchSwipeBack:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090409
    .end annotation
.end field

.field public switchToDetail:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040a
    .end annotation
.end field

.field public switchWhiteEdge:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040d
    .end annotation
.end field

.field public switch_auto_refresh_comic:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e8
    .end annotation
.end field

.field public switch_dns_parser:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ec
    .end annotation
.end field

.field public switch_double_click_zoom:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ed
    .end annotation
.end field

.field public switch_exit_clean_cache:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ef
    .end annotation
.end field

.field public switch_file_browser:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f1
    .end annotation
.end field

.field public switch_find_show_mode:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f2
    .end annotation
.end field

.field public switch_hide_find:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f4
    .end annotation
.end field

.field public switch_hide_history:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f5
    .end annotation
.end field

.field public switch_hide_local:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f6
    .end annotation
.end field

.field public switch_hide_recommend:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f7
    .end annotation
.end field

.field public switch_join_shelf_tip:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f8
    .end annotation
.end field

.field public switch_original_image:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ff
    .end annotation
.end field

.field public switch_quick_page:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090401
    .end annotation
.end field

.field public tvDownloadThreed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090480
    .end annotation
.end field

.field public tvRefreshThreed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a6
    .end annotation
.end field

.field public tvThreadNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ba
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static default(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ComicSettingActivity;Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicSettingActivity;->return(Landroid/widget/NumberPicker;II)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ComicSettingActivity;Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch(Landroid/widget/NumberPicker;II)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/ComicSettingActivity;Landroid/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ComicSettingActivity;->static(Landroid/widget/NumberPicker;II)V

    return-void
.end method

.method private synthetic return(Landroid/widget/NumberPicker;II)V
    .locals 1

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvThreadNum:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "search_thread_num"

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private synthetic static(Landroid/widget/NumberPicker;II)V
    .locals 1

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvDownloadThreed:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "download_thread_num"

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private synthetic switch(Landroid/widget/NumberPicker;II)V
    .locals 1

    if-lez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvRefreshThreed:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "refresh_thread_num"

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private throws()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002c

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_reader_white_edge"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "shelf_go_detail_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "swipe_back_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_show_all_find"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_reader_paging"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "quick_page_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_reader_paging_reverse"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v1, "load_original_image_key"

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 10
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :pswitch_9
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "notch_adaptive_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 12
    :pswitch_a
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "join_shelf_tip_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 13
    :pswitch_b
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_hide_recommend_list"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicSettingActivity;->throws()V

    goto/16 :goto_0

    .line 15
    :pswitch_c
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_hide_local_list"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 16
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicSettingActivity;->throws()V

    goto/16 :goto_0

    .line 17
    :pswitch_d
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_hide_history_list"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 18
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicSettingActivity;->throws()V

    goto/16 :goto_0

    .line 19
    :pswitch_e
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_hide_find_list"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 20
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicSettingActivity;->throws()V

    goto :goto_0

    .line 21
    :pswitch_f
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "pref_find_letter_sort"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto :goto_0

    .line 22
    :pswitch_10
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v1, "find_comic_view_mode_key"

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 23
    invoke-static {}, Landroid/support/v4/o32;->case()Landroid/support/v4/o32;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p1, v1}, Landroid/support/v4/o32;->if([Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :pswitch_11
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "HIDE_DOT_BEGIN_FILE_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto :goto_0

    .line 25
    :pswitch_12
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "EXIT_APP_CLEAN_CACHE_KEY"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto :goto_0

    .line 26
    :pswitch_13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "double_click_zoom_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto :goto_0

    .line 27
    :pswitch_14
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "open_dns_parser_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 28
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 29
    :pswitch_15
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v1, "auto_refresh_comic_shelf"

    invoke-virtual {p1, v1, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 30
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0903e8
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090280

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    const v0, 0x7f090288

    if-eq p1, v0, :cond_1

    const v0, 0x7f09028d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const/16 v0, 0x20

    const-string v1, "search_thread_num"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v7

    .line 3
    new-instance p1, Lcom/wsw/cospa/widget/NumberPickerDialog;

    new-instance v4, Landroid/support/v4/go;

    invoke-direct {v4, p0}, Landroid/support/v4/go;-><init>(Lcom/wsw/cospa/activity/ComicSettingActivity;)V

    const/16 v5, 0x40

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/NumberPickerDialog;-><init>(Landroid/content/Context;Landroid/widget/NumberPicker$OnValueChangeListener;III)V

    .line 4
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "refresh_thread_num"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v7

    .line 6
    new-instance p1, Lcom/wsw/cospa/widget/NumberPickerDialog;

    new-instance v4, Landroid/support/v4/ho;

    invoke-direct {v4, p0}, Landroid/support/v4/ho;-><init>(Lcom/wsw/cospa/activity/ComicSettingActivity;)V

    const/16 v5, 0xa

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/NumberPickerDialog;-><init>(Landroid/content/Context;Landroid/widget/NumberPicker$OnValueChangeListener;III)V

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "download_thread_num"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v7

    .line 9
    new-instance p1, Lcom/wsw/cospa/widget/NumberPickerDialog;

    new-instance v4, Landroid/support/v4/io;

    invoke-direct {v4, p0}, Landroid/support/v4/io;-><init>(Lcom/wsw/cospa/activity/ComicSettingActivity;)V

    const/16 v5, 0xa

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/NumberPickerDialog;-><init>(Landroid/content/Context;Landroid/widget/NumberPicker$OnValueChangeListener;III)V

    .line 10
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchToDetail:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "shelf_go_detail_key"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchToDetail:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchSwipeBack:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchSwipeBack:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "swipe_back_key"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchNotch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchNotch:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "notch_adaptive_key"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchReaderPaging:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchWhiteEdge:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchPagingReverse:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchWhiteEdge:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_reader_white_edge"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchReaderPaging:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_reader_paging"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchPagingReverse:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_reader_paging_reverse"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchFindSort:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_find_letter_sort"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchFindSort:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchShowAllFind:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_show_all_find"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchShowAllFind:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_recommend:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_hide_recommend_list"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_recommend:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_find:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_hide_find_list"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_find:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_history:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_hide_history_list"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_history:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_local:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "pref_hide_local_list"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_local:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvThreadNum:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v4

    const-string v5, "search_thread_num"

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llthread:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvDownloadThreed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    const-string v6, "download_thread_num"

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llDownloadThreed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvRefreshThreed:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    const-string v6, "refresh_thread_num"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llRefreshThreed:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_quick_page:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_quick_page:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "quick_page_key"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_double_click_zoom:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_double_click_zoom:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "double_click_zoom_key"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 42
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_join_shelf_tip:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_join_shelf_tip:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "join_shelf_tip_key"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 44
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_original_image:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_original_image:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "load_original_image_key"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_find_show_mode:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_find_show_mode:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "find_comic_view_mode_key"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_auto_refresh_comic:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_auto_refresh_comic:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "auto_refresh_comic_shelf"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_dns_parser:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_dns_parser:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "open_dns_parser_key"

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_file_browser:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_file_browser:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "HIDE_DOT_BEGIN_FILE_KEY"

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_exit_clean_cache:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_exit_clean_cache:Landroid/widget/Switch;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "EXIT_APP_CLEAN_CACHE_KEY"

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
