.class public Lcom/wsw/cospa/activity/FileSelectorActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;
.implements Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;
.implements Lcom/wsw/cospa/event/RefreshLocalFileMessageObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/FileSelectorActivity$case;,
        Lcom/wsw/cospa/activity/FileSelectorActivity$try;,
        Lcom/wsw/cospa/activity/FileSelectorActivity$new;
    }
.end annotation


# static fields
.field private static final package:I = 0x2711

.field public static final synthetic private:Z


# instance fields
.field public backButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a0
    .end annotation
.end field

.field private break:Z

.field public btnContinueReading:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c8
    .end annotation
.end field

.field public cancelButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field private catch:Z

.field private class:Z

.field public confirmButton:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010f
    .end annotation
.end field

.field private const:Z

.field private default:Lcom/wsw/cospa/bean/RipeFile;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private extends:Lcom/wsw/cospa/bean/RipeFile;

.field private final:I

.field public finally:Z

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final import:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/wsw/cospa/bean/FileSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public llCurrentPosition:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027d
    .end annotation
.end field

.field public mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029b
    .end annotation
.end field

.field public mIndicatorRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
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

.field private final native:Ljava/util/Comparator;

.field private final public:Landroid/support/v4/cq;

.field private return:Lio/reactivex/disposables/Disposable;

.field private static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

.field private super:Ljava/lang/String;

.field private switch:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private this:Z

.field private throw:Z

.field private throws:Ljava/util/zip/ZipFile;

.field public tvCurrentPath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090474
    .end annotation
.end field

.field public tvCurrentPosition:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090475
    .end annotation
.end field

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

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field

