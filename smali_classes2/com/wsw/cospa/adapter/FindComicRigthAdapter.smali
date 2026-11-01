.class public Lcom/wsw/cospa/adapter/FindComicRigthAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;",
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
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->if:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FindComicRigthAdapter;Lcom/wsw/cospa/vo/FindChildVo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->if(Lcom/wsw/cospa/vo/FindChildVo;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic if(Lcom/wsw/cospa/vo/FindChildVo;ILandroid/view/View;)V
    .locals 2

    .line 1
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->if:Landroid/content/Context;

    const-class v1, Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getKindUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p2}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "title"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getParentTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->if:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public for(Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;I)V
    .locals 6
    .param p1    # Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->parentName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {v1}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->kindGroup:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {v0}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/vo/FindChildVo;

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->if:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c007f

    iget-object v4, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->kindGroup:Lcom/google/android/flexbox/FlexboxLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x5

    .line 8
    invoke-static {v3}, Landroid/support/v4/h30;->case(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v3, Landroid/support/v4/ac0;

    invoke-direct {v3, p0, v1, p2}, Landroid/support/v4/ac0;-><init>(Lcom/wsw/cospa/adapter/FindComicRigthAdapter;Lcom/wsw/cospa/vo/FindChildVo;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;->kindGroup:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

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

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    return-object v0
.end method

.method public new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->for:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0098

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->for(Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicRigthAdapter$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicRigthAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method
