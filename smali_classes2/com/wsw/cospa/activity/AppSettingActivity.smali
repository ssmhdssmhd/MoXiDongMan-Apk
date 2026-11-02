.class public Lcom/wsw/cospa/activity/AppSettingActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final goto:Ljava/lang/String; = "AppSettingActivity"


# instance fields
.field public adManagerView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901df
    .end annotation
.end field

.field public backupSettingView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a5
    .end annotation
.end field

.field public cleanCacheView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fd
    .end annotation
.end field

.field public comicSettingView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010c
    .end annotation
.end field

.field public donateView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field public feedbackView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field public filePathView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bc
    .end annotation
.end field

.field public ll_dark_mode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027e
    .end annotation
.end field

.field public ll_privacy_protocol:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090287
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

.field public statusBarView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d7
    .end annotation
.end field

.field public tvCacheSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090464
    .end annotation
.end field

.field public video_ad_view:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904dd
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/AppSettingActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AppSettingActivity;->public(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic public(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->new(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->if()V

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/native;->catch(Ljava/io/File;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/native;->catch(Ljava/io/File;)Z

    const-string v0, ""

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static static(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static switch(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

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

.method public native()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->new(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->for()V

    .line 2
    new-instance v0, Landroid/support/v4/y2;

    invoke-direct {v0, p0}, Landroid/support/v4/y2;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V

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

    new-instance v1, Lcom/wsw/cospa/activity/AppSettingActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AppSettingActivity$do;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0042

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "\u9690\u79c1\u653f\u7b56"

    const-string v0, "file:///android_asset/yszc.html"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/activity/WebViewActivity;->synchronized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-static {p0}, Lcom/wsw/cospa/activity/ThemeConfigActivity;->import(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AppSettingActivity;->return()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-static {p0}, Lcom/wsw/cospa/activity/AppFileActivity;->abstract(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-static {p0}, Lcom/wsw/cospa/activity/FeedbackActivity;->import(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-static {p0}, Lcom/wsw/cospa/activity/DonateActivity;->package(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :sswitch_6
    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicSettingActivity;->default(Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :sswitch_7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AppSettingActivity;->native()V

    goto :goto_0

    .line 11
    :sswitch_8
    invoke-static {p0}, Lcom/wsw/cospa/activity/BackupActivity;->interface(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_9
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/else;->try(Landroid/content/Context;Z)V

    goto :goto_0

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a5 -> :sswitch_8
        0x7f0900fd -> :sswitch_7
        0x7f09010c -> :sswitch_6
        0x7f090147 -> :sswitch_5
        0x7f0901b6 -> :sswitch_4
        0x7f0901bc -> :sswitch_3
        0x7f0901df -> :sswitch_2
        0x7f09027e -> :sswitch_1
        0x7f090287 -> :sswitch_0
        0x7f090291 -> :sswitch_9
    .end sparse-switch
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

.method public return()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_gdt_ad_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    const-string v3, "\u5e7f\u544a\u7ba1\u7406"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v4, "\u5f00\u53d1\u8005\u4e5f\u8ba8\u538c\u5e7f\u544a\uff0c\u53ef\u662f\u6ca1\u6709\u5e7f\u544a\uff0c\u54ea\u6765\u7cbe\u529b\u7ef4\u62a4\u56fe\u6e90\uff0c\u54ea\u6765\u7cbe\u529b\u7ef4\u62a4APP\uff0c\u54ea\u6765\u6536\u76ca\u7ed9\u5927\u4f6c\u4eec\u4e70\u8fa3\u6761\u548c\u80a5\u4ed4\u5feb\u4e50\u6c34\u5462\uff1f\n\u771f\u7684\u5f88\u65e0\u5948\u554a"

    invoke-direct {v0, v3, v2, v4}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v3, "\u5173\u95ed\u5e7f\u544a"

    invoke-direct {v2, v3, v1}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/wsw/cospa/activity/AppSettingActivity$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AppSettingActivity$if;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V

    invoke-static {p0, v0, v2, v1}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v4, "\u5f00\u53d1\u8005\u4e5f\u8ba8\u538c\u5e7f\u544a\uff0c\u53ef\u662f\u6ca1\u6709\u5e7f\u544a\uff0c\u54ea\u6765\u7cbe\u529b\u7ef4\u62a4\u56fe\u6e90\uff0c\u54ea\u6765\u7cbe\u529b\u7ef4\u62a4APP\uff0c\u54ea\u6765\u6536\u76ca\u7ed9\u5927\u4f6c\u4eec\u4e70\u8fa3\u6761\u548c\u80a5\u4ed4\u5feb\u4e50\u6c34\u5462\uff1f\n\u6211\u4e5f\u5f88\u65e0\u5948\u554a"

    invoke-direct {v0, v3, v2, v4}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v3, "\u5f00\u542f\u5e7f\u544a"

    invoke-direct {v2, v3, v1}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/wsw/cospa/activity/AppSettingActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AppSettingActivity$for;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V

    invoke-static {p0, v0, v2, v1}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    :goto_0
    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->filePathView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->comicSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->backupSettingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->cleanCacheView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->donateView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->feedbackView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->adManagerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->video_ad_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_privacy_protocol:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 17
    invoke-static {p0}, Lcom/wsw/cospa/utils/native;->super(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/wsw/cospa/activity/AppSettingActivity;->tvCacheSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    const v0, 0x7f090291

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0904c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/VersionBadge;->do(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method
