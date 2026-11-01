.class Lcn/bingoogolapple/qrcode/core/CameraPreview$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/CameraPreview;->new(FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcn/bingoogolapple/qrcode/core/CameraPreview;


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$do;->do:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u5bf9\u7126\u6d4b\u5149\u6210\u529f"

    .line 1
    invoke-static {p1}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5bf9\u7126\u6d4b\u5149\u5931\u8d25"

    .line 2
    invoke-static {p1}, Landroid/support/v4/p6;->goto(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/CameraPreview$do;->do:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-static {p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->do(Lcn/bingoogolapple/qrcode/core/CameraPreview;)V

    return-void
.end method
