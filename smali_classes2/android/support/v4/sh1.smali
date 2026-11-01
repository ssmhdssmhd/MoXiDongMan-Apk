.class public Landroid/support/v4/sh1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/support/v4/jh1;->this(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static do(Landroid/widget/TextView;I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_13

    .line 5
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 6
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_gravity:I

    const/4 v10, -0x1

    if-ne v8, v9, :cond_0

    .line 7
    invoke-virtual {p1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    .line 8
    :cond_0
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textColor:I

    if-ne v8, v9, :cond_1

    .line 9
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 10
    :cond_1
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textSize:I

    if-ne v8, v9, :cond_2

    .line 11
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0, v3, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 12
    :cond_2
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_paddingLeft:I

    if-ne v8, v9, :cond_3

    .line 13
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto/16 :goto_1

    .line 14
    :cond_3
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_paddingRight:I

    if-ne v8, v9, :cond_4

    .line 15
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto/16 :goto_1

    .line 16
    :cond_4
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_paddingTop:I

    if-ne v8, v9, :cond_5

    .line 17
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto/16 :goto_1

    .line 18
    :cond_5
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_paddingBottom:I

    if-ne v8, v9, :cond_6

    .line 19
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto/16 :goto_1

    .line 20
    :cond_6
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_singleLine:I

    if-ne v8, v9, :cond_7

    .line 21
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_1

    .line 22
    :cond_7
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_ellipsize:I

    if-ne v8, v9, :cond_c

    const/4 v9, 0x3

    .line 23
    invoke-virtual {p1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_b

    const/4 v10, 0x2

    if-eq v8, v10, :cond_a

    if-eq v8, v9, :cond_9

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    goto :goto_1

    .line 24
    :cond_8
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 25
    :cond_9
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 26
    :cond_a
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 27
    :cond_b
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 28
    :cond_c
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_maxLines:I

    if-ne v8, v9, :cond_d

    .line 29
    invoke-virtual {p1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 30
    :cond_d
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_background:I

    if-ne v8, v9, :cond_e

    .line 31
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qmuiteam/qmui/util/for;->default(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 32
    :cond_e
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_lineSpacingExtra:I

    if-ne v8, v9, :cond_f

    .line 33
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_1

    .line 34
    :cond_f
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_drawablePadding:I

    if-ne v8, v9, :cond_10

    .line 35
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 36
    :cond_10
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textColorHint:I

    if-ne v8, v9, :cond_11

    .line 37
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_1

    .line 38
    :cond_11
    sget v9, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textStyle:I

    if-ne v8, v9, :cond_12

    .line 39
    invoke-virtual {p1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 40
    invoke-virtual {p0, v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_12
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 41
    :cond_13
    invoke-virtual {p0, v1, v5, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static else(Landroid/content/Context;I)F
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method public static for(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static if(Landroid/content/Context;I)I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public static new(Landroid/content/Context;I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/support/v4/ih1;->this(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static try(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, v1}, Landroid/support/v4/sh1;->case(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method
