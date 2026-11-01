.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getRelativeStickyItemPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->catch(I)I

    move-result p1

    return p1
.end method

.method public isHeaderItem(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onHeaderVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
