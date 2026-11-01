.class Lcom/google/common/collect/try$for$do;
.super Lcom/google/common/collect/Maps$native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/try$for;
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
.field public final synthetic do:Lcom/google/common/collect/try$for;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/try$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/try$for$do;->do:Lcom/google/common/collect/try$for;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$native;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/try$for$do;->do:Lcom/google/common/collect/try$for;

    iget-object v0, v0, Lcom/google/common/collect/try$for;->new:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/extends;->catch(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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
    iget-object v0, p0, Lcom/google/common/collect/try$for$do;->do:Lcom/google/common/collect/try$for;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    new-instance v0, Lcom/google/common/collect/try$for$if;

    iget-object v1, p0, Lcom/google/common/collect/try$for$do;->do:Lcom/google/common/collect/try$for;

    invoke-direct {v0, v1}, Lcom/google/common/collect/try$for$if;-><init>(Lcom/google/common/collect/try$for;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/try$for$do;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/try$for$do;->do:Lcom/google/common/collect/try$for;

    iget-object v0, v0, Lcom/google/common/collect/try$for;->try:Lcom/google/common/collect/try;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/try;->access$300(Lcom/google/common/collect/try;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
