.class Lcom/bumptech/glide/load/engine/case$new;
.super Lcom/bumptech/glide/load/engine/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/case;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public for(Lcom/bumptech/glide/load/do;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new(ZLcom/bumptech/glide/load/do;Lcom/bumptech/glide/load/for;)Z
    .locals 0

    .line 1
    sget-object p1, Lcom/bumptech/glide/load/do;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/do;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/do;->MEMORY_CACHE:Lcom/bumptech/glide/load/do;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
