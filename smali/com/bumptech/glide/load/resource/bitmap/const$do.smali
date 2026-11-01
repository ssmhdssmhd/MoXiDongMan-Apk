.class Lcom/bumptech/glide/load/resource/bitmap/const$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lcom/bumptech/glide/load/resource/bitmap/catch;

.field private final if:Lcom/bumptech/glide/util/for;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/catch;Lcom/bumptech/glide/util/for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/const$do;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/const$do;->if:Lcom/bumptech/glide/util/for;

    return-void
.end method


# virtual methods
.method public onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/const$do;->if:Lcom/bumptech/glide/util/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/for;->if()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public onObtainBounds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/const$do;->do:Lcom/bumptech/glide/load/resource/bitmap/catch;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/catch;->if()V

    return-void
.end method
