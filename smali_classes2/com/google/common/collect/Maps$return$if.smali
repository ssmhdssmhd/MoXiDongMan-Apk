.class Lcom/google/common/collect/Maps$return$if;
.super Lcom/google/common/collect/Maps$finally;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$finally<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/Maps$return;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$return;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$return$if;->if:Lcom/google/common/collect/Maps$return;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$finally;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$return$if;->if:Lcom/google/common/collect/Maps$return;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$final;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/Maps$return$if;->if:Lcom/google/common/collect/Maps$return;

    iget-object v0, v0, Lcom/google/common/collect/Maps$final;->new:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$return$if;->if:Lcom/google/common/collect/Maps$return;

    iget-object v1, v0, Lcom/google/common/collect/Maps$final;->new:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$final;->try:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$return;->try(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/Maps$return$if;->if:Lcom/google/common/collect/Maps$return;

    iget-object v1, v0, Lcom/google/common/collect/Maps$final;->new:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$final;->try:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$return;->case(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$finally;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x1;->native(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$finally;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x1;->native(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
