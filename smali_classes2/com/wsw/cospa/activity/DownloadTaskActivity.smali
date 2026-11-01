.class public Lcom/wsw/cospa/activity/DownloadTaskActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnItemClickListener;
.implements Lcom/wsw/cospa/listener/OnLongItemClickListener;
.implements Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;
.implements Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;
.implements Lcom/wsw/cospa/event/DownloadComicMessageObserver;


# instance fields
.field private break:Lcom/wsw/cospa/model/throw;

.field private catch:Lcom/wsw/cospa/bean/ComicInfoBean;

.field private class:Ljava/lang/String;

.field private const:Ljava/lang/String;

.field public deleteTaskView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field private final:Landroid/content/ServiceConnection;

.field private goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

.field private import:Landroid/support/v4/xh1;

.field public mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090298
    .end annotation
.end field

.field public mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public startOrPauseView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field

.field private super:Lcom/wsw/cospa/service/DownloadService;

.field private this:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private throw:Z

.field public tvDeleteTask:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090478
    .end annotation
.end field

.field public tvDownloadTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090481
    .end annotation
.end field

.field public tvSelectTask:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904af
    .end annotation
.end field

.field public tv_pause_all:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a2
    .end annotation
.end field

.field private while:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic a(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 4
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/Task;->setChecked(Z)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lcom/wsw/cospa/bean/ChapterListBean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->strictfp(Lcom/wsw/cospa/bean/ChapterListBean;Z)V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    return-object p0
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/service/DownloadService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    return-object p0
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lcom/wsw/cospa/service/DownloadService;)Lcom/wsw/cospa/service/DownloadService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    return-object p1
.end method

