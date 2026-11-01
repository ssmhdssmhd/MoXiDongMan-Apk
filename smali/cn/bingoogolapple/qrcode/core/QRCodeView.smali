.class public abstract Lcn/bingoogolapple/qrcode/core/QRCodeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;
    }
.end annotation


# static fields
.field private static final import:I = 0x96

.field private static final native:I = 0x3c

.field private static final throw:I = -0x1

.field private static final while:[J


# instance fields
.field public break:Lcn/bingoogolapple/qrcode/core/do;

.field public case:Lcn/bingoogolapple/qrcode/core/for;

.field private catch:J

.field private class:Landroid/animation/ValueAnimator;

.field private const:J

.field public do:Landroid/hardware/Camera;

.field public else:I

.field private final:J

.field public for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

.field private goto:[Landroid/graphics/PointF;

.field public if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

.field public new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

.field private super:I

.field private this:Landroid/graphics/Paint;

.field public try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->while:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xff
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    .line 4
    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else:I

    .line 5
    sget-object v0, Lcn/bingoogolapple/qrcode/core/do;->HIGH_FREQUENCY:Lcn/bingoogolapple/qrcode/core/do;

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->break:Lcn/bingoogolapple/qrcode/core/do;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->catch:J

    .line 7
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->const:J

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->final:J

    .line 9
    iput p3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->super:I

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->switch()V

    return-void
.end method

.method private break([Landroid/graphics/PointF;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_6

    .line 2
    array-length v0, p1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->const:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4b0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 7
    :cond_4
    aget-object v3, p1, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 8
    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 9
    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 10
    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    .line 11
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v4, p1

    .line 12
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float v3, v3, v3

    mul-float p1, p1, p1

    add-float/2addr v3, p1

    float-to-double v3, v3

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 14
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v3}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getRectWidth()I

    move-result v3

    .line 15
    div-int/lit8 v3, v3, 0x4

    if-le p1, v3, :cond_5

    return v1

    .line 16
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v8

    .line 17
    div-int/lit8 v7, v8, 0x4

    .line 18
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v6

    .line 19
    new-instance p1, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;

    move-object v4, p1

    move-object v5, p0

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcn/bingoogolapple/qrcode/core/QRCodeView$for;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;IIILjava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private class(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-direct {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    .line 2
    new-instance v1, Lcn/bingoogolapple/qrcode/core/QRCodeView$do;

    invoke-direct {v1, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$do;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setDelegate(Lcn/bingoogolapple/qrcode/core/CameraPreview$Delegate;)V

    .line 3
    new-instance v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-direct {v0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    .line 4
    invoke-virtual {v0, p0, p2}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/util/AttributeSet;)V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    sget v1, Lcn/bingoogolapple/qrcode/core/R$id;->bgaqrcode_camera_preview:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V

    .line 6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p1

    const/4 p2, 0x6

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p1

    const/16 p2, 0x8

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->this:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->getScanBoxView()Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getCornerColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->this:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private default(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    .line 2
    new-instance p2, Lcn/bingoogolapple/qrcode/core/QRCodeView$new;

    invoke-direct {p2, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$new;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    new-instance p2, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;

    invoke-direct {p2, p0, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView$try;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x258

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->const:J

    return-void
.end method

.method public static synthetic do(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->static()V

    return-void
.end method

.method private goto(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    :try_start_0
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 4
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static synthetic if(Lcn/bingoogolapple/qrcode/core/QRCodeView;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->default(IILjava/lang/String;)V

    return-void
.end method

.method private interface(FFFFZILandroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/p6;->const(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float p5, v0

    div-float v0, p5, p4

    int-to-float v1, v1

    div-float v2, v1, p3

    .line 4
    new-instance v3, Landroid/graphics/PointF;

    sub-float/2addr p4, p1

    mul-float p4, p4, v0

    sub-float/2addr p3, p2

    mul-float p3, p3, v2

    invoke-direct {v3, p4, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5
    iget p1, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 6
    iget p1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p5, p1

    iput p5, v3, Landroid/graphics/PointF;->x:F

    if-nez p7, :cond_1

    int-to-float p1, p6

    add-float/2addr v1, p1

    .line 7
    iput v1, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    int-to-float p6, v0

    div-float p3, p6, p3

    int-to-float v0, v1

    div-float/2addr v0, p4

    .line 8
    new-instance v3, Landroid/graphics/PointF;

    mul-float p1, p1, p3

    mul-float p2, p2, v0

    invoke-direct {v3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p5, :cond_1

    .line 9
    iget p1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p6, p1

    iput p6, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    :goto_0
    if-eqz p7, :cond_2

    .line 10
    iget p1, v3, Landroid/graphics/PointF;->y:F

    iget p2, p7, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v3, Landroid/graphics/PointF;->y:F

    .line 11
    iget p1, v3, Landroid/graphics/PointF;->x:F

    iget p2, p7, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    return-object v3
.end method

.method private package(I)V
    .locals 1

    .line 1
    :try_start_0
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else:I

    .line 2
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeOpenCameraError()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private this([BLandroid/hardware/Camera;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->case()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->final:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    .line 4
    :cond_1
    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->final:J

    .line 5
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 6
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const-wide/16 v1, 0x0

    mul-int v0, v0, p2

    int-to-long v3, v0

    const/16 p2, 0xa

    .line 7
    array-length v0, p1

    int-to-float v0, v0

    long-to-float v5, v3

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v5, v5, v6

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    int-to-long v6, v5

    cmp-long v8, v6, v3

    if-gez v8, :cond_2

    .line 8
    aget-byte v6, p1, v5

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-long/2addr v1, v6

    add-int/lit8 v5, v5, 0xa

    goto :goto_0

    :cond_2
    int-to-long p1, p2

    .line 9
    div-long/2addr v3, p1

    div-long/2addr v1, v3

    .line 10
    sget-object p1, Lcn/bingoogolapple/qrcode/core/QRCodeView;->while:[J

    array-length p2, p1

    .line 11
    iget v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->super:I

    rem-int/2addr v3, p2

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->super:I

    aput-wide v1, p1, v3

    const/4 p2, 0x1

    add-int/2addr v3, p2

    .line 12
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->super:I

    .line 13
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-wide v5, p1, v4

    const-wide/16 v7, 0x3c

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 14
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6444\u50cf\u5934\u73af\u5883\u4eae\u5ea6\u4e3a\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz p1, :cond_5

    .line 16
    invoke-interface {p1, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onCameraAmbientBrightnessChanged(Z)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public abstract()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->private()V

    .line 2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->throws()V

    return-void
.end method

.method public case(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/bingoogolapple/qrcode/core/for;

    invoke-direct {v0, p1, p0}, Lcn/bingoogolapple/qrcode/core/for;-><init>(Landroid/graphics/Bitmap;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/for;->new()Lcn/bingoogolapple/qrcode/core/for;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    return-void
.end method

.method public catch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public continue()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->volatile()V

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->class()V

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 6
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->final()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto:[Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->this:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto:[Landroid/graphics/PointF;

    const-wide/16 v0, 0x7d0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->postInvalidateDelayed(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/bingoogolapple/qrcode/core/for;

    invoke-direct {v0, p1, p0}, Lcn/bingoogolapple/qrcode/core/for;-><init>(Ljava/lang/String;Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/for;->new()Lcn/bingoogolapple/qrcode/core/for;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    return-void
.end method

.method public extends()V
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else:I

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->finally(I)V

    return-void
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public finally(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->package(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 4
    invoke-direct {p0, v2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto(I)I

    move-result v0

    :cond_3
    :goto_0
    if-eq v0, v1, :cond_4

    .line 6
    invoke-direct {p0, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->package(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public getCameraPreview()Lcn/bingoogolapple/qrcode/core/CameraPreview;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    return-object v0
.end method

.method public getIsScanBarcodeStyle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    return v0
.end method

.method public getScanBoxView()Lcn/bingoogolapple/qrcode/core/ScanBoxView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    return-object v0
.end method

.method public import(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->else(Landroid/graphics/Rect;)V

    return-void
.end method

.method public native()V
    .locals 3

    .line 1
    new-instance v0, Lcn/bingoogolapple/qrcode/core/QRCodeView$if;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView$if;-><init>(Lcn/bingoogolapple/qrcode/core/QRCodeView;)V

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    .line 2
    invoke-virtual {v1}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->case()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1f4

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->getIsBarcode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->class:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/support/v4/p6;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e24\u6b21 onPreviewFrame \u65f6\u95f4\u95f4\u9694\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->catch:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p6;->try(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->catch:J

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->case()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->this([BLandroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    .line 8
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lcn/bingoogolapple/qrcode/core/for;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/p6;->const(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, p2, p1, p0, v1}, Lcn/bingoogolapple/qrcode/core/for;-><init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/QRCodeView;Z)V

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/for;->new()Lcn/bingoogolapple/qrcode/core/for;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    :cond_3
    :goto_1
    return-void
.end method

.method public private()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    .line 2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->extends()V

    .line 3
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->static()V

    return-void
.end method

.method public protected([Landroid/graphics/PointF;Landroid/graphics/Rect;ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    .line 1
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 3
    iget v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->else:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/p6;->catch(Landroid/content/Context;)I

    move-result v13

    .line 5
    array-length v1, v0

    new-array v14, v1, [Landroid/graphics/PointF;

    .line 6
    array-length v15, v0

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v8, v15, :cond_2

    aget-object v1, v0, v8

    .line 7
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v1, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v1

    iget v1, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v1

    move-object/from16 v1, p0

    move v6, v12

    move v7, v13

    move/from16 v17, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->interface(FFFFZILandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v1

    aput-object v1, v14, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v8, v17, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iput-object v14, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto:[Landroid/graphics/PointF;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->postInvalidate()V

    if-eqz p3, :cond_3

    move-object/from16 v0, p4

    .line 10
    invoke-direct {v9, v14, v0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->break([Landroid/graphics/PointF;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_3
    return v10

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 11
    iput-object v1, v9, Lcn/bingoogolapple/qrcode/core/QRCodeView;->goto:[Landroid/graphics/PointF;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return v10
.end method

.method public abstract public(Landroid/graphics/Bitmap;)Landroid/support/v4/zr1;
.end method

.method public abstract return([BIIZ)Landroid/support/v4/zr1;
.end method

.method public setDelegate(Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    return-void
.end method

.method public strictfp()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/for;->do()V

    .line 4
    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->case:Lcn/bingoogolapple/qrcode/core/for;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public super()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->continue()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    return-void
.end method

.method public abstract switch()V
.end method

.method public throw(Landroid/support/v4/zr1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/support/v4/zr1;->do:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-interface {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->for:Lcn/bingoogolapple/qrcode/core/ScanBoxView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public try()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->if:Lcn/bingoogolapple/qrcode/core/CameraPreview;

    invoke-virtual {v0}, Lcn/bingoogolapple/qrcode/core/CameraPreview;->if()V

    return-void
.end method

.method public volatile()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->strictfp()V

    .line 2
    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->catch()V

    return-void
.end method

.method public while(Landroid/support/v4/zr1;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p1, Landroid/support/v4/zr1;->do:Ljava/lang/String;

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->do:Landroid/hardware/Camera;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->try:Z

    .line 8
    :try_start_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/QRCodeView;->new:Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1}, Lcn/bingoogolapple/qrcode/core/QRCodeView$Delegate;->onScanQRCodeSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
