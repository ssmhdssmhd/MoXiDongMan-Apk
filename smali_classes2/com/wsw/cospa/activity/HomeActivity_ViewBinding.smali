.class public Lcom/wsw/cospa/activity/HomeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/HomeActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/HomeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/HomeActivity;

    .line 4
    const-class v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x7f090143

    const-string v2, "field \'dlLeftMain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 5
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f09003d

    const-string v2, "field \'abl_main\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->abl_main:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090427

    const-string v2, "field \'tbToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090496

    const-string v2, "field \'tvLocalComic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvLocalComic:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047f

    const-string v2, "field \'tvDownloadTask\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvDownloadTask:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090291

    const-string v2, "field \'ll_version\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->ll_version:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c4

    const-string v2, "field \'tvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvVersion:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045b

    const-string v2, "field \'tvAbout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvAbout:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b0

    const-string v2, "field \'tvSetting\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvSetting:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09046e

    const-string v2, "field \'tvComicManager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvComicManager:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090485

    const-string v2, "field \'tv_feedback\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tv_feedback:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09047b

    const-string v2, "field \'tv_donate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tv_donate:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b1

    const-string v2, "field \'tv_shop\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tv_shop:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090242

    const-string v2, "field \'iv_header\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    const v0, 0x7f0903d7

    const-string v1, "field \'statusBarView\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->statusBarView:Landroid/view/View;

    .line 19
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f090389

    const-string v2, "field \'searchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c2

    const-string v2, "field \'tvToolbarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    .line 21
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b4

    const-string v2, "field \'tvSourceName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->tvSourceName:Landroid/widget/TextView;

    .line 22
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090232

    const-string v2, "field \'ivArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->ivArrow:Landroid/widget/ImageView;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903b6

    const-string v2, "field \'sourceNameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Lcom/wsw/cospa/widget/view/SwitchButton;

    const v1, 0x7f0903e5

    const-string v2, "field \'swNightTheme\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/SwitchButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->swNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903e4

    const-string v2, "field \'swNightModelText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->swNightModelText:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902fc

    const-string v2, "field \'nightModelView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->nightModelView:Landroid/widget/RelativeLayout;

    .line 27
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f090117

    const-string v2, "field \'contentView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/HomeActivity;->contentView:Landroid/widget/FrameLayout;

    .line 28
    const-class v0, Lcom/flyco/tablayout/CommonTabLayout;

    const v1, 0x7f09029e

    const-string v2, "field \'mCommonTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyco/tablayout/CommonTabLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/HomeActivity;->mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/HomeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/HomeActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->abl_main:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvLocalComic:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvDownloadTask:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->ll_version:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvVersion:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvAbout:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvSetting:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvComicManager:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tv_feedback:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tv_donate:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tv_shop:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->statusBarView:Landroid/view/View;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->tvSourceName:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->ivArrow:Landroid/widget/ImageView;

    .line 22
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->swNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->swNightModelText:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->nightModelView:Landroid/widget/RelativeLayout;

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->contentView:Landroid/widget/FrameLayout;

    .line 27
    iput-object v1, v0, Lcom/wsw/cospa/activity/HomeActivity;->mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
