.class public Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
.super Lcom/getbase/floatingactionbutton/FloatingActionButton;
.source "SourceFile"


# instance fields
.field public super:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public break(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton_fab_plusIconColor:I

    const v2, 0x106000b

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->else(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->super:I

    .line 3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->break(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    sget v0, Lcom/getbase/floatingactionbutton/R$dimen;->fab_icon_size:I

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->goto(I)F

    move-result v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v4, v6, v0

    .line 2
    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_size:I

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->goto(I)F

    move-result v1

    .line 3
    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_plus_icon_stroke:I

    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->goto(I)F

    move-result v2

    div-float v5, v2, v0

    sub-float v1, v6, v1

    div-float v3, v1, v0

    .line 4
    new-instance v0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$do;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton$do;-><init>(Lcom/getbase/floatingactionbutton/AddFloatingActionButton;FFFF)V

    .line 5
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 7
    iget v2, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->super:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v1
.end method

.method public getPlusColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->super:I

    return v0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use FloatingActionButton if you want to use custom icon"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlusColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->super:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->super:I

    .line 3
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->super()V

    :cond_0
    return-void
.end method

.method public setPlusColorResId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->else(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setPlusColor(I)V

    return-void
.end method
