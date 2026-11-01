.class Lcom/google/common/collect/w1$new$do;
.super Lcom/google/common/collect/p3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/w1$new;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p3<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/w1$new;

.field public final synthetic if:Lcom/google/common/collect/w1$goto;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1$new;Ljava/util/ListIterator;Lcom/google/common/collect/w1$goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/w1$new$do;->for:Lcom/google/common/collect/w1$new;

    iput-object p3, p0, Lcom/google/common/collect/w1$new$do;->if:Lcom/google/common/collect/w1$goto;

    invoke-direct {p0, p2}, Lcom/google/common/collect/p3;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/w1$new$do;->for(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$new$do;->if:Lcom/google/common/collect/w1$goto;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/w1$goto;->case(Ljava/lang/Object;)V

    return-void
.end method
