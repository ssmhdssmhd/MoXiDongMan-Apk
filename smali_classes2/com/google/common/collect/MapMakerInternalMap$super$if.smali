.class final enum Lcom/google/common/collect/MapMakerInternalMap$super$if;
.super Lcom/google/common/collect/MapMakerInternalMap$super;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$super;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$super;-><init>(Ljava/lang/String;ILcom/google/common/collect/MapMakerInternalMap$do;)V

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
