.class final Lcom/google/common/collect/MapMakerInternalMap$throw;
.super Lcom/google/common/collect/MapMakerInternalMap$for;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "throw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$throw$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$for<",
        "TK;",
        "Lcom/google/common/collect/y1$do;",
        "Lcom/google/common/collect/MapMakerInternalMap$throw<",
        "TK;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lcom/google/common/collect/y1$do;",
        "Lcom/google/common/collect/MapMakerInternalMap$throw<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throw;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$throw;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$for;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-void
.end method


# virtual methods
.method public do(Lcom/google/common/collect/MapMakerInternalMap$throw;)Lcom/google/common/collect/MapMakerInternalMap$throw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throw<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$throw;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$for;->do:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$for;->if:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/MapMakerInternalMap$throw;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throw;)V

    return-object v0
.end method

.method public for(Lcom/google/common/collect/y1$do;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$throw;->if()Lcom/google/common/collect/y1$do;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/google/common/collect/y1$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/y1$do;->VALUE:Lcom/google/common/collect/y1$do;

    return-object v0
.end method
