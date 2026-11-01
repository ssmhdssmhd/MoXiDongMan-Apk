.class final enum Lcom/google/common/cache/LocalCache$public$do;
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
    invoke-static {}, Lcom/google/common/base/this;->equals()Lcom/google/common/base/this;

    move-result-object v0

    return-object v0
.end method

.method public referenceValue(Lcom/google/common/cache/LocalCache$import;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 0
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

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/common/cache/LocalCache$throws;

    invoke-direct {p1, p3}, Lcom/google/common/cache/LocalCache$throws;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/cache/LocalCache$interface;

    invoke-direct {p1, p3, p4}, Lcom/google/common/cache/LocalCache$interface;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object p1
.end method
