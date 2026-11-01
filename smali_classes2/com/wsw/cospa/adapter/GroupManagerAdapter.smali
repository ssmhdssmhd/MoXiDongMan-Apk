.class public Lcom/wsw/cospa/adapter/GroupManagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Z

.field private do:Landroid/content/Context;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/view/LayoutInflater;

.field private new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

.field public try:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->do:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->if:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic case(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->try:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;

    invoke-interface {p2, p1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->case(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic else(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p1, p2}, Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;->onCheckedChanged(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/GroupManagerAdapter;)Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->else(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public break(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0099

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public catch(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-virtual {v2, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public class(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->case:Z

    return-void
.end method

.method public const(Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->try:Lcom/wsw/cospa/activity/ComicGroupManagerActivity$DragListener;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public goto(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1
    iget-object v1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->this(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->break(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->new:Lcom/wsw/cospa/adapter/DownloadTaskAdapter$OnCheckedChangeListener;

    return-void
.end method

.method public this(Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/ei0;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/ei0;-><init>(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/di0;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/di0;-><init>(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/adapter/GroupManagerAdapter$do;-><init>(Lcom/wsw/cospa/adapter/GroupManagerAdapter;Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->case:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->imgMove:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p1, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p1, Lcom/wsw/cospa/adapter/GroupManagerAdapter$GroupViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public declared-synchronized try()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/adapter/GroupManagerAdapter;->for:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-virtual {v2, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
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
