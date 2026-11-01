.class final enum Lcom/google/common/cache/LocalCache$public$for;
.super Lcom/google/common/cache/LocalCache$public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$public;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$public;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$do;)V

    return-void
.end method


# virtual methods
.method public defaultEquivalence()Lcom/google/common/base/this;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/this<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/base/this;->identity()Lcom/google/common/base/this;

    move-result-object v0

    return-object v0
.end method

.method public referenceValue(Lcom/google/common/cache/LocalCache$import;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$import<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 1
    new-instance p4, Lcom/google/common/cache/LocalCache$continue;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache$import;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4, p1, p3, p2}, Lcom/google/common/cache/LocalCache$continue;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$protected;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache$import;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/google/common/cache/LocalCache$protected;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;I)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method
