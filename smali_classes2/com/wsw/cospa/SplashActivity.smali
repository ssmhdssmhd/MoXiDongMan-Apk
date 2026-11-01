.class public Lcom/wsw/cospa/SplashActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# static fields
.field private static final break:Ljava/lang/String; = "SplashActivity"


# instance fields
.field public appLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090094
    .end annotation
.end field

.field public container:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903bd
    .end annotation
.end field

.field private goto:Landroid/graphics/drawable/TransitionDrawable;

.field public ivSplash:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024c
    .end annotation
.end field

.field public logoContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090296
    .end annotation
.end field

.field public this:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/SplashActivity;->static()V

    return-void
.end method

.method private native()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/SplashActivity;->public()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v0, 0x400

    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private return([I)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic static()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method

.method private synthetic switch()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

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

    const v0, 0x7f0c0046

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x400

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0, p3}, Lcom/wsw/cospa/SplashActivity;->return([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/SplashActivity;->public()V

    goto :goto_0

    :cond_0
    const-string p1, "\u5e94\u7528\u7f3a\u5c11\u8bfb\u53d6\u624b\u673a\u72b6\u6001\u548c\u5b9a\u4f4d\u7684\u6743\u9650\uff01\u8bf7\u70b9\u51fb\"\u6743\u9650\"\uff0c\u6253\u5f00\u6240\u9700\u8981\u7684\u6743\u9650\u3002"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "package:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method public public()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f09024c

    .line 2
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v0, 0x7f090296

    .line 5
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/wsw/cospa/SplashActivity;->goto:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x3e8

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 9
    new-instance v0, Lcom/wsw/cospa/SplashActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/SplashActivity$if;-><init>(Lcom/wsw/cospa/SplashActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEnableGesture(Z)V

    .line 3
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object v0

    const v2, 0x7f060380

    invoke-virtual {v0, v2}, Lcom/gyf/immersionbar/else;->s0(I)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER"

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "show_privacy_dialog_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const/4 v1, 0x0

    const-string v2, "\u5f02\u6b21\u5143APP\u9690\u79c1\u653f\u7b56"

    const-string v3, "\u611f\u8c22\u60a8\u9009\u62e9\u5f02\u6b21\u5143APP!\u6211\u4eec\u975e\u5e38\u91cd\u89c6\u60a8\u7684\u4e2a\u4eba\u4fe1\u606f\u548c\u9690\u79c1\u4fdd\u62a4\u3002\u4e3a\u4e86\u66f4\u597d\u5730\u4fdd\u969c\u60a8\u7684\u4e2a\u4eba\u6743\u76ca\uff0c\u5728\u60a8\u4f7f\u7528\u6211\u4eec\u7684\u4ea7\u54c1\u524d\uff0c\u8bf7\u52a1\u5fc5\u5ba1\u614e\u9605\u8bfb\u300a\u9690\u79c1\u653f\u7b56\u300b\u5185\u7684\u6240\u6709\u6761\u6b3e\uff0c\u60a8\u70b9\u51fb\u201d\u540c\u610f\u5e76\u7ee7\u7eed\u201d\u7684\u884c\u4e3a\u5373\u8868\u793a\u60a8\u5df2\u9605\u8bfb\u5b8c\u6bd5\u5e76\u540c\u610f\u4ee5\u4e0a\u534f\u8bae\u7684\u5168\u90e8\u5185\u5bb9\u3002\u5f00\u59cb\u4f7f\u7528\u6211\u4eec\u7684\u4ea7\u54c1\u548c\u670d\u52a1"

    invoke-direct {v0, v2, v1, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u540c\u610f\u5e76\u7ee7\u7eed"

    const-string v3, "\u4e0d\u540c\u610f"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/wsw/cospa/SplashActivity$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/SplashActivity$do;-><init>(Lcom/wsw/cospa/SplashActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->w(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    goto :goto_0

    :cond_1
    const-string v0, "5f816b5194846f78a96ee7fe"

    const-string v2, "Umeng"

    const-string v3, ""

    .line 13
    invoke-static {p0, v0, v2, v1, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/SplashActivity;->throws()V

    :goto_0
    return-void
.end method

.method public throws()V
    .locals 12

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_gdt_ad_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v3, 0x17

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/SplashActivity;->native()V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/SplashActivity;->public()V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "CLOSE_GDT_AD_TIME"

    invoke-virtual {v0, v4}, Landroid/support/v4/v02;->new(Ljava/lang/String;)J

    move-result-wide v4

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd :hh:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNotificationTask: now time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "www"

    invoke-static {v8, v7}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v9, 0x3

    .line 11
    invoke-virtual {v6, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 12
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNotificationTask: after time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_3

    cmp-long v0, v8, v6

    if-lez v0, :cond_3

    .line 17
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/SplashActivity;->native()V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/SplashActivity;->public()V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->logoContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity;->ivSplash:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/wsw/cospa/SplashActivity;->goto:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x3e8

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 25
    new-instance v0, Landroid/support/v4/z02;

    invoke-direct {v0, p0}, Landroid/support/v4/z02;-><init>(Lcom/wsw/cospa/SplashActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
