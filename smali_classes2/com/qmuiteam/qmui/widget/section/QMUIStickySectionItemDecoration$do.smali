.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 3
    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 4
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 5
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 3
    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->if(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;I)I

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->case(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;Z)V

    :cond_0
    return-void
.end method
