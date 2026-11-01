.class public Lcom/wsw/cospa/activity/ComicManagerActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final return:I = 0x65

.field public static final static:I = 0x66

.field public static final switch:I = 0x67


# instance fields
.field private break:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private catch:Z

.field private class:Z

.field private const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private final:Z

.field private goto:Lcom/google/android/material/snackbar/Snackbar;

.field private import:Landroid/view/MenuItem;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090299
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

.field private native:Landroid/view/SubMenu;

.field private public:Landroid/net/Uri;

.field public searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field private final super:I

.field private this:Lcom/google/android/material/snackbar/Snackbar;

.field private throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field

.field private while:Landroid/support/v4/xh1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->class:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->final:Z

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->super:I

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/ComicManagerActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    return p0
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, "\u641c\u7d22\u56fe\u6e90"

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/try;->super(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->class()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f090394

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->break:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060384

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->break:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22(\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u56fe\u6e90)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/wsw/cospa/activity/ComicManagerActivity$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$if;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/ComicManagerActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    return p1
.end method

.method private synthetic d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->class(I)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u5220\u9664"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u56fe\u6e90\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/wsw/cospa/activity/ComicManagerActivity$for;

    invoke-direct {v2, p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity$for;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/ComicManagerActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->m(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static synthetic extends(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->instanceof()V

    .line 2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1, p1}, Lio/reactivex/new;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicManagerActivity$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$do;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/ComicManagerActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->n(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic g(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/default;->extends()V

    :cond_0
    return-void
.end method

.method private synthetic h(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->default(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static synthetic i(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/do;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private implements(Landroid/net/Uri;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "document_id"

    .line 4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v2, "_display_name"

    .line 5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v2, "_size"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "\u6587\u4ef6\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 19
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 20
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 23
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_6

    .line 24
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 26
    :goto_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_5
    return-void

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v2, :cond_8

    .line 27
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 29
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    :cond_9
    :goto_9
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public static synthetic import(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->j(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private interface()V
    .locals 4

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v1, "\u8f93\u5165\u7f51\u5740"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/wsw/cospa/activity/ComicManagerActivity$this;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$this;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    const-string v3, "\u8bf7\u8f93\u5165\u7f51\u7edc\u56fe\u6e90\u7684\u5730\u5740"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/wsw/cospa/utils/DialogTool;->r(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    return-void
.end method

.method private static synthetic j(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSerialNumber(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/model/do;->finally()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic k(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/static;->catch(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "import www"

    .line 7
    invoke-static {v0, p1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u6587\u4ef6\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 10
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 11
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u65e0\u6cd5\u6253\u5f00\uff01"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->do()V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->v()V

    return-void
.end method

.method private synthetic m(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Lcn/qqtheme/framework/picker/ComicFilePicker;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;-><init>(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->implements(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->q(I)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/popup/if;->n(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->D([Ljava/lang/String;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    sget-object v0, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->K(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.tencent.mobileqq/Tencent/QQfile_recv/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->K(Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance v0, Landroid/support/v4/wn;

    invoke-direct {v0, p0}, Landroid/support/v4/wn;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {p1, v0}, Lcn/qqtheme/framework/picker/ComicFilePicker;->setOnFilePickListener(Lcn/qqtheme/framework/picker/ComicFilePicker$OnFilePickListener;)V

    .line 14
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/do;->finally()V

    .line 15
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/if;->abstract()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcn/qqtheme/framework/popup/if;->abstract()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/support/v4/vn;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/vn;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private synthetic n(Ljava/lang/Boolean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ".txt"

    const-string v3, "yyyy_MM_dd_HH_mm"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_share_source_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u56fe\u6e90_share_source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    sget-object v1, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Landroid/support/v4/fz;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 17
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    const/high16 v4, 0x10000000

    if-lt v1, v2, :cond_2

    .line 20
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p1, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const-string p1, "text/*"

    .line 27
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "\u5206\u4eab\u56fe\u6e90"

    .line 28
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const-string p1, "\u8bf7\u5148\u9009\u4e2d\u56fe\u6e90\uff01"

    .line 29
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ComicManagerActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->h(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/service/CheckSourceService;->break(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/ComicManagerActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ComicManagerActivity;->l(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/ComicManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->o(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic public(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->g(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic return(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->i(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/ComicManagerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->while:Landroid/support/v4/xh1;

    return-object p0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/ComicManagerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->d(I)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/ComicManagerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->k(Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/bo;

    invoke-direct {v1, p0}, Landroid/support/v4/bo;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/activity/ComicManagerActivity;)Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->break:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    return-object p0
.end method


# virtual methods
.method public B()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->class:Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->const()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->class:Z

    :cond_1
    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->native:Landroid/view/SubMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0903b5

    .line 2
    invoke-interface {v0, v1}, Landroid/view/SubMenu;->removeGroup(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->import:Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->import:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->native:Landroid/view/SubMenu;

    invoke-interface {v3, v1, v2, v2, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public D(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\u641c\u7d22(\u5171%s\u4e2a\u56fe\u6e90)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/static;->catch(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u6587\u4ef6\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 9
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 10
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u65e0\u6cd5\u6253\u5f00\uff01"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->implements(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicManagerActivity$else;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$else;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "URL\u683c\u5f0f\u4e0d\u5bf9"

    .line 7
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public case()V
    .locals 4

    .line 1
    new-instance v0, Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    new-instance v2, Landroid/support/v4/xn;

    invoke-direct {v2, p0}, Landroid/support/v4/xn;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    new-instance v2, Lcom/wsw/cospa/activity/ComicManagerActivity$new;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$new;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->setOnCheckedChangeListener(Lcom/wsw/cospa/listener/OnCheckedChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u6e90\u7ba1\u7406("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/wsw/cospa/utils/synchronized;->else(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22(\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u56fe\u6e90)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->refresh(Ljava/util/List;)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->instanceof()V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->z()V

    :goto_1
    return-void
.end method

.method public checkSourceFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/hwangjr/rxbus/annotation/Subscribe;
        tags = {
            .subannotation Lcom/hwangjr/rxbus/annotation/Tag;
                value = "check_source_finish"
            .end subannotation
        }
        thread = .enum Lcom/hwangjr/rxbus/thread/EventThread;->MAIN_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->x(Landroid/view/View;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public instanceof()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002b

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

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/16 p2, 0xca

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->q()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->p()V

    goto :goto_0

    .line 4
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    .line 5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->implements(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_5

    .line 6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/default;->super(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_5

    const-string p1, "result"

    .line 7
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 9
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Landroid/support/v4/fd2;->new(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 16
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

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
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hwangjr/rxbus/Bus;->unregister(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->while:Landroid/support/v4/xh1;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->break:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuBuilder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setOptionalIconsVisible"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    const-string p1, "android.intent.action.VIEW"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    if-ne p1, v0, :cond_1

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->implements(Landroid/net/Uri;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/default;->super(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/wsw/cospa/utils/static;->catch(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\u6587\u4ef6\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 17
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 18
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    sget-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/wsw/cospa/service/WebService;->case(Landroid/content/Context;)V

    const-string v0, "\u5f00\u542fWeb\u670d\u52a1"

    .line 4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/wsw/cospa/service/WebService;->try(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f110113

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_1
    const-string v0, "\u5173\u95edWeb\u670d\u52a1"

    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 8
    :sswitch_1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 13
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->abstract(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->class()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->catch()Z

    move-result v1

    .line 18
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicSourceBean;

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->j(Z)V

    .line 21
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_2

    .line 22
    :sswitch_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->w()V

    goto/16 :goto_2

    .line 23
    :sswitch_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 24
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/ao;

    invoke-direct {v1, p0}, Landroid/support/v4/ao;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 25
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :sswitch_4
    const/4 v0, 0x2

    .line 27
    invoke-static {p0, v0}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->a(Landroid/app/Activity;I)V

    goto :goto_2

    .line 28
    :sswitch_5
    invoke-static {p0, v3}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->a(Landroid/app/Activity;I)V

    goto :goto_2

    .line 29
    :sswitch_6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->interface()V

    goto :goto_2

    .line 30
    :sswitch_7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->u()V

    goto :goto_2

    .line 31
    :sswitch_8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 32
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    sget-object v1, Landroid/support/v4/sn;->do:Landroid/support/v4/sn;

    .line 33
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_2

    .line 35
    :sswitch_9
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->protected()V

    goto :goto_2

    .line 36
    :sswitch_a
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->const()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wsw/cospa/service/CheckSourceService;->goto(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2

    .line 37
    :sswitch_b
    iput-boolean v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->final:Z

    const-string v0, "\u6dfb\u52a0\u56fe\u6e90"

    .line 38
    invoke-static {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->h(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :sswitch_c
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->onBackPressed()V

    return v3

    .line 40
    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0903b5

    if-ne v0, v1, :cond_5

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 42
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_c
        0x7f090083 -> :sswitch_b
        0x7f0900f0 -> :sswitch_a
        0x7f09012d -> :sswitch_9
        0x7f0901aa -> :sswitch_8
        0x7f090294 -> :sswitch_7
        0x7f0902f7 -> :sswitch_6
        0x7f09030f -> :sswitch_5
        0x7f090310 -> :sswitch_4
        0x7f09034d -> :sswitch_3
        0x7f09039f -> :sswitch_2
        0x7f0903b4 -> :sswitch_1
        0x7f0904e4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f090071

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->import:Landroid/view/MenuItem;

    .line 2
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->native:Landroid/view/SubMenu;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->r()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f09030f
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->final:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->p()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u6e90\u7ba1\u7406("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/wsw/cospa/utils/synchronized;->else(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22(\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u56fe\u6e90)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->refresh(Ljava/util/List;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->instanceof()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->z()V

    .line 13
    :goto_1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/jm1;->if([Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/k61;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public protected()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u6279\u91cf\u5220\u9664\u9009\u4e2d\u7684\u56fe\u6e90\uff1f\u5171"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u4e2a\u56fe\u6e90\uff01"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    invoke-direct {v1, v3, v2, v0}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v0, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/wsw/cospa/activity/ComicManagerActivity$case;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$case;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->package(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->package(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/zn;->do:Landroid/support/v4/zn;

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

    new-instance v1, Lcom/wsw/cospa/activity/ComicManagerActivity$try;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$try;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/yn;

    invoke-direct {v0, p1}, Landroid/support/v4/yn;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 5
    invoke-interface {p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public synchronized(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->transient(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ComicManagerActivity$goto;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public t(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 3
    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 4
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->d:Lorg/greenrobot/greendao/Property;

    .line 5
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 6
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->const:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->final:Lorg/greenrobot/greendao/Property;

    .line 8
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v3, v7

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->continue:Lorg/greenrobot/greendao/Property;

    .line 9
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v3, v7

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->protected:Lorg/greenrobot/greendao/Property;

    .line 10
    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v4, 0x6

    aput-object p1, v3, v4

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    new-array v0, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v1, v0, v5

    .line 12
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/wsw/cospa/model/do;->continue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hwangjr/rxbus/Bus;->register(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u56fe\u6e90\u7ba1\u7406"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->c()V

    .line 5
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 6
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    const-string v2, "\u6b63\u5728\u5bfc\u5165\u56fe\u6e90\uff01"

    .line 8
    invoke-virtual {v0, v2}, Landroid/support/v4/xh1$do;->new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->while:Landroid/support/v4/xh1;

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 11
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    sget-object v2, Landroid/support/v4/tn;->do:Landroid/support/v4/tn;

    .line 12
    invoke-interface {v0, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v2, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 14
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->final:Z

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->tvRetry:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/rn;

    invoke-direct {v1, p0}, Landroid/support/v4/rn;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public transient()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->catch:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u6e90\u7ba1\u7406("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/wsw/cospa/utils/synchronized;->else(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u641c\u7d22(\u5171"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u56fe\u6e90)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->const:Lcom/wsw/cospa/adapter/ComicSourceAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ComicSourceAdapter;->refresh(Ljava/util/List;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->instanceof()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->z()V

    .line 13
    :goto_1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/jm1;->if([Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/k61;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public try(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->try(Landroid/os/Bundle;)V

    if-nez p1, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    const-string p1, "android.intent.action.VIEW"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    if-ne p1, v0, :cond_1

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->implements(Landroid/net/Uri;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/default;->super(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->public:Landroid/net/Uri;

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/wsw/cospa/utils/static;->catch(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->synchronized(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "\u6587\u4ef6\u683c\u5f0f\u4e0d\u652f\u6301"

    .line 18
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 19
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public upCheckSourceState(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/hwangjr/rxbus/annotation/Subscribe;
        tags = {
            .subannotation Lcom/hwangjr/rxbus/annotation/Tag;
                value = "checkSourceState"
            .end subannotation
        }
        thread = .enum Lcom/hwangjr/rxbus/thread/EventThread;->MAIN_THREAD:Lcom/hwangjr/rxbus/thread/EventThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->q()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->this:Lcom/google/android/material/snackbar/Snackbar;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->F(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->this:Lcom/google/android/material/snackbar/Snackbar;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->J(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->this:Lcom/google/android/material/snackbar/Snackbar;

    const v0, 0x7f110039

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/support/v4/un;

    invoke-direct {v1, p0}, Landroid/support/v4/un;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->I(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->R(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->this:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->this:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->s()V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->throw:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/co;

    invoke-direct {v1, p0}, Landroid/support/v4/co;-><init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public x(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->y(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public y(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->goto:Lcom/google/android/material/snackbar/Snackbar;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->F(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->goto:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/material/snackbar/Snackbar;->R(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->goto:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1, p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->goto:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->s()V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->tvErrorView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u56fe\u6e90\uff0c\u8bf7\u5173\u6ce8\u5f02\u6b21\u5143\u5fae\u4fe1\u516c\u4f17\u53f7\uff1a\u641c\u7d22\u3010\u5f02\u6b21\u5143APP\u8f6f\u4ef6\u3011\u6216\u8005\u626b\u63cf\u5173\u4e8e\u754c\u9762\u4e2d\u7684\u4e8c\u7ef4\u7801\u83b7\u53d6\u56fe\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity;->tvRetry:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
