.class Lcom/bumptech/glide/load/engine/bitmap_recycle/do$if;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/if;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/if<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;",
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
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/do$if;->new()Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;

    move-result-object v0

    return-object v0
.end method

.method public new()Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/do$if;)V

    return-object v0
.end method

.method public try(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/if;->if()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/do$do;->do(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
