.class public Landroid/support/v4/h30;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static break(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    new-array p0, p0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, p0, v2

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/16 p0, 0xa

    const p1, -0x777778

    .line 4
    invoke-static {p0, p1}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    new-array p1, v2, [I

    .line 5
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static case(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v0

    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/support/v4/h30;->new(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static catch()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/h30;->const(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static class(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2
    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p0, p0

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-object v0
.end method

.method public static const(IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 1
    invoke-static {p0, p2}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 2
    invoke-static {p0, p3, p2, p1}, Landroid/support/v4/h30;->class(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Landroid/support/v4/h30;->break(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static do()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->if(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static else(Landroid/content/Context;I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    .line 3
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 4
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public static final(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0xa

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/h30;->super(Landroid/widget/TextView;II)V

    return-void
.end method

.method public static for(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/ym;->do(I)I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/support/v4/h30;->new(III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static goto(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float p0, p0

    .line 2
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    return-object v0
.end method

.method public static if(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/h30;->for(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static import(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0xa

    .line 1
    invoke-static {p0, v0, v1, p1}, Landroid/support/v4/h30;->public(Landroid/widget/TextView;III)V

    return-void
.end method

.method public static native(Landroid/widget/TextView;II)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/h30;->public(Landroid/widget/TextView;III)V

    return-void
.end method

.method public static new(III)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-static {p0, p2}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/support/v4/h30;->break(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static public(Landroid/widget/TextView;III)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p2, p1, p3, v0}, Landroid/support/v4/h30;->const(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {v0, p3}, Landroid/support/v4/ym;->for(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    return-void
.end method

.method public static super(Landroid/widget/TextView;II)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ym;->new()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/h30;->throw(Landroid/widget/TextView;III)V

    return-void
.end method

.method public static this(IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    .line 1
    invoke-static {p0, p2, p3, p1}, Landroid/support/v4/h30;->class(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    .line 2
    invoke-static {p0, p3}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 3
    invoke-static {p1, p0}, Landroid/support/v4/h30;->break(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Landroid/widget/TextView;III)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p2, p1, v0, p3}, Landroid/support/v4/h30;->this(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {p3, v0}, Landroid/support/v4/ym;->for(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    return-void
.end method

.method public static try()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static while(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0xa

    .line 1
    invoke-static {p0, v0, v1}, Landroid/support/v4/h30;->native(Landroid/widget/TextView;II)V

    return-void
.end method
