.class public Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/CharSequence;

.field public final synthetic if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->do:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->do:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->if(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {v4}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->for(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;Ljava/util/List;)Ljava/util/List;

    .line 5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 8
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->if(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 11
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 12
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 15
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/apache/commons/lang3/class;->native(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :goto_2
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->do:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->new(Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->if:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
