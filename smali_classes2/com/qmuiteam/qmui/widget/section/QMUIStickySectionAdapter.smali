.class public abstract Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;,
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;,
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;,
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TH;>;T::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TT;>;VH:",
        "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field public static final break:I = -0x1

.field public static final catch:I = 0x0

.field public static final class:I = 0x1

.field public static final const:I = 0x2

.field public static final final:I = 0x3e8

.field private static final this:Ljava/lang/String; = "StickySectionAdapter"


# instance fields
.field private case:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field

.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field

.field private else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback<",
            "TH;TT;>;"
        }
    .end annotation
.end field

.field private for:Landroid/util/SparseIntArray;

.field private goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field

.field private new:Landroid/util/SparseIntArray;

.field private try:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    return-object p0
.end method

.method private import(IZ)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->return(Z)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 4
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->return(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->catch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->this()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move p2, v1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private native(IZ)V
    .locals 3

    :goto_0
    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->return(Z)V

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->return(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->class()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->break()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move p2, v1

    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private new(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for(Ljava/util/List;Ljava/util/List;)Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 4
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->if(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->super()Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do()Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-void
.end method

.method private strictfp(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V
    .locals 5
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 6
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 7
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;->scrollToPosition(IZZ)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private volatile(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Z)V
    .locals 5
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;TT;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v4, v3}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    invoke-interface {p1, v2, v0, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;->scrollToPosition(IZZ)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->break()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->catch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->this()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 6
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->return(Z)V

    add-int/lit8 p1, v4, -0x1

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->native(IZ)V

    add-int/2addr v4, v2

    .line 9
    invoke-direct {p0, v4, v3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->import(IZ)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->b(Ljava/util/List;ZZ)V

    return-void
.end method

.method public abstract(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;)V
    .locals 2
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->do:Z

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-boolean p1, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->if:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;->loadMore(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;->loadMore(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;ZZ)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-virtual {p0, p1, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for(Ljava/util/List;Ljava/util/List;)Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;

    move-result-object p1

    .line 8
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p3, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->super()Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->do()Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p3

    :goto_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public break(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public c(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    return-void
.end method

.method public case(IIZ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-ltz p1, :cond_0

    .line 1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p3, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->public(Z)V

    .line 4
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 p3, 0x1

    .line 5
    invoke-direct {p0, v0, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemCount()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 7
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-eq p3, p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    if-ne p3, p2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public catch(I)I
    .locals 1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public const(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public continue()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for(Ljava/util/List;Ljava/util/List;)Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v3}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 4
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public d(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->public(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    if-eqz p2, :cond_2

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 8
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    invoke-interface {p1, p2, v1, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;->scrollToPosition(IZZ)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract default(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public else(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder<",
            "TH;TT;>;Z)I"
        }
    .end annotation

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_4

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemCount()I

    move-result p2

    if-ge v3, p2, :cond_3

    .line 2
    invoke-virtual {p0, v3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 4
    invoke-interface {p1, p2, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;->find(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v3

    :cond_1
    if-ltz v4, :cond_2

    .line 5
    invoke-virtual {p2, v4}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;->find(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p2, 0x0

    .line 6
    :goto_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_9

    .line 7
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 8
    invoke-interface {p1, v4, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;->find(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    :goto_3
    move-object p1, v2

    move-object v2, v4

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    .line 9
    :goto_4
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 10
    invoke-virtual {v4, v5}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v6

    invoke-interface {p1, v4, v6}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$PositionFinder;->find(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 11
    invoke-virtual {v4, v5}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v2

    .line 12
    invoke-virtual {v4}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {v4, v3}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->public(Z)V

    .line 14
    invoke-direct {p0, v4}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, v3, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    move-object p1, v2

    .line 16
    :goto_5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->getItemCount()I

    move-result p2

    if-ge v3, p2, :cond_d

    .line 17
    invoke-virtual {p0, v3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p2

    if-eq p2, v2, :cond_a

    goto :goto_6

    .line 18
    :cond_a
    invoke-virtual {p0, v3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v4

    if-ne v4, v0, :cond_b

    if-nez p1, :cond_b

    return v3

    :cond_b
    if-ltz v4, :cond_c

    .line 19
    invoke-virtual {p2, v4}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    return v3

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    return v1
.end method

.method public abstract extends(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public final(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract finally(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public for(Ljava/util/List;Ljava/util/List;)Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;)",
            "Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback<",
            "TH;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;

    invoke-direct {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v1, -0x3

    if-eq v0, v1, :cond_4

    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit16 v0, v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->this(II)I

    move-result p1

    add-int/lit16 p1, p1, 0x3e8

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public goto(Lcom/qmuiteam/qmui/widget/section/QMUISection;Ljava/util/List;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;",
            "Ljava/util/List<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;->requestChildFocus(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_4
    :goto_3
    invoke-virtual {p1, p2, p3, p4}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->new(Ljava/util/List;ZZ)V

    .line 13
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    return-void
.end method

.method public if(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final implements(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->instanceof(Ljava/util/List;Z)V

    return-void
.end method

.method public final instanceof(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->synchronized(Ljava/util/List;ZZ)V

    return-void
.end method

.method public interface(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V
    .locals 5
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 4
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->final()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    .line 8
    invoke-direct {p0, v2, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->strictfp(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->strictfp(Lcom/qmuiteam/qmui/widget/section/QMUISection;Z)V

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->throws(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->private(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->abstract(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;)V

    return-void
.end method

.method public abstract package(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public final private(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->extends(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->finally(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->package(Landroid/view/ViewGroup;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit16 p2, p2, -0x3e8

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->default(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public protected(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Z)V
    .locals 4
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;TT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->goto:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v2, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->for(Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-ne p1, v2, :cond_5

    .line 5
    :cond_2
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->final()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->volatile(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Z)V

    goto :goto_2

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->public(Z)V

    .line 8
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    .line 10
    invoke-direct {p0, v2, p2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->volatile(Lcom/qmuiteam/qmui/widget/section/QMUISection;Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;Z)V

    :goto_2
    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public public(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)V
    .locals 0
    .param p3    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I)V"
        }
    .end annotation

    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public static(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I)V"
        }
    .end annotation

    return-void
.end method

.method public super(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p1

    return-object p1
.end method

.method public switch(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final synchronized(Ljava/util/List;ZZ)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->try:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->do:Ljava/util/List;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if(Ljava/util/List;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->if:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->while(Lcom/qmuiteam/qmui/widget/section/QMUISection;)V

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->new(ZZ)V

    return-void
.end method

.method public this(II)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public throw(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p1

    return p1
.end method

.method public final throws(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->class(I)Lcom/qmuiteam/qmui/widget/section/QMUISection;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->break(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x4

    const/4 v5, -0x3

    const/4 v6, -0x2

    if-ne v1, v6, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->return(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;)V

    goto :goto_2

    :cond_0
    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->static(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)V

    goto :goto_2

    :cond_1
    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit16 v6, v1, 0x3e8

    .line 5
    invoke-virtual {p0, p1, p2, v0, v6}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->public(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-ne v1, v5, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0, p1, p2, v0, v6}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->switch(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;ILcom/qmuiteam/qmui/widget/section/QMUISection;Z)V

    :goto_2
    if-ne v1, v4, :cond_5

    .line 7
    iput-boolean v3, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->if:Z

    goto :goto_3

    :cond_5
    if-ne v1, v5, :cond_6

    .line 8
    iput-boolean v2, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->if:Z

    .line 9
    :cond_6
    :goto_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$do;

    invoke-direct {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$do;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;

    invoke-direct {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$if;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public transient(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback<",
            "TH;TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->else:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$Callback;

    return-void
.end method

.method public try(IIZ)I
    .locals 0

    add-int/lit16 p2, p2, -0x3e8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->case(IIZ)I

    move-result p1

    return p1
.end method
