.class public Lcom/wsw/cospa/activity/ShopMallActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# instance fields
.field public iv_qrcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090249
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ShopMallActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ShopMallActivity;->public(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ShopMallActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ShopMallActivity;->return(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic public(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080138

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

.method private synthetic return(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    const-string v0, "\u64cd\u4f5c"

    .line 2
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    new-instance v0, Landroid/support/v4/ox1;

    invoke-direct {v0, p0}, Landroid/support/v4/ox1;-><init>(Lcom/wsw/cospa/activity/ShopMallActivity;)V

    const-string v1, "\u4fdd\u5b58\u4e8c\u7ef4\u7801"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    const/4 p1, 0x0

    return p1
.end method

.method public static static(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ShopMallActivity;

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

.method public new()I
    .locals 1

    const v0, 0x7f0c0043

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ShopMallActivity;->iv_qrcode:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/px1;

    invoke-direct {v1, p0}, Landroid/support/v4/px1;-><init>(Lcom/wsw/cospa/activity/ShopMallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
