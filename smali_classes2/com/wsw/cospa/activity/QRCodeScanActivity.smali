.class public Lcom/wsw/cospa/activity/QRCodeScanActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;


# static fields
.field public static final const:I = 0xca


# instance fields
.field private final break:[Ljava/lang/String;

.field private catch:Z

.field private class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field public fabFlashlight:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ad
    .end annotation
.end field

.field private final goto:I

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private final this:I

.field public zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904fa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/16 v0, 0xca

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->goto:I

    const/16 v0, 0x12f

    .line 3
    iput v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->this:I

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->break:[Ljava/lang/String;

    return-void
.end method

.method public static default(Landroid/app/Activity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/QRCodeScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xca

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/QRCodeScanActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->throws(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/QRCodeScanActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->static(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/QRCodeScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->switch(Landroid/view/View;)V

    return-void
.end method

.method private return()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xca

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Lcn/qqtheme/framework/picker/FilePicker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcn/qqtheme/framework/picker/FilePicker;-><init>(Landroid/app/Activity;I)V

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

    const/16 v1, 0x1e

    .line 8
    invoke-virtual {v0, v1}, Lcn/qqtheme/framework/picker/FilePicker;->J(I)V

    .line 9
    new-instance v1, Landroid/support/v4/hi1;

    invoke-direct {v1, p0}, Landroid/support/v4/hi1;-><init>(Lcom/wsw/cospa/activity/QRCodeScanActivity;)V

    invoke-virtual {v0, v1}, Lcn/qqtheme/framework/picker/FilePicker;->setOnFilePickListener(Lcn/qqtheme/framework/picker/FilePicker$OnFilePickListener;)V

    .line 10
    invoke-virtual {v0}, Lcn/qqtheme/framework/popup/do;->finally()V

    :goto_0
    return-void
.end method

.method private synthetic static(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic switch(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->catch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->catch:Z

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->catch:Z

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->native()V

    :goto_0
    return-void
.end method

.method private synthetic throws(Ljava/lang/Boolean;)V
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
    iget-object p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->extends()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->abstract()V

    :cond_0
    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public extends()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->extends()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->abstract()V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c003e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->abstract()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0xca

    if-ne p1, p2, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/default;->super(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {p2, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCameraAmbientBrightnessChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->super()V

    .line 2
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09006d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/QRCodeScanActivity;->return()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/support/v4/ji1;

    invoke-direct {v0, p0}, Landroid/support/v4/ji1;-><init>(Lcom/wsw/cospa/activity/QRCodeScanActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanQRCodeOpenCameraError()V
    .locals 0

    return-void
.end method

.method public onScanQRCodeSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/ii1;

    invoke-direct {v1, p0}, Landroid/support/v4/ii1;-><init>(Lcom/wsw/cospa/activity/QRCodeScanActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->continue()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "\u626b\u63cf\u4e8c\u7ef4\u7801"

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->zxingview:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/QRCodeScanActivity;->fabFlashlight:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Landroid/support/v4/gi1;

    invoke-direct {v1, p0}, Landroid/support/v4/gi1;-><init>(Lcom/wsw/cospa/activity/QRCodeScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
