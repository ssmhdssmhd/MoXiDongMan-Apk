.class Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;->onLoadFailed(Lcom/bumptech/glide/load/engine/catch;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
.field public final synthetic do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$if;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
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
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$if;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;

    iget-object p2, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else;

    iget-object p3, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->try:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iget-object p4, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object p5, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->for:Lcc/shinichi/library/view/photoview/PhotoView;

    iget-object p2, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->new:Landroid/widget/ProgressBar;

    invoke-static {p3, p1, p4, p5, p2}, Lcc/shinichi/library/view/ImagePreviewAdapter;->for(Lcc/shinichi/library/view/ImagePreviewAdapter;Ljava/io/File;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/catch;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
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
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$if;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;

    iget-object p2, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if;->do:Lcc/shinichi/library/view/ImagePreviewAdapter$else;

    iget-object p3, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->try:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iget-object p4, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->if:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object v0, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->for:Lcc/shinichi/library/view/photoview/PhotoView;

    iget-object p2, p2, Lcc/shinichi/library/view/ImagePreviewAdapter$else;->new:Landroid/widget/ProgressBar;

    invoke-static {p3, p4, v0, p2, p1}, Lcc/shinichi/library/view/ImagePreviewAdapter;->if(Lcc/shinichi/library/view/ImagePreviewAdapter;Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/catch;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcc/shinichi/library/view/ImagePreviewAdapter$else$if$if;->do(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/do;Z)Z

    move-result p1

    return p1
.end method
