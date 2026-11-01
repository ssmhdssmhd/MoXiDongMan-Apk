.class Lcom/google/common/collect/t3$new$if$if;
.super Lcom/google/common/collect/Maps$native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t3$new$if;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$native<",
        "Lcom/google/common/collect/n2<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/t3$new$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t3$new$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t3$new$if$if;->do:Lcom/google/common/collect/t3$new$if;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$native;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$if;->do:Lcom/google/common/collect/t3$new$if;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/t3$new$if$if;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$if;->do:Lcom/google/common/collect/t3$new$if;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$new$if;->if()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3$new$if$if;->do:Lcom/google/common/collect/t3$new$if;

    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/t3$new$if;->do(Lcom/google/common/collect/t3$new$if;Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/t3$new$if$if;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s1;->m(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
