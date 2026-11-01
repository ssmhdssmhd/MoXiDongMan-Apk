.class abstract Lcom/google/common/collect/MapMakerInternalMap$if;
.super Landroid/support/v4/rd0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/rd0<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field public final concurrencyLevel:I

.field public transient delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final keyEquivalence:Lcom/google/common/base/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final keyStrength:Lcom/google/common/collect/MapMakerInternalMap$super;

.field public final valueEquivalence:Lcom/google/common/base/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final valueStrength:Lcom/google/common/collect/MapMakerInternalMap$super;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$super;Lcom/google/common/collect/MapMakerInternalMap$super;Lcom/google/common/base/this;Lcom/google/common/base/this;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$super;",
            "Lcom/google/common/collect/MapMakerInternalMap$super;",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/rd0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->keyEquivalence:Lcom/google/common/base/this;

    .line 5
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->valueEquivalence:Lcom/google/common/base/this;

    .line 6
    iput p5, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->concurrencyLevel:I

    .line 7
    iput-object p6, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public readEntries(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/y1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 2
    new-instance v0, Lcom/google/common/collect/y1;

    invoke-direct {v0}, Lcom/google/common/collect/y1;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/y1;->else(I)Lcom/google/common/collect/y1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/common/collect/y1;->break(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$super;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/common/collect/y1;->catch(Lcom/google/common/collect/MapMakerInternalMap$super;)Lcom/google/common/collect/y1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->keyEquivalence:Lcom/google/common/base/this;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/common/collect/y1;->goto(Lcom/google/common/base/this;)Lcom/google/common/collect/y1;

    move-result-object p1

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->concurrencyLevel:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/common/collect/y1;->do(I)Lcom/google/common/collect/y1;

    move-result-object p1

    return-object p1
.end method

.method public writeMapTo(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$if;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
