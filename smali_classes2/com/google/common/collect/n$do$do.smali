.class Lcom/google/common/collect/n$do$do;
.super Lcom/google/common/collect/Maps$native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n$do;->do()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$native<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/n$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

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
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/n$do$do$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n$do$do$do;-><init>(Lcom/google/common/collect/n$do$do;)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

    iget-object v0, v0, Lcom/google/common/collect/n$do;->new:Lcom/google/common/collect/n;

    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n;->for(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
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
    iget-object v0, p0, Lcom/google/common/collect/n$do$do;->do:Lcom/google/common/collect/n$do;

    iget-object v0, v0, Lcom/google/common/collect/n$do;->new:Lcom/google/common/collect/n;

    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n;->for(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n$do$do;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s1;->m(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
