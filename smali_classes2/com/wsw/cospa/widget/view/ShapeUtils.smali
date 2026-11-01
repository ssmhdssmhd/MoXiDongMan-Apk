.class final Lcom/wsw/cospa/widget/view/ShapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static roundedRect(FFFFFFFF)Landroid/graphics/Path;
    .locals 5

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    if-gez v2, :cond_0

    const/4 p4, 0x0

    :cond_0
    cmpg-float v2, p5, v1

    if-gez v2, :cond_1

    const/4 p5, 0x0

    :cond_1
    cmpg-float v2, p6, v1

    if-gez v2, :cond_2

    const/4 p6, 0x0

    :cond_2
    cmpg-float v2, p7, v1

    if-gez v2, :cond_3

    const/4 p7, 0x0

    :cond_3
    sub-float v2, p2, p0

    sub-float/2addr p3, p1

    .line 21
    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v4, p4, v3

    if-lez v4, :cond_4

    move p4, v3

    :cond_4
    cmpl-float v4, p5, v3

    if-lez v4, :cond_5

    move p5, v3

    :cond_5
    cmpl-float v4, p6, v3

    if-lez v4, :cond_6

    move p6, v3

    :cond_6
    cmpl-float v4, p7, v3

    if-lez v4, :cond_7

    move p7, v3

    :cond_7
    cmpl-float v4, p4, p5

    if-nez v4, :cond_8

    cmpl-float v4, p5, p6

    if-nez v4, :cond_8

    cmpl-float v4, p6, p7

    if-nez v4, :cond_8

    cmpl-float v4, p4, v3

    if-nez v4, :cond_8

    add-float/2addr p0, v3

    add-float/2addr p1, v3

    .line 22
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, p1, v3, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-object v0

    :cond_8
    add-float/2addr p1, p5

    .line 23
    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    cmpl-float p0, p5, v1

    if-lez p0, :cond_9

    neg-float p0, p5

    .line 24
    invoke-virtual {v0, v1, p0, p0, p0}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    :cond_9
    neg-float p0, p5

    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    sub-float p0, v2, p5

    sub-float/2addr p0, p4

    neg-float p0, p0

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    cmpl-float p0, p4, v1

    if-lez p0, :cond_a

    neg-float p0, p4

    .line 28
    invoke-virtual {v0, p0, v1, p0, p4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    :cond_a
    neg-float p0, p4

    .line 29
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 30
    invoke-virtual {v0, v1, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_1
    sub-float p0, p3, p4

    sub-float/2addr p0, p7

    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    cmpl-float p0, p7, v1

    if-lez p0, :cond_b

    .line 32
    invoke-virtual {v0, v1, p7, p7, p7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual {v0, v1, p7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 34
    invoke-virtual {v0, p7, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_2
    sub-float/2addr v2, p7

    sub-float/2addr v2, p6

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    cmpl-float p0, p6, v1

    if-lez p0, :cond_c

    neg-float p0, p6

    .line 36
    invoke-virtual {v0, p6, v1, p6, p0}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    .line 37
    :cond_c
    invoke-virtual {v0, p6, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p0, p6

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    sub-float/2addr p3, p6

    sub-float/2addr p3, p5

    neg-float p0, p3

    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method

.method public static roundedRect(FFFFFFZZZZ)Landroid/graphics/Path;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    cmpg-float v2, p4, v1

    if-gez v2, :cond_0

    const/4 p4, 0x0

    :cond_0
    cmpg-float v2, p5, v1

    if-gez v2, :cond_1

    const/4 p5, 0x0

    :cond_1
    sub-float p0, p2, p0

    sub-float/2addr p3, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p0, v2

    cmpl-float v4, p4, v3

    if-lez v4, :cond_2

    move p4, v3

    :cond_2
    div-float v3, p3, v2

    cmpl-float v4, p5, v3

    if-lez v4, :cond_3

    move p5, v3

    :cond_3
    mul-float v3, p4, v2

    sub-float/2addr p0, v3

    mul-float v2, v2, p5

    sub-float/2addr p3, v2

    add-float/2addr p1, p5

    .line 2
    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p7, :cond_4

    neg-float p1, p5

    neg-float p2, p4

    .line 3
    invoke-virtual {v0, v1, p1, p2, p1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    :cond_4
    neg-float p1, p5

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p1, p4

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    neg-float p1, p0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p6, :cond_5

    neg-float p1, p4

    .line 7
    invoke-virtual {v0, p1, v1, p1, p5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    :cond_5
    neg-float p1, p4

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 9
    invoke-virtual {v0, v1, p5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 10
    :goto_1
    invoke-virtual {v0, v1, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p9, :cond_6

    .line 11
    invoke-virtual {v0, v1, p5, p4, p5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {v0, v1, p5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 13
    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 14
    :goto_2
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p8, :cond_7

    neg-float p0, p5

    .line 15
    invoke-virtual {v0, p4, v1, p4, p0}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p0, p5

    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    neg-float p0, p3

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-object v0
.end method
