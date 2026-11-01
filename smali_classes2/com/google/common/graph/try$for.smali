.class final Lcom/google/common/graph/try$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/try;->if(Lcom/google/common/graph/Network;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public final synthetic do:Lcom/google/common/graph/Network;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/try$for;->do:Lcom/google/common/graph/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/try$for;->do(Ljava/lang/Object;)Lcom/google/common/graph/import;

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
    iget-object v0, p0, Lcom/google/common/graph/try$for;->do:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    return-object p1
.end method
