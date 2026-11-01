.class public Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TH;>;T::",
        "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
        "TT;>;>",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;"
    }
.end annotation


# instance fields
.field private case:Landroid/util/SparseIntArray;

.field private do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field

.field private for:Landroid/util/SparseIntArray;

.field private if:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;"
        }
    .end annotation
.end field

.field private new:Landroid/util/SparseIntArray;

.field private try:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->new:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    .line 7
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->new:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for(Ljava/util/List;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for(Ljava/util/List;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private for(Ljava/util/List;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;-><init>(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$do;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->final()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->else(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Ljava/util/List;)V

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 8
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->final()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x2

    .line 9
    invoke-static {v0, p2, v2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;II)V

    .line 10
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0, v0, v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Lcom/qmuiteam/qmui/widget/section/QMUISection;I)V

    .line 12
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->class()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x3

    .line 13
    invoke-static {v0, p2, v2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;II)V

    :cond_4
    const/4 v2, 0x0

    .line 14
    :goto_1
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->else()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 15
    invoke-static {v0, p2, v2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->catch()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x4

    .line 17
    invoke-static {v0, p2, v2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;->do(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;II)V

    .line 18
    :cond_6
    invoke-virtual {p0, v0, v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->new(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Lcom/qmuiteam/qmui/widget/section/QMUISection;I)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Ljava/util/List;)V

    goto :goto_3

    .line 21
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 22
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->final()Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->catch()Z

    move-result p2

    if-nez p2, :cond_a

    .line 23
    :cond_9
    invoke-virtual {p0, v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Ljava/util/List;)V

    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do(Lcom/qmuiteam/qmui/widget/section/QMUISection;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 7
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->const()Z

    move-result p2

    if-ne p1, p2, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameContent(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    const/4 v2, -0x3

    if-eq p1, v2, :cond_8

    const/4 v2, -0x4

    if-ne p1, v2, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->goto(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do(Lcom/qmuiteam/qmui/widget/section/QMUISection;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)Z

    move-result p1

    return p1

    .line 12
    :cond_4
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p2

    if-nez p1, :cond_5

    if-eqz p2, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 14
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameContent(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    return v3

    :cond_8
    :goto_2
    return v4
.end method

.method public areItemsTheSame(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->new:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_8

    if-gez v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->do:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 6
    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->if:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/section/QMUISection;

    .line 7
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v4

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->try()Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v3

    :cond_1
    if-gez p1, :cond_2

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    if-ltz p1, :cond_7

    if-gez p2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection;->case(I)Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;

    move-result-object p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_6

    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUISection$Model;->isSameItem(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v3

    :cond_8
    :goto_2
    if-ne v0, v1, :cond_9

    if-ne p1, p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public case(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Lcom/qmuiteam/qmui/widget/section/QMUISection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I)V"
        }
    .end annotation

    return-void
.end method

.method public do(Lcom/qmuiteam/qmui/widget/section/QMUISection;ILcom/qmuiteam/qmui/widget/section/QMUISection;I)Z
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/qmuiteam/qmui/widget/section/QMUISection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public else(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public getNewListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->for:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public if(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 4
    .param p1    # Landroid/util/SparseIntArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/SparseIntArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->try:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback;->case:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public new(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Lcom/qmuiteam/qmui/widget/section/QMUISection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;I)V"
        }
    .end annotation

    return-void
.end method

.method public try(Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/widget/section/QMUISectionDiffCallback$if;",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection<",
            "TH;TT;>;>;)V"
        }
    .end annotation

    return-void
.end method
