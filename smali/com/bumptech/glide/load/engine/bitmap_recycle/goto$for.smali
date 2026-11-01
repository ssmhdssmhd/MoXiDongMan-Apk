.class Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$for;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/if;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/if<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;",
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
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$for;->new()Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;

    move-result-object v0

    return-object v0
.end method

.method public new()Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$for;)V

    return-object v0
.end method

.method public try(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/if;->if()Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/goto$if;->do(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