.method private synthetic implements(Landroid/support/v4/gp1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ne v0, v3, :cond_4

    .line 2
    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v3, v4, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->g(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->f(J)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->h(J)V

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-virtual {p1, v1}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v3, v4, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->i(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " progress : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DownloadTaskActivity"

    invoke-static {v5, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v3, v4, v0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->j(JII)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_6

    .line 15
    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 17
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->d(Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    :cond_7
    :goto_0
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/DownloadTaskActivity;Landroid/support/v4/gp1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->implements(Landroid/support/v4/gp1;)V

    return-void
.end method

.method private synthetic instanceof(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->const:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->protected(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->break:Lcom/wsw/cospa/model/throw;

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->const:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/throw;->final(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cimoc.intent.extra.EXTRA_COMIC_NAME"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cimoc.intent.extra.EXTRA_ID"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private n(Lcom/wsw/cospa/bean/Task;I)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/wsw/cospa/bean/ChapterListBean;

    move-object v1, v15

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getParentIdString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getParentNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getChapterId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object v8

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getVariable()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getStart()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getEnd()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v16, 0x1

    move-object/from16 v19, v15

    move/from16 v15, v16

    invoke-direct/range {v1 .. v18}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZJ)V

    .line 3
    iget-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->const:Ljava/lang/String;

    invoke-static {v1}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v1

    sget-object v2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v1, v2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v1

    .line 5
    invoke-static/range {p0 .. p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v2, Lcom/wsw/cospa/activity/DownloadTaskActivity$for;

    move/from16 v3, p2

    move-object/from16 v4, v19

    invoke-direct {v2, v0, v4, v3}, Lcom/wsw/cospa/activity/DownloadTaskActivity$for;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    .line 6
    invoke-interface {v1, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/DownloadTaskActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->a(IZ)V

    return-void
.end method

.method private o(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setNoteUrl(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setSource(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object p0
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import:Landroid/support/v4/xh1;

    return-object p0
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/DownloadTaskActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->instanceof(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->transient(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->synchronized(Ljava/util/List;)V

    return-void
.end method

.method private strictfp(Lcom/wsw/cospa/bean/ChapterListBean;Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->break:Lcom/wsw/cospa/model/throw;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getTid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/model/throw;->if(J)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicContentImgBean;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIsDownload(Z)V

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setLocalPath(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->package(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setDownload(Ljava/lang/Long;)V

    .line 8
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/dao/DatabaseHelper;->m(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 9
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/wsw/cospa/model/final;->case(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/DownloadTaskActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    return p0
.end method

.method private synthetic synchronized(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->o(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/DownloadTaskActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    return p1
.end method

.method private synthetic transient(Ljava/util/List;Z)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->break:Lcom/wsw/cospa/model/throw;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getTid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/model/throw;->if(J)V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 6
    invoke-virtual {v4, v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setIsDownload(Z)V

    .line 7
    invoke-virtual {v4, v1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->setLocalPath(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/dao/DatabaseHelper;->package(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setDownload(Ljava/lang/Long;)V

    .line 10
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/dao/DatabaseHelper;->m(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 11
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/wsw/cospa/model/final;->case(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private volatile(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    new-instance v1, Landroid/support/v4/y20;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/y20;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->instanceof(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/u20;

    invoke-direct {v0, p0}, Landroid/support/v4/u20;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/w20;

    invoke-direct {v1, p0}, Landroid/support/v4/w20;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity$do;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public case()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cimoc.intent.extra.EXTRA_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->const:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->this:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->this:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->setOnRemoveSuccessListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->setOnDownloadCompleteListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;)V

    .line 16
    const-class v0, Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p0, v0}, Landroid/support/v4/ix1;->do(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->while:Z

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->b()V

    return-void
.end method

.method public continue()V
    .locals 3

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity$if;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->final:Landroid/content/ServiceConnection;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->final:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->new(ILjava/util/Collection;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->throw(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->catch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->break()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->deleteTaskView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/Task;

    .line 8
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 13
    iput-boolean v3, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_4

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    invoke-static {}, Landroid/support/v4/lm1;->case()Landroid/support/v4/lm1;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/lm1;->if([Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public f(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public i(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->c(I)V

    :cond_0
    return-void
.end method

.method public interface(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import:Landroid/support/v4/xh1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2
    new-instance v0, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;

    invoke-direct {v0, p0, p1, p2}, Lcom/wsw/cospa/activity/DownloadTaskActivity$try;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Ljava/util/List;Z)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;

    invoke-direct {v1, p0, p2, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity$new;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;ZLjava/util/List;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public j(JII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p4}, Lcom/wsw/cospa/bean/Task;->setMax(I)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/Task;->setProgress(I)V

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-ne p4, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 6
    :goto_0
    invoke-virtual {p2, p3}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->c(I)V

    :cond_2
    return-void
.end method

.method public k()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/service/DownloadService;->import(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public m()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    if-eq v2, v3, :cond_0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_1

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {v1, v4}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/wsw/cospa/service/DownloadService;->import(J)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v1, v3}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    sget-boolean v2, Lcom/wsw/cospa/service/DownloadService;->throw:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    if-eqz v2, :cond_2

    .line 11
    invoke-static {p0, v1}, Lcom/wsw/cospa/service/DownloadService;->final(Landroid/content/Context;Lcom/wsw/cospa/bean/Task;)Landroid/content/Intent;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/service/DownloadService;->native(Landroid/content/Intent;)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {p0, v1}, Lcom/wsw/cospa/service/DownloadService;->final(Landroid/content/Context;Lcom/wsw/cospa/bean/Task;)Landroid/content/Intent;

    move-result-object v1

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    :goto_1
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->final:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002f

    return v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->catch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->break()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->deleteTaskView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/Task;

    .line 8
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->throw:Z

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_1

    .line 17
    :cond_4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCheckedChanged(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    new-instance v1, Landroid/support/v4/x20;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/x20;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 6
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/Task;->setChecked(Z)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvSelectTask:Landroid/widget/TextView;

    const-string p2, "\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_5

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvSelectTask:Landroid/widget/TextView;

    const-string p2, "\u53d6\u6d88\u5168\u9009"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v4, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v4}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/bean/Task;

    .line 5
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/Task;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 8
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 9
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 10
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/Task;->setChecked(Z)V

    .line 11
    iget-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    .line 13
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 14
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 15
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setChecked(Z)V

    .line 16
    iget-object v2, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->k()V

    goto/16 :goto_5

    .line 18
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->m()V

    goto/16 :goto_5

    .line 19
    :sswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v4, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v4}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/Task;

    .line 21
    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    new-instance v6, Lcom/wsw/cospa/bean/ChapterListBean;

    move-object v7, v6

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result v9

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getParentIdString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getParentNameString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getChapterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object v14

    .line 23
    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getVariable()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getTag()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getStart()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getEnd()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZJ)V

    .line 24
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 26
    iget-object v4, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v4}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->interface(Ljava/util/List;Z)V

    goto :goto_5

    :cond_6
    const-string v1, "\u8bf7\u9009\u62e9\u8981\u5220\u9664\u7684\u7ae0\u8282"

    .line 27
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090478 -> :sswitch_3
        0x7f090481 -> :sswitch_2
        0x7f0904a2 -> :sswitch_1
        0x7f0904af -> :sswitch_0
    .end sparse-switch
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ep1;->new()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->final:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import:Landroid/support/v4/xh1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import:Landroid/support/v4/xh1;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public varargs onDownloadComicMessage([Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Landroid/support/v4/gp1;

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-ne v1, v4, :cond_4

    .line 3
    invoke-virtual {p1, v3}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_2

    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    const/4 v3, 0x5

    if-eq v4, v3, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->g(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->f(J)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->h(J)V

    goto/16 :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->i(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v1

    const/16 v4, 0x16

    if-ne v1, v4, :cond_5

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " progress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownloadTaskActivity"

    invoke-static {v5, v4}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v3}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->j(JII)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_6

    .line 16
    invoke-virtual {p1, v3}, Landroid/support/v4/gp1;->if(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 18
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->d(Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    :cond_7
    :goto_0
    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else(I)Lcom/wsw/cospa/bean/Task;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    if-eqz p1, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/wsw/cospa/service/DownloadService;->import(J)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9
    sget-boolean p1, Lcom/wsw/cospa/service/DownloadService;->throw:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0, v0}, Lcom/wsw/cospa/service/DownloadService;->final(Landroid/content/Context;Lcom/wsw/cospa/bean/Task;)Landroid/content/Intent;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->super:Lcom/wsw/cospa/service/DownloadService;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/service/DownloadService;->native(Landroid/content/Intent;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p0, v0}, Lcom/wsw/cospa/service/DownloadService;->final(Landroid/content/Context;Lcom/wsw/cospa/bean/Task;)Landroid/content/Intent;

    move-result-object p1

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->final:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->n(Lcom/wsw/cospa/bean/Task;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->import()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->deleteTaskView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x102002c

    if-ne v1, v3, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->onBackPressed()V

    return v2

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f090423

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->while()V

    return v2

    .line 5
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f09041f

    if-ne v1, v3, :cond_5

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v3}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->getItemCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v3, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v3}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/Task;

    .line 8
    new-instance v15, Lcom/wsw/cospa/bean/ChapterListBean;

    move-object v5, v15

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result v7

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getParentIdString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getParentNameString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getChapterId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getVariable()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getTag()Ljava/lang/String;

    move-result-object v16

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getStart()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getEnd()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-direct/range {v5 .. v22}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZJ)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    iget-object v2, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->goto:Lcom/wsw/cospa/adapter/DownloadTaskAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->interface(Ljava/util/List;Z)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->interface(Ljava/util/List;Z)V

    :goto_2
    return v2

    .line 14
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f090108

    if-ne v1, v3, :cond_6

    .line 15
    iget-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->const:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    .line 16
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onRemoveSuccess()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->protected()V

    .line 3
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    return-void
.end method

.method public protected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v1

    const-class v2, Landroid/support/v4/gp1;

    invoke-virtual {v1, v2}, Landroid/support/v4/ep1;->try(Ljava/lang/Class;)Lio/reactivex/new;

    move-result-object v1

    sget-object v2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    invoke-virtual {v1, v2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v1

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v2, Landroid/support/v4/v20;

    invoke-direct {v2, p0}, Landroid/support/v4/v20;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V

    .line 3
    invoke-interface {v1, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cimoc.intent.extra.EXTRA_COMIC_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->class:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->class:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvSelectTask:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDeleteTask:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDownloadTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tv_pause_all:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->break:Lcom/wsw/cospa/model/throw;

    .line 9
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5220\u9664\u4e0b\u8f7d\u8bb0\u5f55\uff01"

    .line 11
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->import:Landroid/support/v4/xh1;

    return-void
.end method
