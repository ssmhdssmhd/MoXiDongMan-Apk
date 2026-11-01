.class Lcom/google/common/collect/public$for;
.super Lcom/google/common/collect/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/public;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/if<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/public;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/public;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/public$for;->for:Lcom/google/common/collect/public;

    invoke-direct {p0, p2}, Lcom/google/common/collect/if;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$for;->for:Lcom/google/common/collect/public;

    invoke-static {v0, p1}, Lcom/google/common/collect/public;->access$800(Lcom/google/common/collect/public;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
