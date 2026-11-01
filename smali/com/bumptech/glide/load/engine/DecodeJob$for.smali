.class Lcom/bumptech/glide/load/engine/DecodeJob$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private do:Lcom/bumptech/glide/load/Key;

.field private for:Lcom/bumptech/glide/load/engine/final;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/final<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private if:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->do:Lcom/bumptech/glide/load/Key;

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->if:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroid/support/v4/f81;)V
    .locals 4

    const-string v0, "DecodeJob.encode"

    .line 1
    invoke-static {v0}, Landroid/support/v4/qh0;->do(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->do:Lcom/bumptech/glide/load/Key;

    new-instance v1, Lcom/bumptech/glide/load/engine/new;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->if:Lcom/bumptech/glide/load/ResourceEncoder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/new;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Landroid/support/v4/f81;)V

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/final;->new()V

    .line 5
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/final;->new()V

    .line 7
    invoke-static {}, Landroid/support/v4/qh0;->try()V

    throw p1
.end method

.method public new(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/final;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TX;>;",
            "Lcom/bumptech/glide/load/engine/final<",
            "TX;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->do:Lcom/bumptech/glide/load/Key;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->if:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$for;->for:Lcom/bumptech/glide/load/engine/final;

    return-void
.end method
