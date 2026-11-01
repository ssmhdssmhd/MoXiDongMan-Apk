.class public Landroid/support/v4/wh1;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field private do:I

.field private for:Landroid/graphics/Paint;

.field private if:I

.field private new:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/wh1;-><init>(IILandroid/graphics/Typeface;)V

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Typeface;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 3
    iput p1, p0, Landroid/support/v4/wh1;->do:I

    .line 4
    iput p2, p0, Landroid/support/v4/wh1;->if:I

    .line 5
    iput-object p3, p0, Landroid/support/v4/wh1;->new:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    iget v1, v0, Landroid/support/v4/wh1;->if:I

    add-int v1, p7, v1

    int-to-float v7, v1

    .line 2
    iget-object v8, v0, Landroid/support/v4/wh1;->for:Landroid/graphics/Paint;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v4/wh1;->for:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Landroid/support/v4/wh1;->do:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/wh1;->for:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/wh1;->new:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget v0, p0, Landroid/support/v4/wh1;->do:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    if-eqz p5, :cond_0

    .line 5
    iget-object p1, p0, Landroid/support/v4/wh1;->for:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    .line 6
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 9
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 10
    :cond_0
    iget-object p1, p0, Landroid/support/v4/wh1;->for:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
