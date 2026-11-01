.class public Lcom/wsw/cospa/activity/ComicSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/ComicSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicSettingActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/ComicSettingActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/ComicSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/ComicSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicSettingActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f09040a

    const-string v2, "field \'switchToDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchToDetail:Landroid/widget/Switch;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09028d

    const-string v2, "field \'llthread\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->llthread:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904ba

    const-string v2, "field \'tvThreadNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvThreadNum:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090280

    const-string v2, "field \'llDownloadThreed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->llDownloadThreed:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090480

    const-string v2, "field \'tvDownloadThreed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvDownloadThreed:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090409

    const-string v2, "field \'switchSwipeBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchSwipeBack:Landroid/widget/Switch;

    .line 11
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903fe

    const-string v2, "field \'switchNotch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchNotch:Landroid/widget/Switch;

    .line 12
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090403

    const-string v2, "field \'switchReaderPaging\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchReaderPaging:Landroid/widget/Switch;

    .line 13
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f09040d

    const-string v2, "field \'switchWhiteEdge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchWhiteEdge:Landroid/widget/Switch;

    .line 14
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090400

    const-string v2, "field \'switchPagingReverse\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchPagingReverse:Landroid/widget/Switch;

    .line 15
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f3

    const-string v2, "field \'switchFindSort\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchFindSort:Landroid/widget/Switch;

    .line 16
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090406

    const-string v2, "field \'switchShowAllFind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchShowAllFind:Landroid/widget/Switch;

    .line 17
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f7

    const-string v2, "field \'switch_hide_recommend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_recommend:Landroid/widget/Switch;

    .line 18
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f4

    const-string v2, "field \'switch_hide_find\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_find:Landroid/widget/Switch;

    .line 19
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f5

    const-string v2, "field \'switch_hide_history\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_history:Landroid/widget/Switch;

    .line 20
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f6

    const-string v2, "field \'switch_hide_local\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_local:Landroid/widget/Switch;

    .line 21
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090401

    const-string v2, "field \'switch_quick_page\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_quick_page:Landroid/widget/Switch;

    .line 22
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903ed

    const-string v2, "field \'switch_double_click_zoom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_double_click_zoom:Landroid/widget/Switch;

    .line 23
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f8

    const-string v2, "field \'switch_join_shelf_tip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_join_shelf_tip:Landroid/widget/Switch;

    .line 24
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903ff

    const-string v2, "field \'switch_original_image\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_original_image:Landroid/widget/Switch;

    .line 25
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f2

    const-string v2, "field \'switch_find_show_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_find_show_mode:Landroid/widget/Switch;

    .line 26
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903e8

    const-string v2, "field \'switch_auto_refresh_comic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_auto_refresh_comic:Landroid/widget/Switch;

    .line 27
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903ec

    const-string v2, "field \'switch_dns_parser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_dns_parser:Landroid/widget/Switch;

    .line 28
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903f1

    const-string v2, "field \'switch_file_browser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_file_browser:Landroid/widget/Switch;

    .line 29
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f0903ef

    const-string v2, "field \'switch_exit_clean_cache\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_exit_clean_cache:Landroid/widget/Switch;

    .line 30
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090288

    const-string v2, "field \'llRefreshThreed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->llRefreshThreed:Landroid/widget/LinearLayout;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a6

    const-string v2, "field \'tvRefreshThreed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvRefreshThreed:Landroid/widget/TextView;

    .line 32
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ComicSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchToDetail:Landroid/widget/Switch;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llthread:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvThreadNum:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llDownloadThreed:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvDownloadThreed:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchSwipeBack:Landroid/widget/Switch;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchNotch:Landroid/widget/Switch;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchReaderPaging:Landroid/widget/Switch;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchWhiteEdge:Landroid/widget/Switch;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchPagingReverse:Landroid/widget/Switch;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchFindSort:Landroid/widget/Switch;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switchShowAllFind:Landroid/widget/Switch;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_recommend:Landroid/widget/Switch;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_find:Landroid/widget/Switch;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_history:Landroid/widget/Switch;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_hide_local:Landroid/widget/Switch;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_quick_page:Landroid/widget/Switch;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_double_click_zoom:Landroid/widget/Switch;

    .line 22
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_join_shelf_tip:Landroid/widget/Switch;

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_original_image:Landroid/widget/Switch;

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_find_show_mode:Landroid/widget/Switch;

    .line 25
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_auto_refresh_comic:Landroid/widget/Switch;

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_dns_parser:Landroid/widget/Switch;

    .line 27
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_file_browser:Landroid/widget/Switch;

    .line 28
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->switch_exit_clean_cache:Landroid/widget/Switch;

    .line 29
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->llRefreshThreed:Landroid/widget/LinearLayout;

    .line 30
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->tvRefreshThreed:Landroid/widget/TextView;

    .line 31
    iput-object v1, v0, Lcom/wsw/cospa/activity/ComicSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
