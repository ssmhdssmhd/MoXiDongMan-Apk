.class public Lcom/wsw/cospa/activity/ComicGroupManagerActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;,
        Lcom/wsw/cospa/activity/ComicGroupManagerActivity$new;
    }
.end annotation


# static fields
.field public static final catch:I = 0x2777


# instance fields
.field private break:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field private goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

.field public ll_action_button:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
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

.field private this:J

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field

.field public tv_delete_comic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090477
    .end annotation
.end field

.field public tv_move_shelf:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049a
    .end annotation
.end field

.field public tv_select_comic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ae
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic extends(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 5
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->getSerialNumber()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->setSerialNumber(Ljava/lang/Integer;)V

    .line 7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 10
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic finally(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-wide v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->this:J

    const-string v2, "groupId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->package(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->extends(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic package(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p2, p5, :cond_0

    .line 4
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 5
    invoke-virtual {p0, p5, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->switch(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v0, p5}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->catch(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->try()V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->ll_action_button:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :cond_1
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic private(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->finally(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->private(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)Lcom/wsw/cospa/adapter/GroupManagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    return-object p0
.end method

.method public static strictfp(Landroid/content/Context;J)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupId"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static volatile(Landroidx/fragment/app/Fragment;J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupId"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x2777

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public abstract(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 7
    iget-object v5, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->break:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 15
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v3, "\u9009\u62e9\u4e66\u67b6"

    .line 16
    invoke-virtual {v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 17
    new-instance v3, Landroid/support/v4/mn;

    invoke-direct {v3, p0, v1, v2, p1}, Landroid/support/v4/mn;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 18
    iget-wide v2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->this:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    long-to-int p1, v2

    .line 19
    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    :cond_4
    return-void
.end method

.method public case()V
    .locals 3

    .line 1
    new-instance v0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->break:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->class(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->class(Z)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    new-instance v1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$do;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;)V

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$new;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-direct {v1, v2}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$new;-><init>(Lcom/wsw/cospa/adapter/GroupManagerAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    new-instance v2, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$if;

    invoke-direct {v2, p0, v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$if;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->const(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->continue()V

    return-void
.end method

.method public continue()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->this:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->break:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-wide v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->this:J

    invoke-static {v1, v2, v0}, Lcom/wsw/cospa/dao/do;->default(JI)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/pn;

    invoke-direct {v1, p0}, Landroid/support/v4/pn;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public default(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    const/4 v2, 0x0

    const-string v3, "\u662f\u5426\u5220\u9664\u5f53\u524d\u9009\u4e2d\u7684\u6f2b\u753b\uff1f"

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;

    invoke-direct {v2, p0, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$for;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Ljava/util/List;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002a

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->try()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->throws()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 4
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f090477

    if-eq p1, v2, :cond_5

    const v2, 0x7f09049a

    if-eq p1, v2, :cond_4

    const v2, 0x7f0904ae

    if-eq p1, v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_6

    const/4 p1, 0x0

    .line 13
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 15
    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->goto:Lcom/wsw/cospa/adapter/GroupManagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->abstract(Ljava/util/List;)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->default(Ljava/util/List;)V

    :cond_6
    :goto_3
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public switch(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/wsw/cospa/dao/do;->q(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    return-void
.end method

.method public this()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tv_select_comic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tv_delete_comic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tv_move_shelf:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groupId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->this:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->break:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public throws()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/nn;

    invoke-direct {v0, p0}, Landroid/support/v4/nn;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/on;

    invoke-direct {v1, p0}, Landroid/support/v4/on;-><init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
