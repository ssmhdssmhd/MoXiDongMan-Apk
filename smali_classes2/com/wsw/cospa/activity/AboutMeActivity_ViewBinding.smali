.class public Lcom/wsw/cospa/activity/AboutMeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/AboutMeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AboutMeActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/AboutMeActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/AboutMeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/AboutMeActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/AboutMeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AboutMeActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090388

    const-string v2, "field \'sdvLauncher\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->sdvLauncher:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904c4

    const-string v2, "field \'tvVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->tvVersion:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034b

    const-string v2, "field \'qqgrouppay1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay1:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034c

    const-string v2, "field \'qqgrouppay2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay2:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090343

    const-string v2, "field \'qqgroup1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup1:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090344

    const-string v2, "field \'qqgroup2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup2:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090345

    const-string v2, "field \'qqgroup3\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup3:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090346

    const-string v2, "field \'qqgroup4\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup4:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090347

    const-string v2, "field \'qqgroup5\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup5:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090348

    const-string v2, "field \'qqgroup6\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup6:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090349

    const-string v2, "field \'qqgroup7\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup7:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09034a

    const-string v2, "field \'qqgroup8\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup8:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090342

    const-string v2, "field \'qqchannel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->qqchannel:Landroid/widget/TextView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a8

    const-string v2, "field \'tv_rule\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->tv_rule:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090148

    const-string v2, "field \'doutuApp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->doutuApp:Landroid/widget/LinearLayout;

    .line 20
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904f7

    const-string v2, "field \'yueduApp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->yueduApp:Landroid/widget/LinearLayout;

    .line 21
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904d5

    const-string v2, "field \'uninstallApp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->uninstallApp:Landroid/widget/LinearLayout;

    .line 22
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090260

    const-string v2, "field \'likeApp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->likeApp:Landroid/widget/LinearLayout;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904f6

    const-string v2, "field \'xinfangyuanApp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->xinfangyuanApp:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0902b0

    const-string v2, "field \'mashanglai_app\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->mashanglai_app:Landroid/widget/LinearLayout;

    .line 25
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904f9

    const-string v2, "field \'zhixun_app\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/AboutMeActivity;->zhixun_app:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AboutMeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/AboutMeActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AboutMeActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->sdvLauncher:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->tvVersion:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay1:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay2:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup1:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup2:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup3:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup4:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup5:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup6:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup7:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup8:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqchannel:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->tv_rule:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->doutuApp:Landroid/widget/LinearLayout;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->yueduApp:Landroid/widget/LinearLayout;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->uninstallApp:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->likeApp:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->xinfangyuanApp:Landroid/widget/LinearLayout;

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->mashanglai_app:Landroid/widget/LinearLayout;

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/activity/AboutMeActivity;->zhixun_app:Landroid/widget/LinearLayout;

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
