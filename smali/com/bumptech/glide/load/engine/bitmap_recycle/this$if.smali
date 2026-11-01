.class Lcom/bumptech/glide/load/engine/bitmap_recycle/this$if;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/if;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/if<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/if;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/this$if;->new()Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;

    move-result-object v0

    return-object v0
.end method

.method public new()Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/this$if;)V

    return-object v0
.end method

.method public try(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/if;->if()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;

    .line 2
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/this$do;->do(I)V

    return-object v0
.end method
