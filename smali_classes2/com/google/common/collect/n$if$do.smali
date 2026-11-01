.class Lcom/google/common/collect/n$if$do;
.super Lcom/google/common/collect/c2$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n$if;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c2$this<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/n$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n$if$do;->do:Lcom/google/common/collect/n$if;

    invoke-direct {p0}, Lcom/google/common/collect/c2$this;-><init>()V

    return-void
.end method

.method private if(Lcom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$if$do;->do:Lcom/google/common/collect/n$if;

    iget-object v0, v0, Lcom/google/common/collect/n$if;->new:Lcom/google/common/collect/n;

    new-instance v1, Lcom/google/common/collect/n$if$do$do;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/n$if$do$do;-><init>(Lcom/google/common/collect/n$if$do;Lcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n;->for(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public do()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$if$do;->do:Lcom/google/common/collect/n$if;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$if$do;->do:Lcom/google/common/collect/n$if;

    invoke-virtual {v0}, Lcom/google/common/collect/b2$else;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/n$if$do;->if(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/n$if$do;->if(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$if$do;->do:Lcom/google/common/collect/n$if;

    iget-object v0, v0, Lcom/google/common/collect/n$if;->new:Lcom/google/common/collect/n;

    invoke-virtual {v0}, Lcom/google/common/collect/goto;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
