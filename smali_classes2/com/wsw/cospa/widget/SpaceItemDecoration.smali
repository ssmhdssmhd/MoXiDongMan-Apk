.class public abstract Lcom/wsw/cospa/widget/SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private lineWidth:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;FI)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    int-to-float p2, p2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/SpaceItemDecoration;-><init>(Landroid/content/Context;FI)V

    return-void
.end method

.method private drawChildBottomHorizontal(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p3

    .line 5
    iget p3, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr p3, p1

    int-to-float v3, v0

    int-to-float v4, p1

    int-to-float v5, v1

    int-to-float v6, p3

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawChildLeftVertical(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, p3

    .line 5
    iget p3, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int p3, p1, p3

    int-to-float v3, p3

    int-to-float v4, v0

    int-to-float v5, p1

    int-to-float v6, v1

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawChildRightVertical(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, p3

    .line 5
    iget p3, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr p3, p1

    int-to-float v3, p1

    int-to-float v4, v0

    int-to-float v5, p3

    int-to-float v6, v1

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawChildTopHorizontal(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, p3

    .line 5
    iget p3, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    sub-int p3, p1, p3

    int-to-float v3, v0

    int-to-float v4, p3

    int-to-float v5, v1

    int-to-float v6, p1

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->getItemSidesIsHaveOffsets(I)[Z

    move-result-object p2

    const/4 p3, 0x0

    .line 3
    aget-boolean p4, p2, p3

    const/4 v0, 0x2

    if-eqz p4, :cond_0

    iget p4, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    div-int/2addr p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 4
    aget-boolean v1, p2, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    aget-boolean v2, p2, v0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    div-int/2addr v2, v0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v0, 0x3

    .line 6
    aget-boolean p2, p2, v0

    if-eqz p2, :cond_3

    iget p3, p0, Lcom/wsw/cospa/widget/SpaceItemDecoration;->lineWidth:I

    .line 7
    :cond_3
    invoke-virtual {p1, p4, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public abstract getItemSidesIsHaveOffsets(I)[Z
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 4
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->getItemSidesIsHaveOffsets(I)[Z

    move-result-object v3

    .line 5
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_0

    .line 6
    invoke-direct {p0, v2, p1, p2}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->drawChildLeftVertical(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    const/4 v4, 0x1

    .line 7
    aget-boolean v4, v3, v4

    if-eqz v4, :cond_1

    .line 8
    invoke-direct {p0, v2, p1, p2}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->drawChildTopHorizontal(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    const/4 v4, 0x2

    .line 9
    aget-boolean v4, v3, v4

    if-eqz v4, :cond_2

    .line 10
    invoke-direct {p0, v2, p1, p2}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->drawChildRightVertical(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    const/4 v4, 0x3

    .line 11
    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    .line 12
    invoke-direct {p0, v2, p1, p2}, Lcom/wsw/cospa/widget/SpaceItemDecoration;->drawChildBottomHorizontal(Landroid/view/View;Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
