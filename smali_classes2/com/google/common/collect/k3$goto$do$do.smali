.class Lcom/google/common/collect/k3$goto$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k3$goto$do;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/k3$goto$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k3$goto$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$goto$do$do;->do:Lcom/google/common/collect/k3$goto$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k3$goto$do$do;->do(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$goto$do$do;->do:Lcom/google/common/collect/k3$goto$do;

    iget-object v0, v0, Lcom/google/common/collect/k3$goto$do;->if:Lcom/google/common/collect/k3$goto;

    iget-object v0, v0, Lcom/google/common/collect/k3$goto;->new:Lcom/google/common/collect/k3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/k3;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
