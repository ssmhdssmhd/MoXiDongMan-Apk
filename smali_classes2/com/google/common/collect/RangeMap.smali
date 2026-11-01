.class public interface abstract Lcom/google/common/collect/RangeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation runtime Landroid/support/v4/v10;
    value = "Use ImmutableRangeMap or TreeRangeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asDescendingMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract asMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
.end method

.method public abstract get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract putAll(Lcom/google/common/collect/RangeMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract putCoalescing(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/google/common/collect/n2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public abstract span()Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
