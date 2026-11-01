.class Lcom/google/common/graph/try$do$do;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/try$do;->edges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/import<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/graph/try$do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/try$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/graph/import;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/common/graph/import;

    .line 3
    iget-object v0, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/do;->if(Lcom/google/common/graph/import;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/graph/try$do;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/graph/try$do;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/import;->try()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/import<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    iget-object v0, v0, Lcom/google/common/graph/try$do;->do:Lcom/google/common/graph/try;

    .line 2
    invoke-interface {v0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/try$do$do$do;

    invoke-direct {v1, p0}, Lcom/google/common/graph/try$do$do$do;-><init>(Lcom/google/common/graph/try$do$do;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    iget-object v0, v0, Lcom/google/common/graph/try$do;->do:Lcom/google/common/graph/try;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
