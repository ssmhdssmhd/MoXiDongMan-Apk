.class public Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/SearchSourceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceFilterAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;",
        ">;",
        "Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field

.field private for:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/wsw/cospa/activity/SearchSourceView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchSourceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->new:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->if:Ljava/util/List;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->if:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->if:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->for:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public case(Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;->tvItem:Landroid/widget/TextView;

    const-string v1, "\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;->tvItem:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/rt1;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/rt1;-><init>(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public else(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->new:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-static {p2}, Lcom/wsw/cospa/activity/SearchSourceView;->try(Lcom/wsw/cospa/activity/SearchSourceView;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->new:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchSourceView;->case(Lcom/wsw/cospa/activity/SearchSourceView;)Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->new:Lcom/wsw/cospa/activity/SearchSourceView;

    new-instance v1, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;-><init>(Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;)V

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/SearchSourceView;->else(Lcom/wsw/cospa/activity/SearchSourceView;Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;)Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->new:Lcom/wsw/cospa/activity/SearchSourceView;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchSourceView;->case(Lcom/wsw/cospa/activity/SearchSourceView;)Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter$do;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSectionText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->z(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->case(Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->else(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->for:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public try(I)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchSourceView$SourceFilterAdapter;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p1
.end method
