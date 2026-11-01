.class public Lcom/wsw/cospa/adapter/ChapterGroupAdapter;
.super Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;,
        Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter<",
        "Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;",
        "Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private for:Landroid/view/LayoutInflater;

.field private if:Landroid/content/Context;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/bean/ComicInfoBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/SectionedRecyclerViewAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->if:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->try:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 5
    iput-object p3, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    return-object v0
.end method

.method public for(Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x28

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u7ae0-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x28

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u7ae0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public getItemCountForSection(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getSectionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasFooterInSection(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public if(Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/Switcher;

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->isDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ChapterButton;->setDownload(Z)V

    .line 6
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ChapterButton;->setDownload(Z)V

    .line 8
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/Switcher;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;

    invoke-direct {v0, p0, p3}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$do;-><init>(Lcom/wsw/cospa/adapter/ChapterGroupAdapter;Lcom/wsw/cospa/bean/Switcher;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1, p2}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_2
    return-void
.end method

.method public new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->for:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0077

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;-><init>(Lcom/wsw/cospa/adapter/ChapterGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->if(Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;II)V

    return-void
.end method

.method public onBindSectionFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindSectionHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->for(Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGroupAdapter$DescHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSectionFooterViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onCreateSectionHeaderViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->try(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public try(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;
    .locals 3

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGroupAdapter;->for:Landroid/view/LayoutInflater;

    const v1, 0x7f0c005a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/ChapterGroupAdapter$HeaderHolder;-><init>(Lcom/wsw/cospa/adapter/ChapterGroupAdapter;Landroid/view/View;)V

    return-object p2
.end method
