.class Lcc/shinichi/library/view/ImagePreviewAdapter$this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter;->case(Ljava/lang/String;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/ImageView;

.field public final synthetic for:Landroid/widget/ProgressBar;

.field public final synthetic if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

.field public final synthetic new:Lcc/shinichi/library/view/ImagePreviewAdapter;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter;Landroid/widget/ImageView;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->new:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->do:Landroid/widget/ImageView;

    iput-object p3, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    iput-object p4, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->for:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/do;",
            "Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->for:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->do:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p3

    invoke-virtual {p3}, Lcc/shinichi/library/do;->case()I

    move-result p3

    invoke-static {p3}, Landroid/support/v4/wl0;->final(I)Landroid/support/v4/wl0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Landroid/support/v4/wl0;)V

    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lcc/shinichi/library/view/ImagePreviewAdapter$this;->do(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z

    move-result p1

    return p1
.end method
