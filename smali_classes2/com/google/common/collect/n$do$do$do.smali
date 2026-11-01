.class Lcom/google/common/collect/n$do$do$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n$do$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final for:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/collect/n$do$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n$do$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n$do$do$do;->new:Lcom/google/common/collect/n$do$do;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

    iget-object p1, p1, Lcom/google/common/collect/n$do;->new:Lcom/google/common/collect/n;

    iget-object p1, p1, Lcom/google/common/collect/n;->case:Lcom/google/common/collect/Multimap;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n$do$do$do;->for:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n$do$do$do;->new()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n$do$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n$do$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/google/common/collect/n$for;

    iget-object v3, p0, Lcom/google/common/collect/n$do$do$do;->new:Lcom/google/common/collect/n$do$do;

    iget-object v3, v3, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

    iget-object v3, v3, Lcom/google/common/collect/n$do;->new:Lcom/google/common/collect/n;

    invoke-direct {v2, v3, v1}, Lcom/google/common/collect/n$for;-><init>(Lcom/google/common/collect/n;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/n;->if(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
