.class public Lcom/bumptech/glide/load/model/FileLoader$if;
.super Lcom/bumptech/glide/load/model/FileLoader$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/FileLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/FileLoader$do<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/FileLoader$if$do;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/FileLoader$if$do;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/FileLoader$do;-><init>(Lcom/bumptech/glide/load/model/FileLoader$FileOpener;)V

    return-void
.end method
