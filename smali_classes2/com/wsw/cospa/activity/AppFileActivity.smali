.class public Lcom/wsw/cospa/activity/AppFileActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public downloadPathView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09014b
    .end annotation
.end field

.field private goto:Lcom/tbruyelle/rxpermissions2/RxPermissions;

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

.field private this:Ljava/lang/String;

.field public tvBackupPath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090462
    .end annotation
.end field

.field public tvCrashPath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090473
    .end annotation
.end field

.field public tvDownloadPath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047e
    .end annotation
.end field

.field public tvImagePath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09048d
    .end annotation
.end field

.field public tvSourcePath:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static abstract(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AppFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic default(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->do()V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "CUSTOM_DOWNLOAD_PATH_KEY"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvDownloadPath:Landroid/widget/TextView;

    sget-object p2, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic extends(Ljava/lang/Boolean;)V
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
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "CUSTOM_DOWNLOAD_PATH_KEY"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Landroid/support/v4/wq;->native:Ljava/lang/String;

    .line 5
    :cond_0
    new-instance v0, Lcn/qqtheme/framework/picker/ComicFilePicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/qqtheme/framework/picker/ComicFilePicker;-><init>(Landroid/app/Activity;I)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060380

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/qqtheme/framework/popup/if;->implements(I)V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/qqtheme/framework/popup/if;->q(I)V

    .line 8
    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->K(Ljava/lang/String;)V

    .line 9
    new-instance p1, Landroid/support/v4/t2;

    invoke-direct {p1, p0}, Landroid/support/v4/t2;-><init>(Lcom/wsw/cospa/activity/AppFileActivity;)V

    invoke-virtual {v0, p1}, Lcn/qqtheme/framework/picker/ComicFilePicker;->setOnFilePickListener(Lcn/qqtheme/framework/picker/ComicFilePicker$OnFilePickListener;)V

    .line 10
    invoke-virtual {v0}, Lcn/qqtheme/framework/popup/do;->finally()V

    .line 11
    invoke-virtual {v0}, Lcn/qqtheme/framework/popup/if;->private()Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u8def\u5f84"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0}, Lcn/qqtheme/framework/popup/if;->private()Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Landroid/support/v4/s2;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/s2;-><init>(Lcom/wsw/cospa/activity/AppFileActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private synthetic finally(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const-string p3, "CUSTOM_DOWNLOAD_PATH_KEY"

    .line 4
    invoke-static {p0, p3}, Lcom/wsw/cospa/utils/do;->try(Landroid/content/Context;Ljava/lang/String;)Lcom/wsw/cospa/utils/do;

    move-result-object p5

    const-string v0, "sd_download_path"

    .line 5
    invoke-virtual {p5, v0, p2}, Lcom/wsw/cospa/utils/do;->throws(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sd_removable"

    .line 6
    invoke-virtual {p5, v0, p1}, Lcom/wsw/cospa/utils/do;->static(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvDownloadPath:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_0
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/AppFileActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AppFileActivity;->extends(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/AppFileActivity;Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/AppFileActivity;->default(Lcn/qqtheme/framework/picker/ComicFilePicker;Landroid/view/View;)V

    return-void
.end method

.method private package()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->goto:Lcom/tbruyelle/rxpermissions2/RxPermissions;

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

    new-instance v1, Landroid/support/v4/u2;

    invoke-direct {v1, p0}, Landroid/support/v4/u2;-><init>(Lcom/wsw/cospa/activity/AppFileActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/AppFileActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AppFileActivity;->switch(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/AppFileActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/activity/AppFileActivity;->finally(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/AppFileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AppFileActivity;->throws(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic switch(Ljava/lang/Boolean;)V
    .locals 1
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
    invoke-static {p0}, Lcom/wsw/cospa/utils/default;->import(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AppFileActivity;->private()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AppFileActivity;->package()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic throws(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "CUSTOM_DOWNLOAD_PATH_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvDownloadPath:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0020

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/AppFileActivity;->goto:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Landroid/support/v4/v2;

    invoke-direct {v0, p0}, Landroid/support/v4/v2;-><init>(Lcom/wsw/cospa/activity/AppFileActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_0
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
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public private()V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/utils/default;->import(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/bean/StorageInfo;

    .line 6
    invoke-virtual {v5}, Lcom/wsw/cospa/bean/StorageInfo;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/Android/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/\u5f02\u6b21\u5143"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 8
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u5f02\u6b21\u5143"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-boolean v5, v5, Lcom/wsw/cospa/bean/StorageInfo;->isRemovable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v5, p0, Lcom/wsw/cospa/activity/AppFileActivity;->this:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 14
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v3, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v5, "\u9009\u62e9\u5b58\u50a8\u5361\u4f4d\u7f6e"

    .line 15
    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 16
    new-instance v5, Landroid/support/v4/r2;

    invoke-direct {v5, p0, v3, v1, v2}, Landroid/support/v4/r2;-><init>(Lcom/wsw/cospa/activity/AppFileActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v0, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 17
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 18
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    return-void
.end method

.method public this()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->goto:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvSourcePath:Landroid/widget/TextView;

    sget-object v1, Landroid/support/v4/wq;->public:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvCrashPath:Landroid/widget/TextView;

    sget-object v1, Landroid/support/v4/wq;->return:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "CUSTOM_DOWNLOAD_PATH_KEY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->this:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Landroid/support/v4/wq;->static:Ljava/lang/String;

    iput-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->this:Ljava/lang/String;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvDownloadPath:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/AppFileActivity;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvBackupPath:Landroid/widget/TextView;

    sget-object v1, Landroid/support/v4/wq;->throws:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->tvImagePath:Landroid/widget/TextView;

    sget-object v1, Landroid/support/v4/wq;->switch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppFileActivity;->downloadPathView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
