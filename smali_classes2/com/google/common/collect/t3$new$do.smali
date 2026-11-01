.class Lcom/google/common/collect/t3$new$do;
.super Lcom/google/common/collect/t3$new$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t3$new;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t3<",
        "TK;TV;>.new.if;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/t3$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t3$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t3$new$do;->if:Lcom/google/common/collect/t3$new;

    invoke-direct {p0, p1}, Lcom/google/common/collect/t3$new$if;-><init>(Lcom/google/common/collect/t3$new;)V

    return-void
.end method


# virtual methods
.method public if()Ljava/util/Iterator;
    .locals 3
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
    iget-object v0, p0, Lcom/google/common/collect/t3$new$do;->if:Lcom/google/common/collect/t3$new;

    invoke-static {v0}, Lcom/google/common/collect/t3$new;->do(Lcom/google/common/collect/t3$new;)Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/t3$new$do;->if:Lcom/google/common/collect/t3$new;

    iget-object v0, v0, Lcom/google/common/collect/t3$new;->if:Lcom/google/common/collect/t3;

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/t3;->do(Lcom/google/common/collect/t3;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/t3$new$do;->if:Lcom/google/common/collect/t3$new;

    .line 5
    invoke-static {v1}, Lcom/google/common/collect/t3$new;->do(Lcom/google/common/collect/t3$new;)Lcom/google/common/collect/n2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/common/collect/t3$new$do$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/t3$new$do$do;-><init>(Lcom/google/common/collect/t3$new$do;Ljava/util/Iterator;)V

    return-object v1
.end method
