.class public final Lcom/bumptech/glide/load/data/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataRewinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/goto$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataRewinder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final if:I = 0x500000


# instance fields
.field private final do:Lcom/bumptech/glide/load/resource/bitmap/catch;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/catch;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/catch;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/goto;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/catch;->mark(I)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/goto;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/catch;->for()V

    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/goto;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/catch;->if()V

    return-void
.end method

.method public if()Ljava/io/InputStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/goto;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/catch;->reset()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/data/goto;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    return-object v0
.end method

.method public bridge synthetic rewindAndGet()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/goto;->if()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
