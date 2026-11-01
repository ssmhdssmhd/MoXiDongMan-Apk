.class final Lcom/google/common/collect/MapMakerInternalMap$throws;
.super Lcom/google/common/collect/MapMakerInternalMap$new;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "throws"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$throws$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$new<",
        "TK;",
        "Lcom/google/common/collect/y1$do;",
        "Lcom/google/common/collect/MapMakerInternalMap$throws<",
        "TK;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lcom/google/common/collect/y1$do;",
        "Lcom/google/common/collect/MapMakerInternalMap$throws<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throws;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$throws;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$new;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$throws;)Lcom/google/common/collect/MapMakerInternalMap$throws;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$throws<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$throws;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$new;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$new;->do:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$throws;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$throws;)V

    return-object v0
.end method

.method public for(Lcom/google/common/collect/y1$do;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$throws;->if()Lcom/google/common/collect/y1$do;

    move-result-object v0

    return-object v0
.end method

.method public if()Lcom/google/common/collect/y1$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/y1$do;->VALUE:Lcom/google/common/collect/y1$do;

    return-object v0
.end method
