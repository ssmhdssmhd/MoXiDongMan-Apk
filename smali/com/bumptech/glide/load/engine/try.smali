.class final Lcom/bumptech/glide/load/engine/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private break:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private case:I

.field private catch:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private class:Z

.field private const:Z

.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;>;"
        }
    .end annotation
.end field

.field private else:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final:Lcom/bumptech/glide/load/Key;

.field private for:Lcom/bumptech/glide/for;

.field private goto:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private import:Z

.field private new:Ljava/lang/Object;

.field private super:Lcom/bumptech/glide/try;

.field private this:Landroid/support/v4/f81;

.field private throw:Lcom/bumptech/glide/load/engine/case;

.field private try:I

.field private while:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->do:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public break(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/case$for;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/case;->this(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/try;->case:I

    return v0
.end method

.method public catch()Landroid/support/v4/f81;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->this:Landroid/support/v4/f81;

    return-object v0
.end method

.method public class()Lcom/bumptech/glide/try;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->super:Lcom/bumptech/glide/try;

    return-object v0
.end method

.method public const()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/try;->else:Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/try;->catch:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/case;->break(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public do()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->final:Lcom/bumptech/glide/load/Key;

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->else:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->catch:Ljava/lang/Class;

    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->this:Landroid/support/v4/f81;

    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->super:Lcom/bumptech/glide/try;

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->break:Ljava/util/Map;

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/try;->throw:Lcom/bumptech/glide/load/engine/case;

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->class:Z

    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->const:Z

    return-void
.end method

.method public else()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->class:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->class:Z

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/case;->this(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 7
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    iget v5, p0, Lcom/bumptech/glide/load/engine/try;->try:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/try;->case:I

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/try;->this:Landroid/support/v4/f81;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/try;->do:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->do:Ljava/util/List;

    return-object v0
.end method

.method public final(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/case;->catch(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object p1

    return-object p1
.end method

.method public for()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->const:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->const:Z

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/try;->else()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoader$do;

    .line 7
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    .line 9
    :goto_1
    iget-object v6, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->if:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 10
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->if:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->if:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->if:Ljava/util/List;

    return-object v0
.end method

.method public goto(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/const;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/engine/const<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/try;->else:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/try;->catch:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/case;->goto(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/const;

    move-result-object p1

    return-object p1
.end method

.method public if()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->if()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v0

    return-object v0
.end method

.method public import(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->break:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/try;->break:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    :cond_1
    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->break:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->while:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Landroid/support/v4/wb2;->do()Landroid/support/v4/wb2;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public native()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/try;->try:I

    return v0
.end method

.method public new()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->goto:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public public(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/try;->goto(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/const;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public return(Lcom/bumptech/glide/for;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/case;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/try;Landroid/support/v4/f81;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/for;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/engine/case;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/try;",
            "Landroid/support/v4/f81;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/try;->final:Lcom/bumptech/glide/load/Key;

    .line 4
    iput p4, p0, Lcom/bumptech/glide/load/engine/try;->try:I

    .line 5
    iput p5, p0, Lcom/bumptech/glide/load/engine/try;->case:I

    .line 6
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/try;->throw:Lcom/bumptech/glide/load/engine/case;

    .line 7
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/try;->else:Ljava/lang/Class;

    .line 8
    iput-object p14, p0, Lcom/bumptech/glide/load/engine/try;->goto:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 9
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/try;->catch:Ljava/lang/Class;

    .line 10
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/try;->super:Lcom/bumptech/glide/try;

    .line 11
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/try;->this:Landroid/support/v4/f81;

    .line 12
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/try;->break:Ljava/util/Map;

    .line 13
    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/try;->while:Z

    .line 14
    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/try;->import:Z

    return-void
.end method

.method public static(Lcom/bumptech/glide/load/engine/Resource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/case;->final(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result p1

    return p1
.end method

.method public super()Lcom/bumptech/glide/load/Key;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->final:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method public switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/try;->import:Z

    return v0
.end method

.method public this()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->new:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public throw(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/Encoder<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/case$try;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->for:Lcom/bumptech/glide/for;

    invoke-virtual {v0}, Lcom/bumptech/glide/for;->goto()Lcom/bumptech/glide/case;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/case;->const(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    move-result-object p1

    return-object p1
.end method

.method public throws(Lcom/bumptech/glide/load/Key;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/try;->else()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/model/ModelLoader$do;

    .line 4
    iget-object v4, v4, Lcom/bumptech/glide/load/model/ModelLoader$do;->do:Lcom/bumptech/glide/load/Key;

    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public try()Lcom/bumptech/glide/load/engine/case;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->throw:Lcom/bumptech/glide/load/engine/case;

    return-object v0
.end method

.method public while()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/try;->catch:Ljava/lang/Class;

    return-object v0
.end method
