.class public abstract Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "F:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ITEM:I = -0x3

.field public static final TYPE_SECTION_FOOTER:I = -0x2

.field public static final TYPE_SECTION_HEADER:I = -0x1


# instance fields
.field private count:I

.field private isFooter:[Z

.field private isHeader:[Z

.field private positionWithinSection:[I

.field private sectionForPosition:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isHeader:[Z

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isFooter:[Z

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->count:I

    .line 7
    new-instance v0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter$SectionDataObserver;-><init>(Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setupIndices()V

    return-void
.end method

.method private allocateAuxiliaryArrays(I)V
    .locals 1

    .line 1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    .line 3
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isHeader:[Z

    .line 4
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isFooter:[Z

    return-void
.end method

.method private countItems()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getItemCountForSection(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->hasFooterInSection(I)Z

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private precomputeIndices()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v0, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v9

    move v6, v8

    .line 2
    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setPrecomputedItem(IZZII)V

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0, v8}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getItemCountForSection(I)I

    move-result v2

    if-ge v10, v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, v9

    move v6, v8

    move v7, v10

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setPrecomputedItem(IZZII)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, v8}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->hasFooterInSection(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v9

    move v6, v8

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setPrecomputedItem(IZZII)V

    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setPrecomputedItem(IZZII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isHeader:[Z

    aput-boolean p2, v0, p1

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isFooter:[Z

    aput-boolean p3, p2, p1

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    aput p4, p2, p1

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    aput p5, p2, p1

    return-void
.end method

.method private setupIndices()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->countItems()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->count:I

    .line 2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->allocateAuxiliaryArrays(I)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->precomputeIndices()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->count:I

    return v0
.end method

.method public abstract getItemCountForSection(I)I
.end method

.method public getItemPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    aget p1, v0, p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setupIndices()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    aget v0, v0, p1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    aget v1, v1, p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionHeaderPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getSectionHeaderViewType(I)I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionFooterPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getSectionFooterViewType(I)I

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->getSectionItemViewType(II)I

    move-result p1

    return p1
.end method

.method public abstract getSectionCount()I
.end method

.method public getSectionFooterViewType(I)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getSectionHeaderViewType(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getSectionItemViewType(II)I
    .locals 0

    const/4 p1, -0x3

    return p1
.end method

.method public abstract hasFooterInSection(I)Z
.end method

.method public isSectionFooterPosition(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isFooter:[Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setupIndices()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isFooter:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isSectionFooterViewType(I)Z
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSectionHeaderPosition(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isHeader:[Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setupIndices()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isHeader:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isSectionHeaderViewType(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->setupIndices()V

    return-void
.end method

.method public abstract onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation
.end method

.method public abstract onBindSectionFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)V"
        }
    .end annotation
.end method

.method public abstract onBindSectionHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->sectionForPosition:[I

    aget v0, v0, p2

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->positionWithinSection:[I

    aget v1, v1, p2

    .line 3
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionHeaderPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onBindSectionHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionFooterPosition(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onBindSectionFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :goto_0
    return-void
.end method

.method public abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public abstract onCreateSectionFooterViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TF;"
        }
    .end annotation
.end method

.method public abstract onCreateSectionHeaderViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TH;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionHeaderViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onCreateSectionHeaderViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->isSectionFooterViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onCreateSectionFooterViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    :goto_0
    return-object p1
.end method
