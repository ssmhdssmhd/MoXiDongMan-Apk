.class Lcom/google/common/collect/Maps$static$do;
.super Lcom/google/common/collect/Maps$abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$static;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$abstract<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/Maps$static;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$static;Ljava/util/NavigableMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/Maps$static$do;->if:Lcom/google/common/collect/Maps$static;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$abstract;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/google/common/collect/Maps$static$do;->if:Lcom/google/common/collect/Maps$static;

    invoke-static {v0}, Lcom/google/common/collect/Maps$static;->new(Lcom/google/common/collect/Maps$static;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$static$do;->if:Lcom/google/common/collect/Maps$static;

    invoke-static {v1}, Lcom/google/common/collect/Maps$static;->for(Lcom/google/common/collect/Maps$static;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$return;->try(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

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
    iget-object v0, p0, Lcom/google/common/collect/Maps$static$do;->if:Lcom/google/common/collect/Maps$static;

    invoke-static {v0}, Lcom/google/common/collect/Maps$static;->new(Lcom/google/common/collect/Maps$static;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$static$do;->if:Lcom/google/common/collect/Maps$static;

    invoke-static {v1}, Lcom/google/common/collect/Maps$static;->for(Lcom/google/common/collect/Maps$static;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Maps$return;->case(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
