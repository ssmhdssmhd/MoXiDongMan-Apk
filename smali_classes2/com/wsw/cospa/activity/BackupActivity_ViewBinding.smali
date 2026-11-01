.class public Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/BackupActivity;

.field private for:Landroid/view/View;

.field private if:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/BackupActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/BackupActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/BackupActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/BackupActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/wsw/cospa/widget/view/CheckBoxPreference;

    const v1, 0x7f0900a4

    const-string v2, "field \'mSaveComicAuto\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/CheckBoxPreference;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->mSaveComicAuto:Lcom/wsw/cospa/widget/view/CheckBoxPreference;

    .line 6
    const-class v0, Lcom/wsw/cospa/widget/view/Option;

    const v1, 0x7f0904c9

    const-string v2, "field \'tvWebdavUrl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/Option;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    .line 7
    const-class v0, Lcom/wsw/cospa/widget/view/Option;

    const v1, 0x7f0904c5

    const-string v2, "field \'tvWebdavAcccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/Option;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    .line 8
    const-class v0, Lcom/wsw/cospa/widget/view/Option;

    const v1, 0x7f0904c6

    const-string v2, "field \'tvWebdavPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/Option;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    .line 9
    const-class v0, Lcom/wsw/cospa/widget/view/Option;

    const v1, 0x7f0904c7

    const-string v2, "field \'tvWebdavRestore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/Option;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavRestore:Lcom/wsw/cospa/widget/view/Option;

    .line 10
    const-class v0, Lcom/wsw/cospa/widget/view/Option;

    const v1, 0x7f0904c8

    const-string v2, "field \'tvWebdavStep\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/Option;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavStep:Lcom/wsw/cospa/widget/view/Option;

    .line 11
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v0, 0x7f0900a3

    const-string v1, "method \'onSaveComicClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->if:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$do;-><init>(Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;Lcom/wsw/cospa/activity/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a2

    const-string v1, "method \'onRestoreComicClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->for:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$if;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding$if;-><init>(Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;Lcom/wsw/cospa/activity/BackupActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/BackupActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/BackupActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->mSaveComicAuto:Lcom/wsw/cospa/widget/view/CheckBoxPreference;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavRestore:Lcom/wsw/cospa/widget/view/Option;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavStep:Lcom/wsw/cospa/widget/view/Option;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->if:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->if:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->for:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/activity/BackupActivity_ViewBinding;->for:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
