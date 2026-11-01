.class Lcn/bingoogolapple/qrcode/core/QRCodeView$try;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->default(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcn/bingoogolapple/qrcode/core/QRCodeView;


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;->if:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;->do:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;->if:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    new-instance v0, Landroid/support/v4/zr1;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;->do:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/zr1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->while(Landroid/support/v4/zr1;)V

    return-void
.end method
