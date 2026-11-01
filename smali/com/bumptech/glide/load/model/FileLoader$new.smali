.class public Lcom/bumptech/glide/load/model/FileLoader$new;
.super Lcom/bumptech/glide/load/model/FileLoader$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/FileLoader$do<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader$new$do;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/FileLoader$new$do;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/FileLoader$do;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    return-void
.end method
