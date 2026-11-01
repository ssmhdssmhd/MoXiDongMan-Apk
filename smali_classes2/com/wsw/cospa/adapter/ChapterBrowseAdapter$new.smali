.class Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private case:I

.field private do:Lcom/wsw/cospa/for;

.field public final synthetic else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

.field private for:Lcom/wsw/cospa/bean/ComicContentImgBean;

.field private if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

.field private new:Ljava/lang/String;

.field private try:Z


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->case:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$do;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)V

    return-void
.end method

.method private synthetic break()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 8
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v1

    .line 14
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->else:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try:Z

    return p0
.end method

.method private declared-synchronized class()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->do:Lcom/wsw/cospa/for;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/for;->f1(Lcom/bumptech/glide/request/RequestListener;)Lcom/wsw/cospa/for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    .line 2
    iget v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->case:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->case:I
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

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->break()V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->new:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->this()V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->class()V

    return-void
.end method

.method private synthetic this()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->class()V

    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)Lcom/wsw/cospa/bean/ComicContentImgBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->for:Lcom/wsw/cospa/bean/ComicContentImgBean;

    return-object p0
.end method


# virtual methods
.method public catch(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bumptech/glide/load/do;",
            "Z)Z"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new$do;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;Ljava/io/File;)V

    invoke-static {p2}, Landroid/support/v4/wi0;->else(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public goto(Lcom/wsw/cospa/for;Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;Lcom/wsw/cospa/bean/ComicContentImgBean;Ljava/lang/String;Z)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->do:Lcom/wsw/cospa/for;

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->if:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$PathViewHolder;

    .line 3
    iput-object p3, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->for:Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 4
    iput-object p4, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->new:Ljava/lang/String;

    .line 5
    iput-boolean p5, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->try:Z

    return-object p0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/catch;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/catch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/catch;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget p1, p0, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->case:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    .line 3
    new-instance p1, Lcom/wsw/cospa/adapter/if;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/adapter/if;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V

    const-wide/16 p2, 0xc8

    invoke-static {p1, p2, p3}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/wsw/cospa/adapter/do;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/adapter/do;-><init>(Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    .line 5
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter$new;->catch(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z

    move-result p1

    return p1
.end method
