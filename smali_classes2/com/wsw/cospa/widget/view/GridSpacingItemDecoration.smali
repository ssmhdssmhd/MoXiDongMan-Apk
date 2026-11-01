.class public Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private color:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private space:I

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 3
    iput p1, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 6
    iput p1, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    .line 7
    iput p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 14
    iput p1, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    .line 15
    iput p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iput p3, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->type:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    .line 23
    iput p1, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    .line 24
    iput-object p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawGrideview(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    if-ge v1, v10, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    mul-int v1, v1, v2

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :cond_1
    move v11, v1

    .line 7
    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    sub-int/2addr v1, v10

    const/4 v2, 0x0

    move v12, v1

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_7

    move-object/from16 v14, p2

    .line 8
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 9
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-ge v13, v11, :cond_3

    .line 10
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 11
    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int v3, v1, v2

    .line 12
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    add-int/lit8 v2, v13, 0x1

    mul-int v4, v4, v2

    .line 13
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int v5, v5, v2

    add-int/2addr v5, v4

    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    mul-int v2, v2, v13

    add-int/2addr v5, v2

    .line 14
    iget-object v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    :cond_2
    iget-object v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    int-to-float v4, v4

    int-to-float v1, v1

    int-to-float v5, v5

    int-to-float v3, v3

    move/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v17, v2

    move v2, v4

    move/from16 v18, v3

    move/from16 v3, v16

    move v4, v5

    move/from16 v5, v18

    move-object v10, v6

    move-object/from16 v6, v17

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move-object v10, v6

    :goto_1
    if-eq v13, v12, :cond_5

    .line 19
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v1, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v2, v13, v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    .line 20
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int v3, v13, v3

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    .line 21
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 22
    iget v4, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v4, v3

    .line 23
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    :cond_4
    iget-object v6, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_6

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v4, v4

    int-to-float v10, v2

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v5, v10

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x4

    :cond_6
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private drawGrideview1(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3
    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v10

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_8

    move-object/from16 v12, p2

    .line 4
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 7
    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v1

    .line 8
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v13}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v3, v4

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v15, v11, 0x1

    mul-int v4, v4, v15

    add-int/2addr v4, v3

    iget v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    mul-int v5, v5, v11

    add-int/2addr v4, v5

    .line 10
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_0
    iget-object v6, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_1

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v4, v4

    int-to-float v2, v2

    move-object/from16 v1, p1

    move/from16 v16, v2

    move v2, v3

    move v3, v5

    move/from16 v5, v16

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    :cond_1
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v1, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v2, v11, v2

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int v3, v11, v3

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 18
    iget v4, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v4, v3

    .line 19
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_2
    iget-object v6, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_3

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v4, v4

    int-to-float v2, v2

    move-object/from16 v1, p1

    move/from16 v16, v2

    move v2, v3

    move v3, v5

    move/from16 v5, v16

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    if-ge v11, v10, :cond_5

    .line 24
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 25
    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int v3, v1, v2

    .line 26
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    mul-int v4, v4, v15

    .line 27
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int v2, v2, v15

    add-int/2addr v2, v4

    iget v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    mul-int v5, v5, v11

    add-int/2addr v2, v5

    .line 28
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    .line 29
    invoke-virtual {v5, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 31
    :cond_4
    iget-object v6, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_5

    int-to-float v4, v4

    int-to-float v5, v1

    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v1, p1

    move/from16 v16, v2

    move v2, v4

    move/from16 v17, v3

    move v3, v5

    move/from16 v4, v16

    move/from16 v5, v17

    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33
    :cond_5
    rem-int v1, v11, v10

    if-nez v1, :cond_7

    .line 34
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v1, v2

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v2, v11, v2

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    .line 35
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    invoke-virtual {v8}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    mul-int v2, v2, v11

    iget v3, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v2, v3

    .line 36
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 37
    iget v4, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v4, v3

    .line 38
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    .line 39
    invoke-virtual {v5, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    iget-object v5, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    :cond_6
    iget-object v6, v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_7

    int-to-float v3, v3

    int-to-float v5, v1

    int-to-float v4, v4

    int-to-float v11, v2

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v5, v11

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    move v11, v15

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 7
    iget v5, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v5, v4

    .line 8
    iget-object v6, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v6, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    iget-object v12, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    int-to-float v11, v5

    move-object v7, p1

    .line 12
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 7
    iget v5, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    add-int/2addr v5, v4

    .line 8
    iget-object v6, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v6, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    :cond_0
    iget-object v12, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v4

    int-to-float v9, v0

    int-to-float v10, v5

    int-to-float v11, v1

    move-object v7, p1

    .line 12
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 4
    iget p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->space:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p3

    if-nez p3, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget p3, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->type:I

    if-nez p3, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->drawGrideview(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->drawGrideview1(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;->color:I

    return-void
.end method
