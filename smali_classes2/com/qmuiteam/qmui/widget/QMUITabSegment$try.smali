.class final Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation


# instance fields
.field private do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-direct {p2, p1, p0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;-><init>(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->static(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->default(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->extends(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->finally(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->throws(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->package(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public do()Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_9

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_8

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;

    .line 7
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {v3, v1}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 9
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    .line 10
    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v5

    add-int/2addr v5, v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 12
    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v7

    add-int/2addr v7, v0

    add-int/2addr v7, v4

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v8

    add-int/2addr v7, v8

    sub-int v8, p5, p3

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 14
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 15
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->catch()I

    move-result v5

    .line 16
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->class()I

    move-result v6

    .line 17
    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v7}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v7}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->switch(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$TabItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    add-int/2addr v7, v0

    .line 20
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    goto :goto_2

    .line 21
    :cond_4
    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    add-int v7, v0, v2

    move v2, v4

    :goto_2
    if-ne v5, v7, :cond_5

    if-eq v6, v2, :cond_6

    .line 22
    :cond_5
    invoke-virtual {v3, v7}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->finally(I)V

    .line 23
    invoke-virtual {v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->package(I)V

    :cond_6
    add-int/2addr v0, v4

    .line 24
    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    .line 25
    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->return(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_9

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->do(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    .line 27
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->for(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result p1

    if-nez p1, :cond_9

    .line 28
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->try(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    invoke-static {p1, p2, p4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->break(Lcom/qmuiteam/qmui/widget/QMUITabSegment;Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;Z)V

    :cond_9
    :goto_5
    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/do;->this()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_a

    if-nez v4, :cond_2

    goto/16 :goto_7

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    .line 8
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v5}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->const(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4

    .line 9
    div-int v4, p1, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_9

    .line 10
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 13
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 14
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 15
    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {v7, v5}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 16
    invoke-static {v7, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    .line 17
    invoke-static {v7, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    .line 18
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 19
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v10, -0x80000000

    .line 20
    invoke-static {p1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 21
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 22
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 23
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v10}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->return(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    .line 24
    iget-object v9, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {v9, v5}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    .line 25
    invoke-static {v9}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F

    move-result v10

    invoke-static {v9}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F

    move-result v11

    add-float/2addr v10, v11

    add-float/2addr v8, v10

    .line 26
    invoke-static {v9, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    .line 27
    invoke-static {v9, v2}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 28
    :cond_6
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->if:Lcom/qmuiteam/qmui/widget/QMUITabSegment;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUITabSegment;->return(Lcom/qmuiteam/qmui/widget/QMUITabSegment;)I

    move-result v3

    sub-int/2addr v7, v3

    cmpl-float v3, v8, v4

    if-lez v3, :cond_8

    if-ge v7, p1, :cond_8

    sub-int v3, p1, v7

    :goto_5
    if-ge v2, v1, :cond_9

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    .line 31
    :cond_7
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/QMUITabSegment$try;->do:Lcom/qmuiteam/qmui/widget/QMUITabSegment$break;

    invoke-virtual {v4, v2}, Lcom/qmuiteam/qmui/widget/do;->case(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;

    int-to-float v5, v3

    .line 32
    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->else(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F

    move-result v6

    mul-float v6, v6, v5

    div-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->new(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    .line 33
    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->goto(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;)F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v5, v8

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;->case(Lcom/qmuiteam/qmui/widget/QMUITabSegment$this;I)I

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move p1, v7

    .line 34
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 35
    :cond_a
    :goto_7
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
