.class public Lcom/bumptech/glide/load/engine/prefill/new$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/prefill/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:I

.field private for:Landroid/graphics/Bitmap$Config;

.field private final if:I

.field private new:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/bumptech/glide/load/engine/prefill/new$do;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->new:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 4
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->do:I

    .line 5
    iput p2, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->if:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Lcom/bumptech/glide/load/engine/prefill/new;
    .locals 5

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/new;

    iget v1, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->do:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->if:I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->for:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->new:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/prefill/new;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method

.method public for(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/new$do;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->for:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public if()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->for:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public new(I)Lcom/bumptech/glide/load/engine/prefill/new$do;
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/prefill/new$do;->new:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weight must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
