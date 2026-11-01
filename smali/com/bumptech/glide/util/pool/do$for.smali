.class Lcom/bumptech/glide/util/pool/do$for;
.super Lcom/bumptech/glide/util/pool/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field private volatile if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/pool/do;-><init>(Lcom/bumptech/glide/util/pool/do$do;)V

    return-void
.end method


# virtual methods
.method public for()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/util/pool/do$for;->if:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/util/pool/do$for;->if:Z

    return-void
.end method
