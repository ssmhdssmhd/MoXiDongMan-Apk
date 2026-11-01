.class public Lcom/wsw/cospa/activity/DonateActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# instance fields
.field public ivDonate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023c
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

.field public tvZhbhb:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ca
    .end annotation
.end field

.field public tvZhbsk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic default(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/activity/DonateActivity;->static(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic extends(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08009f

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    invoke-static {p0, p2}, Lcom/wsw/cospa/utils/this;->break(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u53bb\u8bbe\u7f6e\u6253\u5f00\u6587\u4ef6\u8bfb\u5199\u6743\u9650"

    .line 5
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic finally(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    const-string v0, "\u64cd\u4f5c"

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    new-instance v0, Landroid/support/v4/a20;

    invoke-direct {v0, p0}, Landroid/support/v4/a20;-><init>(Lcom/wsw/cospa/activity/DonateActivity;)V

    const-string v1, "\u4fdd\u5b58\u4e8c\u7ef4\u7801\u56fe\u7247"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/DonateActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DonateActivity;->finally(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/DonateActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/DonateActivity;->extends(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static package(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/DonateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/DonateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DonateActivity;->default(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/DonateActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DonateActivity;->throws(Landroid/view/View;)V

    return-void
.end method

.method public static static(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "fkx07508pbyt3kopdajxmcb"

    const-string v1, "utf-8"

    .line 1
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alipayqr://platformapi/startapp?saId=10000007&qrcode=https://qr.alipay.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static switch(Landroid/content/Context;)V
    .locals 3

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "hongbao"

    const-string v2, "637807319"

    .line 2
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "\u7ea2\u5305\u7801\u5df2\u590d\u5236\n\u652f\u4ed8\u5b9d\u9996\u9875\u641c\u7d22\u201c637807319\u201d \u7acb\u5373\u9886\u7ea2\u5305"

    .line 4
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.eg.android.AlipayGphone"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic throws(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/activity/AliPayPacketActivity;->import(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->tvZhbhb:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/c20;

    invoke-direct {v1, p0}, Landroid/support/v4/c20;-><init>(Lcom/wsw/cospa/activity/DonateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->tvZhbsk:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/b20;

    invoke-direct {v1, p0}, Landroid/support/v4/b20;-><init>(Lcom/wsw/cospa/activity/DonateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->ivDonate:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/d20;

    invoke-direct {v1, p0}, Landroid/support/v4/d20;-><init>(Lcom/wsw/cospa/activity/DonateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
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
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/DonateActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
