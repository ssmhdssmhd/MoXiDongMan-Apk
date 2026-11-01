.class public Lcom/wsw/cospa/activity/ChapterActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/ChapterActivity$for;
    }
.end annotation


# static fields
.field private static final import:I = 0x2712

.field private static final throw:Ljava/lang/String; = "ChapterActivity"

.field public static final while:I = 0x65


# instance fields
.field private break:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private catch:Lcom/wsw/cospa/bean/ComicInfoBean;

.field private class:Ljava/lang/Boolean;

.field private const:Landroid/os/Handler;

.field private final:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private goto:I

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a9
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

.field private super:Landroid/content/ServiceConnection;

.field private this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

.field public tvDonwloadChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047c
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->goto:I

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->class:Ljava/lang/Boolean;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->const:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/wsw/cospa/activity/ChapterActivity$for;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ChapterActivity$for;-><init>(Lcom/wsw/cospa/activity/ChapterActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->final:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 6
    new-instance v0, Lcom/wsw/cospa/activity/ChapterActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ChapterActivity$if;-><init>(Lcom/wsw/cospa/activity/ChapterActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->super:Landroid/content/ServiceConnection;

    return-void
.end method

.method private synthetic abstract(Ljava/util/List;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->package(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/model/throw;->goto(Lcom/wsw/cospa/bean/Task;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ChapterListBean;->setDownload(Z)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setDownload(Ljava/lang/Long;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 10
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->n(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 11
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->l(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 13
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object p1

    new-instance v1, Landroid/support/v4/gp1;

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/CartoonApplication;->new()Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-static {p1, v1, p2, v2}, Lcom/wsw/cospa/model/final;->return(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/util/List;Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 15
    invoke-interface {p3, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic continue(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Switcher;

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ChapterListBean;->isDownload()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Switcher;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u672a\u9009\u62e9\u7ae0\u8282"

    .line 6
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "package:"

    if-lt v0, v1, :cond_4

    .line 8
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x2712

    .line 11
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->default(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 13
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->default(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->default(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private finally()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 5
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/activity/ChapterActivity;->extends(Lcom/wsw/cospa/bean/ChapterListBean;)Z

    move-result v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/ChapterListBean;->setDownload(Z)V

    .line 7
    new-instance v4, Lcom/wsw/cospa/bean/Switcher;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ChapterListBean;->isDownload()Z

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/wsw/cospa/bean/Switcher;-><init>(Ljava/lang/Object;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private implements(Ljava/util/List;)V
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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Switcher;

    .line 5
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ChapterListBean;->setDownload(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/util/List;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ChapterActivity;->abstract(Ljava/util/List;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static interface(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ChapterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->continue(Landroid/view/View;)V

    return-void
.end method

.method private package(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ChapterListBean;->setDownload(Z)V

    .line 4
    new-instance v2, Lcom/wsw/cospa/bean/Task;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/wsw/cospa/bean/Task;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setName(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setSource(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setKey(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setNoteUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setDurChapterIndex(I)V

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentIdString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setParentIdString(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getParentNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setParentNameString(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getChapterId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setChapterId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setDurChapterUrl(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setDurChapterName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setNextChapterUrl(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setTag(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getStart()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setStart(Ljava/lang/Long;)V

    .line 18
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getEnd()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setEnd(Ljava/lang/Long;)V

    .line 19
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getVariable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/Task;->setVariable(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/bean/Task;->setComicInfoUrl(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 21
    invoke-virtual {v2, v1}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private private()Z
    .locals 3

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.wsw.cospa.service.DownloadService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static protected(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "comic_shelf"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/ChapterActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->const:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/ChapterActivity;)Lcom/wsw/cospa/adapter/DownloadChapterAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    return-object p0
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/ChapterActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object p0
.end method

.method public static synthetic switch()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/activity/ChapterActivity;->throw:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->class:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static transient(Landroid/app/Activity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "comic_shelf"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static volatile(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int v3, v2, p1

    sub-int/2addr v3, v0

    .line 4
    div-int/2addr v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    mul-int v4, v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int v5, v0, p1

    if-le v5, v2, :cond_1

    move v5, v2

    .line 5
    :cond_1
    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()V
    .locals 5

    .line 1
    new-instance v0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterActivity;->finally()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;-><init>(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterActivity;->final:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public default(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/kh;

    invoke-direct {v0, p0, p2, p1}, Landroid/support/v4/kh;-><init>(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object p2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, p2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance p2, Lcom/wsw/cospa/activity/ChapterActivity$do;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/ChapterActivity$do;-><init>(Lcom/wsw/cospa/activity/ChapterActivity;)V

    .line 4
    invoke-interface {p1, p2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public extends(Lcom/wsw/cospa/bean/ChapterListBean;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/throw;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0027

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2712

    if-ne p1, p2, :cond_3

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_3

    .line 3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/Switcher;

    .line 7
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->isDownload()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->default(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u8bf7\u5f00\u542f\u5b58\u50a8\u6743\u9650\uff01"

    .line 11
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterActivity;->private()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->class:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->super:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ep1;->new()V

    .line 4
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_6

    const v1, 0x7f0900eb

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900ed

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->this()V

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Switcher;

    .line 5
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Switcher;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Switcher;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/Switcher;->setEnable(Z)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->getItemCount()I

    move-result v1

    if-gt v0, v1, :cond_5

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Switcher;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/Switcher;->setEnable(Z)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->this:Lcom/wsw/cospa/adapter/DownloadChapterAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 15
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public strictfp(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/wsw/cospa/service/DownloadService;->super(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->super:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 6
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->implements(Ljava/util/List;)V

    const-string p1, "\u5df2\u6dfb\u52a0\u81f3\u4e0b\u8f7d\u5217\u8868"

    .line 7
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public this()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u7ae0\u8282\u5217\u8868"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/high16 v0, 0x41200000    # 10.0f

    .line 7
    invoke-static {p0, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 8
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    const-string v4, "#333C3C5A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowColor(I)V

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowRadius(F)V

    .line 10
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterActivity;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    invoke-virtual {v3, v1, v2, v1, v1}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowMargin(IIII)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comic_shelf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-nez v1, :cond_0

    .line 12
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    const-string v2, "comic_shelf_key"

    invoke-virtual {v1, v2}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 13
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->catch:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 14
    :cond_0
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    const/16 v2, 0x438

    if-lt v1, v2, :cond_1

    .line 15
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    invoke-static {p0, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->goto:I

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    invoke-static {p0, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/wsw/cospa/activity/ChapterActivity;->goto:I

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterActivity;->tvDonwloadChapter:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/jh;

    invoke-direct {v1, p0}, Landroid/support/v4/jh;-><init>(Lcom/wsw/cospa/activity/ChapterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
