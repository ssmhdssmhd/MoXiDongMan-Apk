.class Lcom/google/common/collect/t$for$do;
.super Lcom/google/common/collect/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/t$for;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/if<",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/t$for;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/t$for;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/t$for$do;->for:Lcom/google/common/collect/t$for;

    invoke-direct {p0, p2}, Lcom/google/common/collect/if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t$for$do;->if(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t$for$do;->for:Lcom/google/common/collect/t$for;

    iget-object v0, v0, Lcom/google/common/collect/t$for;->if:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
