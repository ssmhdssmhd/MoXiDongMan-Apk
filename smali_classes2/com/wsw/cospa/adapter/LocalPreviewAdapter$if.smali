.class Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;
.super Landroid/support/v4/ht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->throws(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ht<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

.field public final synthetic try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    invoke-direct {p0}, Landroid/support/v4/ht;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if$do;-><init>(Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/ht;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->draweeView:Lcom/wsw/cospa/widget/subscaleview/SubsamplingScaleImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->tv_item:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;->iv_failure:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->try(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 9
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 13
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    .line 15
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->try:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->do(Lcom/wsw/cospa/adapter/LocalPreviewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->new:Lcom/wsw/cospa/adapter/LocalPreviewAdapter$PathViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/ht;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter$if;->do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
