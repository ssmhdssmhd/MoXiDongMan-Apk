.class public abstract Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter$Action;
    }
.end annotation


# instance fields
.field private do:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract do(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public abstract for(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public if(Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter$Action;)V
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-interface {p1, v2}, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter$Action;->call(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->for(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->do:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;->new(Landroid/view/ViewGroup;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public abstract new(Landroid/view/ViewGroup;Ljava/lang/Object;I)V
.end method
