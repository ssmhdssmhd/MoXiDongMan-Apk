.class public Lcom/wsw/cospa/activity/BackupActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final break:I = 0x2710

.field private static final catch:I = 0x2711


# instance fields
.field private goto:Landroid/support/v4/xh1;

.field public mSaveComicAuto:Lcom/wsw/cospa/widget/view/CheckBoxPreference;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a4
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

.field private this:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field public tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c5
    .end annotation
.end field

.field public tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c6
    .end annotation
.end field

.field public tvWebdavRestore:Lcom/wsw/cospa/widget/view/Option;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c7
    .end annotation
.end field

.field public tvWebdavStep:Lcom/wsw/cospa/widget/view/Option;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c8
    .end annotation
.end field

.field public tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method private static synthetic default(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/public;->if()Lcom/wsw/cospa/utils/public;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/public;->goto()Ljava/lang/Boolean;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic extends(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/nf2;

    invoke-direct {v0, p0}, Landroid/support/v4/nf2;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v4/wq;->default:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backupB.zip"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/support/v4/nf2;->for(Ljava/lang/String;Z)Z

    .line 4
    sget-object v0, Landroid/support/v4/wq;->default:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/b;->catch(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/public;->if()Lcom/wsw/cospa/utils/public;

    move-result-object p0

    sget-object v0, Landroid/support/v4/wq;->default:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/utils/public;->this(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 6
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic finally(Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web_dav_password"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "****************"

    .line 4
    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/Option;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p3}, Lcom/wsw/cospa/widget/view/Option;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic import(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/BackupActivity;->default(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static interface(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/BackupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic native(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/BackupActivity;->extends(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method private static synthetic package(Lio/reactivex/SingleEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/nf2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/support/v4/of2;->do()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "YiCiYuan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/nf2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/nf2;->public()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/nf2;

    invoke-virtual {v4}, Landroid/support/v4/nf2;->this()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic public(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/BackupActivity;->package(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/BackupActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/BackupActivity;->throws(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/BackupActivity;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/BackupActivity;->finally(Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/BackupActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/BackupActivity;->goto:Landroid/support/v4/xh1;

    return-object p0
.end method

.method private synthetic throws(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    sget-object p1, Landroid/support/v4/wq;->default:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/of2;->if()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->volatile()V

    goto :goto_0

    :cond_1
    const-string p1, "\u8bf7\u8f93\u5165WebDav\u8d26\u53f7\u548c\u5bc6\u7801\uff01"

    .line 8
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/x6;

    invoke-direct {v0, p1}, Landroid/support/v4/x6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object p1

    sget-object v0, Landroid/support/v4/k0;->do:Landroid/support/v4/k0;

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->goto(Lio/reactivex/SingleTransformer;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/BackupActivity$for;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/BackupActivity$for;-><init>(Lcom/wsw/cospa/activity/BackupActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->goto:Landroid/support/v4/xh1;

    return-void
.end method

.method public continue()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/import;->const()Lcom/wsw/cospa/utils/import;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/import;->native(Landroid/content/Context;)V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1e

    const/16 p3, 0x2710

    if-ne p1, p3, :cond_0

    .line 2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p2, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/public;->if()Lcom/wsw/cospa/utils/public;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/public;->goto()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 p3, 0x2711

    if-ne p1, p3, :cond_3

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_3

    .line 7
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Landroid/support/v4/wq;->default:Ljava/lang/String;

    .line 9
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    invoke-static {}, Landroid/support/v4/of2;->if()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->volatile()V

    goto :goto_0

    :cond_2
    const-string p1, "\u8bf7\u8f93\u5165WebDav\u8d26\u53f7\u548c\u5bc6\u7801\uff01"

    .line 14
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "web_dav_url"

    const-string v1, "https://dav.jianguoyun.com/dav/"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WebDav\u670d\u52a1\u5668\u5730\u5740"

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    const-string v1, "\u8bf7\u8f93\u5165WebDav\u670d\u52a1\u5668\u5730\u5740"

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_0
    const-string p1, "http://help.jianguoyun.com/?p=2064"

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 10
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    const-string v1, "\u8bf7\u8f93\u5165WebDav\u8d26\u53f7\u548c\u5bc6\u7801\uff01"

    if-lt p1, v0, :cond_4

    .line 11
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v0, 0x2711

    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 15
    :cond_1
    sget-object p1, Landroid/support/v4/wq;->default:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    :cond_2
    invoke-static {}, Landroid/support/v4/of2;->if()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->volatile()V

    goto/16 :goto_0

    .line 21
    :cond_3
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x17

    if-lt p1, v0, :cond_6

    .line 22
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->private()V

    goto/16 :goto_0

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity;->this:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    .line 25
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Landroid/support/v4/z6;

    invoke-direct {v0, p0}, Landroid/support/v4/z6;-><init>(Lcom/wsw/cospa/activity/BackupActivity;)V

    .line 26
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 28
    :cond_6
    sget-object p1, Landroid/support/v4/wq;->default:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_7

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_7
    invoke-static {}, Landroid/support/v4/of2;->if()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->volatile()V

    goto :goto_0

    .line 34
    :cond_8
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v1, "web_dav_password"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "WebDav\u5bc6\u7801"

    if-eqz p1, :cond_9

    .line 37
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    const-string v2, "\u8bf7\u8f93\u5165WebDav\u5bc6\u7801"

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    goto :goto_0

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    const-string v2, "****************"

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    goto :goto_0

    .line 39
    :pswitch_4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v1, "web_dav_account"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "WebDav\u8d26\u53f7"

    if-eqz v0, :cond_a

    .line 41
    iget-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    const-string v0, "\u8bf7\u8f93\u5165WebDav\u8d26\u53f7"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    goto :goto_0

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/wsw/cospa/activity/BackupActivity;->strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0904c5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public onRestoreComicClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a2
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x2710

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 6
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->private()V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->goto:Landroid/support/v4/xh1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    sget-object v0, Landroid/support/v4/w6;->do:Landroid/support/v4/w6;

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 11
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/BackupActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/BackupActivity$do;-><init>(Lcom/wsw/cospa/activity/BackupActivity;)V

    .line 12
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onSaveComicClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a3
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x2710

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 6
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->private()V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/BackupActivity;->continue()V

    return-void
.end method

.method public private()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public strictfp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0, v0}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string p1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    invoke-direct {v2, p1, v0}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v5, Landroid/support/v4/v6;

    invoke-direct {v5, p0, p3, p4}, Landroid/support/v4/v6;-><init>(Lcom/wsw/cospa/activity/BackupActivity;Ljava/lang/String;Lcom/wsw/cospa/widget/view/Option;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/DialogTool;->s(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    return-void
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->this:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->mSaveComicAuto:Lcom/wsw/cospa/widget/view/CheckBoxPreference;

    const-string v2, "pref_auto_backup_comic"

    invoke-virtual {v0, v2, v1}, Lcom/wsw/cospa/widget/view/CheckBoxPreference;->bindPreference(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavRestore:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavStep:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavUrl:Lcom/wsw/cospa/widget/view/Option;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "web_dav_url"

    const-string v3, "https://dav.jianguoyun.com/dav/"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/Option;->setSummary(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "web_dav_account"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavAcccount:Lcom/wsw/cospa/widget/view/Option;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/Option;->setSummary(Ljava/lang/CharSequence;)V

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "web_dav_password"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity;->tvWebdavPassword:Lcom/wsw/cospa/widget/view/Option;

    const-string v1, "****************"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/Option;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public volatile()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/y6;->do:Landroid/support/v4/y6;

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    sget-object v1, Landroid/support/v4/k0;->do:Landroid/support/v4/k0;

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->goto(Lio/reactivex/SingleTransformer;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/BackupActivity$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/BackupActivity$if;-><init>(Lcom/wsw/cospa/activity/BackupActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