.field private while:Lcom/wsw/cospa/bean/FileSnapshot;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/activity/FileSelectorActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->final:I

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    .line 4
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->native:Ljava/util/Comparator;

    .line 5
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->public:Landroid/support/v4/cq;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->finally:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;ZZZZ[Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isShowImage"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isSingleChoice"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "checkBookAdded"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isImage"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "suffixes"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "isShowButton"

    .line 7
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroidx/fragment/app/Fragment;ZZZZ[Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isShowImage"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isSingleChoice"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "checkBookAdded"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isImage"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "suffixes"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "isShowButton"

    .line 7
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic default(Lcom/wsw/cospa/bean/RipeFile;ILio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->finally(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/FileSnapshot;->setScrollOffset(I)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    .line 5
    invoke-interface {p3, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "snapshot push failed!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic extends(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ripeFile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->extends:Lcom/wsw/cospa/bean/RipeFile;

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/wsw/cospa/utils/do;->for(Landroid/content/Context;)Lcom/wsw/cospa/utils/do;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->super:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/do;->const(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/FileSnapshot;

    .line 6
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/FileSnapshot;->getParent()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->finally(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/FileSnapshot;->getScrollOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/bean/FileSnapshot;->setScrollOffset(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/FileSnapshot;

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->package()Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->finally(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "file load failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private finally(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    if-lez v1, :cond_2

    .line 4
    new-instance v1, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-direct {v1}, Lcom/wsw/cospa/bean/FileSnapshot;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/bean/FileSnapshot;->setParent(Lcom/wsw/cospa/bean/RipeFile;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 8
    new-instance v5, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v5}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 9
    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    .line 10
    iget-object v6, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->extends:Lcom/wsw/cospa/bean/RipeFile;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    iget-object v6, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->extends:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wsw/cospa/bean/RipeFile;->setRootPath(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wsw/cospa/bean/RipeFile;->setIsDirectory(Ljava/lang/Boolean;)V

    .line 13
    invoke-static {v4}, Lcom/wsw/cospa/utils/default;->class(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setSuffix(Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->final:I

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->implements(Ljava/util/List;I)V

    .line 16
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/bean/FileSnapshot;->setFiles(Ljava/util/List;)V

    return-object v1

    .line 17
    :cond_2
    new-instance v0, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/FileSnapshot;-><init>()V

    .line 18
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/FileSnapshot;->setParent(Lcom/wsw/cospa/bean/RipeFile;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private implements(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/activity/FileSelectorActivity$new;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->throw:Z

    :cond_0
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/FileSelectorActivity;Lcom/wsw/cospa/bean/RipeFile;ILio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/FileSelectorActivity;->default(Lcom/wsw/cospa/bean/RipeFile;ILio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static instanceof(Landroid/app/Activity;ZLcom/wsw/cospa/bean/RipeFile;ZZZ[Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isShowImage"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isSingleChoice"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "checkBookAdded"

    .line 4
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ripeFile"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "isImage"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "suffixes"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "isShowButton"

    .line 8
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/FileSelectorActivity;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->extends(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method private package()Lcom/wsw/cospa/bean/FileSnapshot;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/default;->while(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-direct {v1}, Lcom/wsw/cospa/bean/FileSnapshot;-><init>()V

    .line 3
    new-instance v2, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v2}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    const-string v3, "/"

    .line 4
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/RipeFile;->setPath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/FileSnapshot;->setParent(Lcom/wsw/cospa/bean/RipeFile;)V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    new-instance v4, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v4}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    .line 10
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/FileSnapshot;->setFiles(Ljava/util/List;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/FileSelectorActivity;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->throws(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/FileSelectorActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->return:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/FileSelectorActivity;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->public:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synchronized(Landroid/app/Activity;ZZZZ[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/FileSelectorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isShowImage"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isSingleChoice"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "checkBookAdded"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isImage"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "suffixes"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic throws(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/FileSnapshot;

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->throw:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/FileSnapshot;->getFiles()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->final:I

    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->implements(Ljava/util/List;I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "snapshot pop failed!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private transient(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/FileSelectorActivity$case;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/activity/FileSelectorActivity$case;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;Lcom/wsw/cospa/activity/FileSelectorActivity$do;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->hideProgress()V

    .line 2
    new-instance v0, Landroid/support/v4/va0;

    invoke-direct {v0, p0}, Landroid/support/v4/va0;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/FileSelectorActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/FileSelectorActivity$for;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public accept(Ljava/io/File;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "HIDE_DOT_BEGIN_FILE_KEY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "."

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    return v4

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->class:Z

    if-eqz p1, :cond_3

    .line 6
    invoke-static {v0}, Landroid/support/v4/bb0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->goto:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v4

    :cond_3
    return v3
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->showProgress()V

    .line 2
    new-instance v0, Landroid/support/v4/ua0;

    invoke-direct {v0, p0}, Landroid/support/v4/ua0;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/FileSelectorActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/FileSelectorActivity$do;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public case()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->switch:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    new-instance v0, Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    iget-boolean v3, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->class:Z

    iget-boolean v4, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->this:Z

    iget-boolean v5, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->break:Z

    iget-boolean v6, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->catch:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;-><init>(Landroid/app/Activity;ZZZZ)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->switch:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->setOnItemClickListener(Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->setOnItemCheckedListener(Lcom/wsw/cospa/adapter/FileSelectorAdapter$OnItemCheckedListener;)V

    .line 7
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->const:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ripeFile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->extends:Lcom/wsw/cospa/bean/RipeFile;

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u6587\u4ef6\u5939"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "\u8fd4\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->c()V

    return-void
.end method

.method public continue(Lcom/wsw/cospa/bean/RipeFile;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->showProgress()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->return:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->public:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/wa0;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/wa0;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;Lcom/wsw/cospa/bean/RipeFile;I)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 7
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance p2, Lcom/wsw/cospa/activity/FileSelectorActivity$if;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/FileSelectorActivity$if;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V

    .line 8
    invoke-interface {p1, p2}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public interface(I)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->final:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->final:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->throw:Z

    .line 4
    :cond_0
    new-instance v0, Lcom/wsw/cospa/activity/FileSelectorActivity$new;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity$new;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;I)V

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0032

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

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/am2;->new(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->abstract()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 2
    :sswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D0(Landroid/content/Context;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 4
    :sswitch_1
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->this:Z

    const/4 v1, -0x1

    const-string v2, "isSingleChoice"

    const-string v3, "SELECT_LOCAL_FILE"

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->case()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 7
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else()Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 13
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {v5, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_1
    if-nez v0, :cond_3

    const-string p1, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 18
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :sswitch_2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_2

    .line 20
    :sswitch_3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->abstract()V

    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a0 -> :sswitch_3
        0x7f0900dd -> :sswitch_2
        0x7f09010f -> :sswitch_1
        0x7f09027d -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->switch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/FileSnapshot;->setScrollOffset(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->while:Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    .line 10
    :cond_1
    invoke-static {}, Landroid/support/v4/nm1;->case()Landroid/support/v4/nm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemChecked(Lcom/wsw/cospa/bean/RipeFile;ZI)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string p2, "\u786e\u5b9a"

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "%s(%d)"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/wsw/cospa/bean/RipeFile;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->finally:Z

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/wsw/cospa/activity/FileSelectorActivity;->continue(Lcom/wsw/cospa/bean/RipeFile;I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/bb0;->new(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->y0(Landroid/content/Context;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f09007b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x2

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->throw()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->else()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "\u786e\u5b9a"

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v6, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "%s(%d)"

    invoke-static {v7, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/FileSelectorActivity;->onBackPressed()V

    :goto_0
    const/4 v2, -0x1

    :goto_1
    :pswitch_5
    if-eq v2, v4, :cond_3

    .line 7
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {p0, v2}, Lcom/wsw/cospa/activity/FileSelectorActivity;->interface(I)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->import(Ljava/util/Comparator;)V

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7f09022a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onRefreshFileMessage(Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPosition:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public private(Lcom/wsw/cospa/bean/FileSnapshot;Z)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getParent()Lcom/wsw/cospa/bean/RipeFile;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->static:Lcom/wsw/cospa/adapter/FileSelectorAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FileSelectorAdapter;->while(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->class:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->catch()Lcom/wsw/cospa/dao/RipeFileDao;

    move-result-object v0

    iget-object v3, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPosition:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/FileSnapshot;->getScrollOffset()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->default:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object p2, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->import:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->empty()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public protected(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\d+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "%04d"

    invoke-static {p1, v2}, Landroid/support/v4/l22;->case(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public strictfp(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->throws:Ljava/util/zip/ZipFile;

    .line 3
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->throws:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 8
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dir file - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    .line 12
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/bb0;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u540e\u7f00\u540d \uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_2

    const-string v3, "png"

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "jpg"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "webp"

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "gif"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public switch()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    :goto_0
    return v0
.end method

.method public this()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    invoke-static {}, Landroid/support/v4/nm1;->case()Landroid/support/v4/nm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isShowImage"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->class:Z

    const-string v1, "isSingleChoice"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->this:Z

    const-string v1, "checkBookAdded"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->break:Z

    const-string v1, "isImage"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->catch:Z

    const-string v1, "isShowButton"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->const:Z

    const-string v1, "suffixes"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->goto:Ljava/util/List;

    const-string v1, ","

    .line 12
    invoke-static {v1, v0}, Landroid/support/v4/l22;->static(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity;->super:Ljava/lang/String;

    return-void
.end method

.method public volatile(Ljava/lang/String;)V
    .locals 7

    const-string v0, "/"

    const-string v1, "\\\\"

    .line 1
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v2, Landroid/support/v4/sj2;

    invoke-direct {v2, p1}, Landroid/support/v4/sj2;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/sj2;->abstract()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/support/v4/sj2;->switch()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {v2}, Landroid/support/v4/sj2;->extends()Ljava/util/List;

    move-result-object v3

    .line 6
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(I)V

    .line 7
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/oa0;

    .line 9
    invoke-virtual {v3}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2, v3}, Landroid/support/v4/sj2;->throws(Landroid/support/v4/oa0;)Lnet/lingala/zip4j/io/inputstream/this;

    .line 12
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    :goto_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method
