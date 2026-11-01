.class public Lcn/bingoogolapple/qrcode/core/ScanBoxView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Z

.field private abstract:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private break:I

.field private c:Landroid/graphics/Bitmap;

.field private case:Landroid/graphics/Paint;

.field private catch:I

.field private class:I

.field private const:I

.field private continue:Ljava/lang/String;

.field private d:F

.field private default:F

.field private do:I

.field private e:F

.field private else:Landroid/text/TextPaint;

.field private extends:I

.field private f:Landroid/graphics/Bitmap;

.field private final:I

.field private finally:I

.field private for:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Bitmap;

.field private goto:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private if:I

.field private implements:I

.field private import:I

.field private instanceof:Z

.field private interface:Z

.field private j:F

.field private k:Landroid/text/StaticLayout;

.field private l:I

.field private m:Z

.field private n:Z

.field private native:Z

.field private new:F

.field private o:Z

.field private p:Lcn/bingoogolapple/qrcode/core/QRCodeView;

.field private package:Z

.field private private:Ljava/lang/String;

.field private protected:I

.field private public:Landroid/graphics/drawable/Drawable;

.field private return:Landroid/graphics/Bitmap;

.field private static:I

.field private strictfp:I

.field private super:I

.field private switch:I

.field private synchronized:Z

.field private this:I

.field private throw:I

.field private throws:I

.field private transient:Z

.field private try:F

.field private volatile:I

