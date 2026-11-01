.class public Lcom/wsw/cospa/activity/AboutMeActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final goto:Ljava/lang/String; = "AboutMeActivity"


# instance fields
.field public doutuApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090148
    .end annotation
.end field

.field public likeApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090260
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public mashanglai_app:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field

.field public qqchannel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090342
    .end annotation
.end field

.field public qqgroup1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090343
    .end annotation
.end field

.field public qqgroup2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090344
    .end annotation
.end field

.field public qqgroup3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090345
    .end annotation
.end field

.field public qqgroup4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090346
    .end annotation
.end field

.field public qqgroup5:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090347
    .end annotation
.end field

.field public qqgroup6:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090348
    .end annotation
.end field

.field public qqgroup7:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090349
    .end annotation
.end field

.field public qqgroup8:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field public qqgrouppay1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034b
    .end annotation
.end field

.field public qqgrouppay2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034c
    .end annotation
.end field

.field public sdvLauncher:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090388
    .end annotation
.end field

.field public tvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c4
    .end annotation
.end field

.field public tv_rule:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a8
    .end annotation
.end field

.field public uninstallApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d5
    .end annotation
.end field

.field public xinfangyuanApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f6
    .end annotation
.end field

.field public yueduApp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f7
    .end annotation
.end field

.field public zhixun_app:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static public(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AboutMeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

.method public import(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public native()V
    .locals 4

    const v0, 0x7f110110

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/w2;->for(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const v2, 0x7f11010f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u7248\u672c\u63d0\u793a"

    invoke-direct {v1, v3, v0, v2}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/wsw/cospa/activity/AboutMeActivity$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/AboutMeActivity$do;-><init>(Lcom/wsw/cospa/activity/AboutMeActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c001c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "android.intent.category.BROWSABLE"

    const-string v1, "android.intent.action.VIEW"

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    const-string p1, "https://www.coolapk.com/apk/com.gedoor.monkeybook"

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_1
    :try_start_1
    const-string p1, "https://www.lanzous.com/b201988"

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "vlikLlOBxxBfl-uUjEtKsAYqSbKbDQDu"

    .line 12
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "jrtPwX3PgRJvMW81O9Z_HTGPnjWpKMQJ"

    .line 13
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "sPQSy_-LUk2XboBjnGQjcg1lC87aLaZ_"

    .line 14
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "Eftv9nJ6Gnz3IRJALCGkfH_j-HKcxIco"

    .line 15
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "YuGPxxqCnQZ4LAPxxxFrTDo-5Krvz1LW"

    .line 16
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "-k3tjJF32NYYKq6dKiUQ1nv-S7XKejKO"

    .line 17
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_8
    const-string p1, "MmcY5MPoYlAPGgY5vvwyM_sV25oPL3Ap"

    .line 18
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_9
    const-string p1, "M_cwr4PNcm_xGcJcYVtxJQ06vqGv8qSo"

    .line 19
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_a
    const-string p1, "kMZ8gmPasaQmm2qP0U4_tv1NzhIlQAjw"

    .line 20
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_b
    const-string p1, "dE4u-ejRGguX14Ggq2EHbKfQooaLZxkC"

    .line 21
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AboutMeActivity;->import(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_c
    :try_start_2
    const-string p1, "https://qun.qq.com/qqweb/qunpro/share?_wv=3&_wwv=128&inviteCode=mQMQX&from=246610&biz=ka"

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 23
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_0
    :try_start_3
    const-string p1, "https://bbs.qihangyuncc.cn/"

    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    :try_start_4
    const-string p1, "https://www.coolapk.com/apk/cn.ifreedomer.com.softmanager"

    .line 32
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 33
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_2
    const-string p1, "\u68c0\u67e5\u66f4\u65b0"

    const-string v0, "https://ghfast.top/https://github.com/ssmhdssmhd/Yiciyuan-Apk/releases"

    .line 37
    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/activity/WebViewActivity;->synchronized(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :sswitch_3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AboutMeActivity;->native()V

    goto :goto_0

    :sswitch_4
    :try_start_5
    const-string p1, "http://sms.zmide.com/"

    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 40
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_5
    :try_start_6
    const-string p1, "https://www.dzkm.app"

    .line 44
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 45
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    :catch_6
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_6
    :try_start_7
    const-string p1, "https://www.coolapk.com/apk/com.wsw.joke"

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 50
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_0

    :catch_7
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090148 -> :sswitch_6
        0x7f090260 -> :sswitch_5
        0x7f0902b0 -> :sswitch_4
        0x7f090388 -> :sswitch_3
        0x7f0904a8 -> :sswitch_2
        0x7f0904d5 -> :sswitch_1
        0x7f0904f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f090342
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0904f6
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

.method public this()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->tvVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/support/v4/w2;->for(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->doutuApp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->yueduApp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->uninstallApp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->likeApp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->xinfangyuanApp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->mashanglai_app:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->zhixun_app:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgrouppay2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup3:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup4:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup5:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup6:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup7:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqgroup8:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->qqchannel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->tv_rule:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/AboutMeActivity;->sdvLauncher:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
