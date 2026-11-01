.class Lcom/google/common/collect/k3$for$if$do;
.super Lcom/google/common/collect/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k3$for$if;->new()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/else<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Map$Entry;

.field public final synthetic if:Lcom/google/common/collect/k3$for$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k3$for$if;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$for$if$do;->if:Lcom/google/common/collect/k3$for$if;

    iput-object p2, p0, Lcom/google/common/collect/k3$for$if$do;->do:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/else;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$for$if$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$for$if$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/k3$for$if$do;->if:Lcom/google/common/collect/k3$for$if;

    iget-object v1, v1, Lcom/google/common/collect/k3$for$if;->new:Lcom/google/common/collect/k3$for;

    iget-object v1, v1, Lcom/google/common/collect/k3$for;->new:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$for$if$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/k3$for$if$do;->if:Lcom/google/common/collect/k3$for$if;

    iget-object v1, v1, Lcom/google/common/collect/k3$for$if;->new:Lcom/google/common/collect/k3$for;

    iget-object v1, v1, Lcom/google/common/collect/k3$for;->new:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
