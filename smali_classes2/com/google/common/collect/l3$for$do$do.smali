.class Lcom/google/common/collect/l3$for$do$do;
.super Landroid/support/v4/yd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l3$for$do;->if(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yd0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Map$Entry;

.field public final synthetic if:Lcom/google/common/collect/l3$for$do;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l3$for$do;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l3$for$do$do;->if:Lcom/google/common/collect/l3$for$do;

    iput-object p2, p0, Lcom/google/common/collect/l3$for$do$do;->do:Ljava/util/Map$Entry;

    invoke-direct {p0}, Landroid/support/v4/yd0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l3$for$do$do;->do()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public do()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$for$do$do;->do:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l3$for$do$do;->if()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l3$for$do$do;->do:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/l3$for$do$do;->if:Lcom/google/common/collect/l3$for$do;

    iget-object v1, v1, Lcom/google/common/collect/l3$for$do;->if:Lcom/google/common/collect/l3$for;

    iget-object v1, v1, Lcom/google/common/collect/l3$throw;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/l3;->new(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
