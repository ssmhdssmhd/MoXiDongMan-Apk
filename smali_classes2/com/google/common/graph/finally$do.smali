.class final Lcom/google/common/graph/finally$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/finally;->throw(Lcom/google/common/graph/Network;)Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/graph/Network;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/finally$do;->do:Lcom/google/common/graph/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/finally$do;->do:Lcom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/import;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/graph/import;->this()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
