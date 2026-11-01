.class Lcom/google/common/collect/k3$else$if;
.super Landroid/support/v4/yd0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k3$else;->try(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yd0<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Map$Entry;

.field public final synthetic if:Lcom/google/common/collect/k3$else;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k3$else;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$else$if;->if:Lcom/google/common/collect/k3$else;

    iput-object p2, p0, Lcom/google/common/collect/k3$else$if;->do:Ljava/util/Map$Entry;

    invoke-direct {p0}, Landroid/support/v4/yd0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k3$else$if;->do()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public do()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$else$if;->do:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/yd0;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v4/yd0;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
