.class Lcom/google/common/graph/try$do$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/try$do$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;",
        "Lcom/google/common/graph/import<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/graph/try$do$do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/try$do$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/try$do$do$do;->do:Lcom/google/common/graph/try$do$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/try$do$do$do;->do(Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;)Lcom/google/common/graph/import;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/import<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/try$do$do$do;->do:Lcom/google/common/graph/try$do$do;

    iget-object v0, v0, Lcom/google/common/graph/try$do$do;->do:Lcom/google/common/graph/try$do;

    iget-object v0, v0, Lcom/google/common/graph/try$do;->do:Lcom/google/common/graph/try;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method
