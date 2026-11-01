.class public Lcom/wsw/cospa/adapter/DownloadTaskAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;,
        Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;,
        Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;,
        Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;",
        ">;",
        "Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;"
    }
.end annotation


# instance fields
.field private case:Landroid/content/Context;

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Landroid/view/LayoutInflater;

.field private for:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

.field private goto:Z

.field private if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

.field private new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic class(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    if-nez p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->for:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;->onCheckedChanged(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic const(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/wsw/cospa/listener/OnLongItemClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->const(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->for:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->class(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;Landroid/view/View;)V

    return-void
.end method

.method private this(Lcom/wsw/cospa/bean/Task;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const v0, 0x7f110103

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Task;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const v0, 0x7f110106

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const v0, 0x7f1100fb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const v0, 0x7f110102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->case:Landroid/content/Context;

    const v0, 0x7f1100fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized break()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 4
    invoke-virtual {v2, v0}, Lcom/wsw/cospa/bean/Task;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public case()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    return v0
.end method

.method public declared-synchronized else(I)Lcom/wsw/cospa/bean/Task;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;I)V
    .locals 4
    .param p1    # Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/Task;

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->taskTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->taskState:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this(Lcom/wsw/cospa/bean/Task;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getProgress()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getMax()I

    move-result v1

    .line 6
    iget-object v2, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->taskPage:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/l22;->break(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v2, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->taskProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    iget-object v1, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->taskProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->itemView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/wsw/cospa/adapter/this;

    invoke-direct {v1, p0, p1, p2}, Lcom/wsw/cospa/adapter/this;-><init>(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;Lcom/wsw/cospa/bean/Task;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->itemView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/wsw/cospa/adapter/break;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/adapter/break;-><init>(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 11
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$do;-><init>(Lcom/wsw/cospa/adapter/DownloadTaskAdapter;Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15
    :goto_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    iget-object p1, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->try()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSectionText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/Task;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public declared-synchronized goto(J)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 3
    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized import()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->goto:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized new(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->final(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->super(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->for:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->try:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    return-void
.end method

.method public setOnRemoveSuccessListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;

    return-void
.end method

.method public super(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->else:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0093

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$TaskViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized throw(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;

    invoke-interface {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnRemoveSuccessListener;->onRemoveSuccess()V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public try()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/Task;

    .line 3
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->isFinish()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->try:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;

    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnDownloadCompleteListener;->onComplete()V

    :cond_5
    return-void
.end method

.method public while()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadTaskAdapter;->this:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
