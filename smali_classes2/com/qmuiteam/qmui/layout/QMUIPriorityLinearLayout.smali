.class public Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;
.super Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;
    }
.end annotation


# instance fields
.field private for:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private new:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    return-void
.end method

.method private case(II)V
    .locals 10

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->getVisibleChildCount()I

    move-result v2

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->try(II)I

    move-result p2

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-lt p2, v0, :cond_2

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 7
    iget v4, v3, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 11
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    sub-int p2, v0, p2

    .line 12
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 14
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 15
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v7, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    if-lt v4, p2, :cond_5

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v1, v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 23
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_4

    :cond_5
    if-ge v5, p2, :cond_6

    .line 24
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    sub-int/2addr p2, v5

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->if(Ljava/util/ArrayList;I)V

    goto :goto_6

    .line 26
    :cond_6
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 28
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_7
    if-ge p2, v5, :cond_8

    .line 29
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 30
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v5}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for(Ljava/util/ArrayList;II)V

    :cond_8
    :goto_6
    return-void
.end method

.method private getVisibleChildCount()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private new(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->getVisibleChildCount()I

    move-result v2

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->try(II)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-lt p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 7
    iget v4, v3, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v4, p2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 11
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    sub-int p1, v0, p1

    .line 12
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 14
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v8, p2}, Landroid/view/View;->measure(II)V

    .line 15
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v7, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_2

    :cond_3
    if-lt v4, p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v1, v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 23
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_5
    if-ge v5, p1, :cond_6

    .line 24
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 25
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    sub-int/2addr p1, v5

    invoke-virtual {p0, p2, p1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->if(Ljava/util/ArrayList;I)V

    goto :goto_6

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 28
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_7
    if-ge p1, v5, :cond_8

    .line 29
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 30
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1, v5}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for(Ljava/util/ArrayList;II)V

    :cond_8
    :goto_6
    return-void
.end method

.method private try(II)I
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 7
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    goto :goto_4

    .line 9
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 10
    invoke-virtual {v6}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->do()V

    .line 11
    invoke-virtual {v6, v2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;->if(I)I

    move-result v7

    if-nez v2, :cond_1

    .line 12
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    add-int/2addr v8, v9

    const/4 v9, 0x3

    if-ne v7, v9, :cond_5

    const/high16 v7, -0x80000000

    if-nez v2, :cond_3

    .line 13
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ltz v6, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    goto :goto_3

    .line 16
    :cond_3
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ltz v6, :cond_4

    :goto_2
    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_4

    .line 17
    :cond_4
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->measure(II)V

    .line 18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_3
    add-int/2addr v5, v8

    add-int/2addr v4, v5

    goto :goto_4

    :cond_5
    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 19
    iget-object v6, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->for:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_6
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 21
    iget-object v6, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return v4
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public for(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    sub-int p2, p3, p2

    if-lez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v4

    int-to-float v4, p3

    div-float/2addr v2, v4

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, p2

    mul-float v4, v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 6
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v4

    int-to-float v4, p3

    div-float/2addr v2, v4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, p2

    mul-float v4, v4, v2

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 9
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public if(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 5
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    sub-int/2addr v2, v1

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$do;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    .line 11
    :cond_2
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->new(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;->case(II)V

    .line 4
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    return-void
.end method
