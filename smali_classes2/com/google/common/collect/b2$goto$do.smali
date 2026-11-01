.class Lcom/google/common/collect/b2$goto$do;
.super Lcom/google/common/collect/c3$catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b2$goto;->get(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c3$catch<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lcom/google/common/collect/b2$goto;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b2$goto;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b2$goto$do;->if:Lcom/google/common/collect/b2$goto;

    iput-object p2, p0, Lcom/google/common/collect/b2$goto$do;->do:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/c3$catch;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/b2$goto$do$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b2$goto$do$do;-><init>(Lcom/google/common/collect/b2$goto$do;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b2$goto$do;->if:Lcom/google/common/collect/b2$goto;

    iget-object v0, v0, Lcom/google/common/collect/b2$goto;->map:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/b2$goto$do;->do:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
