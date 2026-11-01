.class public Landroid/support/v4/bh1;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# static fields
.field public static final new:I = -0x64


# instance fields
.field private do:F

.field private for:I

.field private if:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Landroid/support/v4/bh1;->do:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/support/v4/bh1;->if:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IF)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/support/v4/bh1;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_0

    .line 5
    iput p3, p0, Landroid/support/v4/bh1;->do:F

    :cond_0
    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/bh1;->if:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p3

    .line 5
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p7, p4

    .line 6
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p3, p4

    .line 7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    iget p6, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, p6

    sub-int/2addr p3, p4

    .line 8
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p7, p3

    int-to-float p3, p7

    .line 9
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/bh1;->if:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->right:I

    iput p2, p0, Landroid/support/v4/bh1;->for:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/style/ImageSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p2

    iput p2, p0, Landroid/support/v4/bh1;->for:I

    .line 6
    :goto_0
    iget p2, p0, Landroid/support/v4/bh1;->do:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    const-string p2, "\u5b50"

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget p2, p0, Landroid/support/v4/bh1;->do:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v4/bh1;->for:I

    .line 8
    :cond_1
    iget p1, p0, Landroid/support/v4/bh1;->for:I

    return p1
.end method
