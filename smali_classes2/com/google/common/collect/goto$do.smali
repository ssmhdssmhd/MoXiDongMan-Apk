.class Lcom/google/common/collect/goto$do;
.super Lcom/google/common/collect/b2$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b2$case<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/goto;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/goto$do;->do:Lcom/google/common/collect/goto;

    invoke-direct {p0}, Lcom/google/common/collect/b2$case;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/goto$do;->do:Lcom/google/common/collect/goto;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/goto$do;->do:Lcom/google/common/collect/goto;

    invoke-virtual {v0}, Lcom/google/common/collect/goto;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
