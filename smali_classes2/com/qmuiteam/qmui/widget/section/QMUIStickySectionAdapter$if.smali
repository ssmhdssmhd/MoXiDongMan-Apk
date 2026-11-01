.class Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->throws(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    iput p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    iget-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->for:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->if:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->for:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    invoke-interface {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;->onItemLongClick(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
