.class Lcn/bingoogolapple/qrcode/core/QRCodeView$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/qrcode/core/QRCodeView;->break([Landroid/graphics/PointF;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic for:I

.field public final synthetic if:I

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcn/bingoogolapple/qrcode/core/QRCodeView;


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->try:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iput p2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->do:I

    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->if:I

    iput p4, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->for:I

    iput-object p5, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->new:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->try:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->do:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->if:I

    add-int/2addr v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->for:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if(Lcn/bingoogolapple/qrcode/core/QRCodeView;IILjava/lang/String;)V

    return-void
.end method
