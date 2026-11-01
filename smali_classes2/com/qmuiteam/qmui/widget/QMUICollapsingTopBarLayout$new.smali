.class Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iput p2, p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->return:I

    .line 2
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->if(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    .line 6
    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break(Landroid/view/View;)Landroid/support/v4/zh1;

    move-result-object v5

    .line 7
    iget v6, v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->do:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v3, 0x2

    if-eq v6, v3, :cond_0

    goto :goto_1

    :cond_0
    neg-int v3, p2

    int-to-float v3, v3

    .line 8
    iget v4, v4, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;->if:F

    mul-float v3, v3, v4

    .line 9
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 10
    invoke-virtual {v5, v3}, Landroid/support/v4/zh1;->catch(I)Z

    goto :goto_1

    :cond_1
    neg-int v4, p2

    .line 11
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    .line 12
    invoke-virtual {v6, v3, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this(Landroid/view/View;Z)I

    move-result v3

    invoke-static {v4, v1, v3}, Landroid/support/v4/kh1;->for(III)I

    move-result v3

    .line 13
    invoke-virtual {v5, v3}, Landroid/support/v4/zh1;->catch(I)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw()V

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iget-object v1, v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    if-lez p1, :cond_3

    .line 16
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;->do:Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 20
    invoke-virtual {p1, p2}, Landroid/support/v4/eh1;->c(F)V

    return-void
.end method
