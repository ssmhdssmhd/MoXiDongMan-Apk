.class public Landroid/support/v4/mz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/mz0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/mz0;->do:Landroid/content/Context;

    return-void
.end method

.method private for(Landroid/support/v4/f81;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->else:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p1, v0}, Landroid/support/v4/f81;->do(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/f81;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/mz0;->do(Landroid/net/Uri;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/net/Uri;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/f81;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Landroid/support/v4/f81;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Landroid/support/v4/lz0;->new(II)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p4}, Landroid/support/v4/mz0;->for(Landroid/support/v4/f81;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$do;

    new-instance p3, Landroid/support/v4/s51;

    invoke-direct {p3, p1}, Landroid/support/v4/s51;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Landroid/support/v4/mz0;->do:Landroid/content/Context;

    invoke-static {p4, p1}, Lcom/bumptech/glide/load/data/mediastore/if;->for(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/mediastore/if;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/model/ModelLoader$do;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/support/v4/mz0;->if(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public if(Landroid/net/Uri;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/support/v4/lz0;->for(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
