.class Lcom/google/common/collect/k3$for$for;
.super Lcom/google/common/collect/Maps$finally;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$finally<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/k3$for;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k3$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$for$for;->if:Lcom/google/common/collect/k3$for;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$finally;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$for$for;->if:Lcom/google/common/collect/k3$for;

    iget-object v1, v0, Lcom/google/common/collect/k3$for;->try:Lcom/google/common/collect/k3;

    iget-object v0, v0, Lcom/google/common/collect/k3$for;->new:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/k3;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$for$for;->if:Lcom/google/common/collect/k3$for;

    iget-object v1, v0, Lcom/google/common/collect/k3$for;->try:Lcom/google/common/collect/k3;

    iget-object v0, v0, Lcom/google/common/collect/k3$for;->new:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/k3;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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
    iget-object v0, p0, Lcom/google/common/collect/k3$for$for;->if:Lcom/google/common/collect/k3$for;

    invoke-static {p1}, Lcom/google/common/base/public;->final(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/public;->while(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->h(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3$for;->new(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