.field private while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v0, "#33FFFFFF"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 6
    invoke-static {p1, v2}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    const/high16 v3, 0x40400000    # 3.0f

    .line 7
    invoke-static {p1, v3}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p1, v3}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    .line 9
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    const/high16 v4, 0x42b40000    # 90.0f

    .line 10
    invoke-static {p1, v4}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    const/high16 v4, 0x43480000    # 200.0f

    .line 11
    invoke-static {p1, v4}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    const/high16 v4, 0x430c0000    # 140.0f

    .line 12
    invoke-static {p1, v4}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    const/4 v4, 0x0

    .line 13
    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    .line 14
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    const/4 v5, 0x0

    .line 15
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    .line 17
    invoke-static {p1, v3}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    .line 18
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    const/16 v3, 0x3e8

    .line 19
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 20
    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    .line 21
    iput v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->extends:I

    .line 22
    iput v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    .line 23
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    const/high16 v3, 0x40000000    # 2.0f

    .line 24
    invoke-static {p1, v3}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    .line 25
    iput-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    const/high16 v3, 0x41600000    # 14.0f

    .line 26
    invoke-static {p1, v3}, Landroid/support/v4/p6;->while(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    .line 27
    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    .line 28
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    .line 29
    invoke-static {p1, v2}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    .line 30
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    const-string v0, "#22000000"

    .line 31
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    .line 32
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    .line 33
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    .line 34
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    .line 36
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 37
    invoke-static {p1, v0}, Landroid/support/v4/p6;->else(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    .line 38
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    .line 39
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->n:Z

    .line 40
    iput-boolean v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->o:Z

    return-void
.end method

.method private break(ILandroid/content/res/TypedArray;)V
    .locals 1

    .line 1
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_topOffset:I

    if-ne p1, v0, :cond_0

    .line 2
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    goto/16 :goto_0

    .line 3
    :cond_0
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerSize:I

    if-ne p1, v0, :cond_1

    .line 4
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    goto/16 :goto_0

    .line 5
    :cond_1
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerLength:I

    if-ne p1, v0, :cond_2

    .line 6
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    goto/16 :goto_0

    .line 7
    :cond_2
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineSize:I

    if-ne p1, v0, :cond_3

    .line 8
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    goto/16 :goto_0

    .line 9
    :cond_3
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_rectWidth:I

    if-ne p1, v0, :cond_4

    .line 10
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    goto/16 :goto_0

    .line 11
    :cond_4
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_maskColor:I

    if-ne p1, v0, :cond_5

    .line 12
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    goto/16 :goto_0

    .line 13
    :cond_5
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerColor:I

    if-ne p1, v0, :cond_6

    .line 14
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    goto/16 :goto_0

    .line 15
    :cond_6
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineColor:I

    if-ne p1, v0, :cond_7

    .line 16
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    goto/16 :goto_0

    .line 17
    :cond_7
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_scanLineMargin:I

    if-ne p1, v0, :cond_8

    .line 18
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    goto/16 :goto_0

    .line 19
    :cond_8
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowDefaultScanLineDrawable:I

    if-ne p1, v0, :cond_9

    .line 20
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    goto/16 :goto_0

    .line 21
    :cond_9
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_customScanLineDrawable:I

    if-ne p1, v0, :cond_a

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 23
    :cond_a
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_borderSize:I

    if-ne p1, v0, :cond_b

    .line 24
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    goto/16 :goto_0

    .line 25
    :cond_b
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_borderColor:I

    if-ne p1, v0, :cond_c

    .line 26
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    goto/16 :goto_0

    .line 27
    :cond_c
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_animTime:I

    if-ne p1, v0, :cond_d

    .line 28
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    goto/16 :goto_0

    .line 29
    :cond_d
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_verticalBias:I

    if-ne p1, v0, :cond_e

    .line 30
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    goto/16 :goto_0

    .line 31
    :cond_e
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_cornerDisplayType:I

    if-ne p1, v0, :cond_f

    .line 32
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->extends:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->extends:I

    goto/16 :goto_0

    .line 33
    :cond_f
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_toolbarHeight:I

    if-ne p1, v0, :cond_10

    .line 34
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    goto/16 :goto_0

    .line 35
    :cond_10
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_barcodeRectHeight:I

    if-ne p1, v0, :cond_11

    .line 36
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    goto/16 :goto_0

    .line 37
    :cond_11
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isBarcode:I

    if-ne p1, v0, :cond_12

    .line 38
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    goto/16 :goto_0

    .line 39
    :cond_12
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_barCodeTipText:I

    if-ne p1, v0, :cond_13

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->abstract:Ljava/lang/String;

    goto/16 :goto_0

    .line 41
    :cond_13
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_qrCodeTipText:I

    if-ne p1, v0, :cond_14

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->private:Ljava/lang/String;

    goto/16 :goto_0

    .line 43
    :cond_14
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextSize:I

    if-ne p1, v0, :cond_15

    .line 44
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    goto/16 :goto_0

    .line 45
    :cond_15
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextColor:I

    if-ne p1, v0, :cond_16

    .line 46
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    goto/16 :goto_0

    .line 47
    :cond_16
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isTipTextBelowRect:I

    if-ne p1, v0, :cond_17

    .line 48
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    goto/16 :goto_0

    .line 49
    :cond_17
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipTextMargin:I

    if-ne p1, v0, :cond_18

    .line 50
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    goto/16 :goto_0

    .line 51
    :cond_18
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowTipTextAsSingleLine:I

    if-ne p1, v0, :cond_19

    .line 52
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    goto :goto_0

    .line 53
    :cond_19
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowTipBackground:I

    if-ne p1, v0, :cond_1a

    .line 54
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    goto :goto_0

    .line 55
    :cond_1a
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_tipBackgroundColor:I

    if-ne p1, v0, :cond_1b

    .line 56
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    goto :goto_0

    .line 57
    :cond_1b
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isScanLineReverse:I

    if-ne p1, v0, :cond_1c

    .line 58
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    goto :goto_0

    .line 59
    :cond_1c
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowDefaultGridScanLineDrawable:I

    if-ne p1, v0, :cond_1d

    .line 60
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    goto :goto_0

    .line 61
    :cond_1d
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_customGridScanLineDrawable:I

    if-ne p1, v0, :cond_1e

    .line 62
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 63
    :cond_1e
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isOnlyDecodeScanBoxArea:I

    if-ne p1, v0, :cond_1f

    .line 64
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    goto :goto_0

    .line 65
    :cond_1f
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isShowLocationPoint:I

    if-ne p1, v0, :cond_20

    .line 66
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->n:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->n:Z

    goto :goto_0

    .line 67
    :cond_20
    sget v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView_qrcv_isAutoZoom:I

    if-ne p1, v0, :cond_21

    .line 68
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->o:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->o:Z

    :cond_21
    :goto_0
    return-void
.end method

.method private case(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v7, v6

    add-float/2addr v2, v7

    iget v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->e:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    int-to-float v5, v6

    sub-float/2addr v1, v5

    invoke-direct {v0, v4, v2, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_0

    .line 7
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 8
    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 9
    :cond_0
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v1, v2

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v5, v4

    add-float/2addr v1, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    int-to-float v2, v4

    sub-float v6, v0, v2

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v4, v5

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v7, v6

    add-float/2addr v4, v7

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    add-float/2addr v7, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    int-to-float v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->d:F

    invoke-direct {v0, v4, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    .line 19
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_4

    .line 21
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 22
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 23
    :cond_4
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 24
    :cond_5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v3, v4

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v6, v5

    add-float/2addr v3, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    int-to-float v4, v5

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v6

    invoke-direct {v0, v3, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 27
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 28
    :cond_6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v1, v2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    int-to-float v4, v3

    add-float v6, v1, v4

    iget v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    int-to-float v1, v3

    sub-float v8, v0, v1

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    int-to-float v0, v0

    add-float v9, v7, v0

    iget-object v10, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/bingoogolapple/qrcode/core/R$mipmap;->qrcode_default_grid_scan_line:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    .line 5
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    invoke-static {v0, v1}, Landroid/support/v4/p6;->final(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Landroid/support/v4/p6;->do(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->i:Landroid/graphics/Bitmap;

    .line 7
    invoke-static {v0, v1}, Landroid/support/v4/p6;->do(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->i:Landroid/graphics/Bitmap;

    .line 8
    invoke-static {v0, v1}, Landroid/support/v4/p6;->do(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->i:Landroid/graphics/Bitmap;

    .line 9
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 10
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/bingoogolapple/qrcode/core/R$mipmap;->qrcode_default_scan_line:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    .line 13
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    invoke-static {v0, v2}, Landroid/support/v4/p6;->final(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    .line 14
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v4/p6;->do(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->g:Landroid/graphics/Bitmap;

    .line 15
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    .line 17
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 18
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 19
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->setIsBarcode(Z)V

    return-void
.end method

.method private else(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 10
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    add-int/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v0, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    .line 12
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v1, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    add-int v6, v4, v5

    iget v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-int/2addr v4, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    .line 15
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v3, v6, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 18
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 23
    :cond_4
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    if-eqz v0, :cond_5

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    add-float/2addr v0, v6

    iget-object v6, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-direct {v3, v1, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 33
    :cond_5
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    .line 34
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v5, v7

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-direct {v0, v3, v1, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 36
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 39
    :cond_7
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    :goto_3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_4
    return-void
.end method

.method private for(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private if()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    add-int/2addr v3, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    add-int/2addr v4, v2

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    .line 3
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    .line 4
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->e:F

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->d:F

    .line 6
    :goto_0
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->p:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->p:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcn/bingoogolapple/qrcode/core/QRCodeView;->import(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private new(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->extends:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    add-float v7, v1, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    add-float v6, v0, v2

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    add-float v6, v0, v2

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    add-float v7, v1, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v0, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    sub-float v6, v0, v2

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    sub-float v7, v1, v2

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v0, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    int-to-float v2, v2

    sub-float v6, v0, v2

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    add-float v6, v0, v4

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    int-to-float v1, v1

    add-float v7, v1, v3

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    add-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    add-float v6, v0, v4

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    int-to-float v1, v1

    sub-float v7, v1, v3

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    add-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 18
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    add-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    int-to-float v1, v1

    add-float v7, v1, v3

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v4

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float v5, v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    int-to-float v1, v1

    sub-float v7, v1, v3

    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v9, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private public()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 3
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    .line 4
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    .line 5
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    if-eqz v2, :cond_2

    .line 8
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 9
    :cond_1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    neg-int v0, v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    goto/16 :goto_0

    .line 10
    :cond_2
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try:F

    goto/16 :goto_0

    .line 12
    :cond_3
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->e:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->e:F

    .line 13
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 14
    iget v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->e:F

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 16
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    .line 17
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    .line 18
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 20
    :cond_5
    iget-boolean v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    if-eqz v2, :cond_7

    .line 21
    iget v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_6

    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    cmpg-float v0, v1, v0

    if-gez v0, :cond_9

    .line 22
    :cond_6
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    neg-int v0, v0

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    goto :goto_0

    .line 23
    :cond_7
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 24
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new:F

    goto :goto_0

    .line 25
    :cond_8
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->d:F

    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->d:F

    .line 26
    iget-object v2, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 27
    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->d:F

    .line 28
    :cond_9
    :goto_0
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if:I

    int-to-long v2, v0

    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method private return()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    if-eqz v1, :cond_5

    .line 3
    :cond_1
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->g:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 5
    :cond_2
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->f:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->i:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 8
    :cond_4
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->h:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->c:Landroid/graphics/Bitmap;

    .line 9
    :cond_5
    :goto_1
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    .line 10
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->abstract:Ljava/lang/String;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    .line 11
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    .line 12
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if:I

    goto :goto_2

    .line 13
    :cond_6
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->private:Ljava/lang/String;

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    .line 14
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    .line 15
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do:I

    int-to-float v2, v2

    mul-float v3, v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if:I

    .line 16
    :goto_2
    iget-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 17
    iget-boolean v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    if-eqz v1, :cond_7

    .line 18
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    iget-object v4, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/p6;->break(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Point;->x:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    goto :goto_3

    .line 19
    :cond_7
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v11, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    iget-object v12, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v13, v2, v3

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    .line 20
    :cond_8
    :goto_3
    iget v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/p6;->break(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/p6;->catch(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 22
    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    if-nez v2, :cond_9

    int-to-float v1, v1

    .line 23
    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    mul-float v1, v1, v2

    iget v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    goto :goto_4

    :cond_9
    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 24
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    mul-float v1, v1, v3

    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    .line 25
    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if()V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private try(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 3
    iget v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    iget v4, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v1, v1

    .line 6
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget-object v10, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v12, 0x0

    .line 7
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v14, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v15, v3

    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v9, v4

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v10, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v12, v3

    iget-object v13, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 9
    iget-object v3, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    int-to-float v12, v2

    iget-object v13, v0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->o:Z

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    return v0
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    return v0
.end method

.method public getAnimTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    return v0
.end method

.method public getBarCodeTipText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->abstract:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeRectHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    return v0
.end method

.method public getBorderSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    return v0
.end method

.method public getCornerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    return v0
.end method

.method public getCornerLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    return v0
.end method

.method public getCornerSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    return v0
.end method

.method public getCustomScanLineDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHalfCornerSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    return v0
.end method

.method public getIsBarcode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    return v0
.end method

.method public getMaskColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    return v0
.end method

.method public getQRCodeTipText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->private:Ljava/lang/String;

    return-object v0
.end method

.method public getRectHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    return v0
.end method

.method public getRectWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    return v0
.end method

.method public getScanLineBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScanLineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    return v0
.end method

.method public getScanLineMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    return v0
.end method

.method public getScanLineSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    return v0
.end method

.method public getTipBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    return v0
.end method

.method public getTipBackgroundRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    return v0
.end method

.method public getTipText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->continue:Ljava/lang/String;

    return-object v0
.end method

.method public getTipTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    return v0
.end method

.method public getTipTextMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    return v0
.end method

.method public getTipTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    return v0
.end method

.method public getTipTextSl()Landroid/text/StaticLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    return-object v0
.end method

.method public getToolbarHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    return v0
.end method

.method public getVerticalBias()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    return v0
.end method

.method public goto(I)Landroid/graphics/Rect;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v3, v3, p1

    mul-float v5, v5, p1

    sub-float p1, v1, v3

    float-to-int p1, p1

    .line 8
    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr v1, v3

    float-to-int p1, v1

    .line 9
    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-float p1, v2, v5

    float-to-int p1, p1

    .line 10
    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr v2, v5

    float-to-int p1, v2

    .line 11
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    return v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->try(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->for(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->new(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->case(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else(Landroid/graphics/Canvas;)V

    .line 7
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if()V

    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throws:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setAutoZoom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->o:Z

    return-void
.end method

.method public setBarCodeTipText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->abstract:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setBarcodeRectHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->final:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->switch:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setBorderSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->static:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setCornerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->this:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setCornerLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setCornerSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->catch:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setCustomScanLineDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->public:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setHalfCornerSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->j:F

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setIsBarcode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->goto:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setOnlyDecodeScanBoxArea(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->m:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->if()V

    return-void
.end method

.method public setQRCodeTipText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->private:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setRectHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->const:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setRectWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->class:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setScanLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return:Landroid/graphics/Bitmap;

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setScanLineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->while:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setScanLineMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->import:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setScanLineReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->synchronized:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setScanLineSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->throw:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setShowDefaultGridScanLineDrawable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->a:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setShowDefaultScanLineDrawable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setShowLocationPoint(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->n:Z

    return-void
.end method

.method public setShowTipBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setShowTipTextAsSingleLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->transient:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->implements:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipBackgroundRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->l:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->package:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->abstract:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->private:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipTextBelowRect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->interface:Z

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->volatile:I

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipTextMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->protected:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipTextSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->strictfp:I

    .line 2
    iget-object v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->else:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTipTextSl(Landroid/text/StaticLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->k:Landroid/text/StaticLayout;

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setToolbarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->finally:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->super:I

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->default:F

    .line 2
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->return()V

    return-void
.end method

.method public super()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->native:Z

    return v0
.end method

.method public this(Lcn/bingoogolapple/qrcode/core/QRCodeView;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->p:Lcn/bingoogolapple/qrcode/core/QRCodeView;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcn/bingoogolapple/qrcode/core/R$styleable;->QRCodeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->break(ILandroid/content/res/TypedArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-direct {p0}, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->do()V

    return-void
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->n:Z

    return v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/bingoogolapple/qrcode/core/ScanBoxView;->instanceof:Z

    return v0
.end method
