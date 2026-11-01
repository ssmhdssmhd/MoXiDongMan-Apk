.class public Lcom/wsw/cospa/activity/SourceDebugActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final class:I = 0xca


# instance fields
.field private break:Ljava/lang/String;

.field private catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field private goto:Ljava/lang/String;

.field public mScrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a7
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

.field public searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field private this:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field public tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090470
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static abstract(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/SourceDebugActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "sourceUrl"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic default(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->break:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/SourceDebugActivity;->private(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private synthetic extends(Ljava/lang/Boolean;)V
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

.method private synthetic finally()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/SourceDebugActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->default(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->extends(Ljava/lang/Boolean;)V

    return-void
.end method

.method private package(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\u2605"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "\n"

    if-ltz v0, :cond_1

    .line 2
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    .line 11
    new-instance v0, Landroid/support/v4/l02;

    invoke-direct {v0, p0}, Landroid/support/v4/l02;-><init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private private(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->goto:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->tvContent:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->goto:Ljava/lang/String;

    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    new-instance v2, Lcom/wsw/cospa/activity/SourceDebugActivity$if;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/SourceDebugActivity$if;-><init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V

    invoke-static {v0, p1, v1, v2}, Lcom/wsw/cospa/model/Debug;->final(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/cq;Lcom/wsw/cospa/model/Debug$CallBack;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/SourceDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/SourceDebugActivity;->finally()V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->break:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->private(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/SourceDebugActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceDebugActivity;->package(Ljava/lang/String;)V

    return-void
.end method

.method private throws()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, "\u641c\u7d22\u6f2b\u753b\u540d\u6216\u4f5c\u8005"

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/try;->super(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f090394

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->this:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x41800000    # 16.0f

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->this:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060384

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/wsw/cospa/activity/SourceDebugActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SourceDebugActivity$do;-><init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sourceUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->goto:Ljava/lang/String;

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0044

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0xca

    if-ne p1, p2, :cond_0

    const-string p1, "result"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

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
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/Debug;->catch()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09007a

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->catch:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/k02;

    invoke-direct {v1, p0}, Landroid/support/v4/k02;-><init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u8c03\u8bd5\u56fe\u6e90"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/SourceDebugActivity;->throws()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceDebugActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/j02;

    invoke-direct {v1, p0}, Landroid/support/v4/j02;-><init>(Lcom/wsw/cospa/activity/SourceDebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
