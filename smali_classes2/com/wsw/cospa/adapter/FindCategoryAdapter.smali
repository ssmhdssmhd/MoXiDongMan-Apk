.class public Lcom/wsw/cospa/adapter/FindCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/FindCategoryAdapter$HeaderHolder;,
        Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:Lcom/wsw/cospa/vo/FindParentVo;

.field private if:Landroid/view/LayoutInflater;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;"
        }
    .end annotation
.end field

.field private try:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->do:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->if:Landroid/view/LayoutInflater;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0601b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v0, 0x5

    invoke-static {v0, p1}, Landroid/support/v4/h30;->goto(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->try:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Lcom/wsw/cospa/vo/FindChildVo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->if(Lcom/wsw/cospa/vo/FindChildVo;Landroid/view/View;)V

    return-void
.end method

.method private synthetic if(Lcom/wsw/cospa/vo/FindChildVo;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->do:Landroid/content/Context;

    const-class v1, Lcom/wsw/cospa/activity/FindComicDetailActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getKindUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->for:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {v1}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindChildVo;->getParentTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tag"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->do:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public for(Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/vo/FindChildVo;

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->try:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;->tv_item:Landroid/widget/TextView;

    new-instance v0, Landroid/support/v4/kb0;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/kb0;-><init>(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Lcom/wsw/cospa/vo/FindChildVo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    return-object v0
.end method

.method public new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->if:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;-><init>(Lcom/wsw/cospa/adapter/FindCategoryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->for(Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindCategoryAdapter$DescHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized try(Lcom/wsw/cospa/vo/FindParentVo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->for:Lcom/wsw/cospa/vo/FindParentVo;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindCategoryAdapter;->new:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
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
