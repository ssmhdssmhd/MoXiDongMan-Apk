.class Lcom/google/common/collect/x0$new$do;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/x0$new;->entryIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ac2<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lcom/google/common/collect/g1<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/Iterator;

.field public final synthetic if:Lcom/google/common/collect/x0$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0$new;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x0$new$do;->if:Lcom/google/common/collect/x0$new;

    iput-object p2, p0, Lcom/google/common/collect/x0$new$do;->do:Ljava/util/Iterator;

    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/g1<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    new-instance v1, Lcom/google/common/collect/x0$new$do$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/x0$new$do$do;-><init>(Lcom/google/common/collect/x0$new$do;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0$new$do;->do:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/x0$new$do;->do()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
