.class Lcom/google/common/collect/p2$if;
.super Landroid/support/v4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p2;->descendingIterator()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/e<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/p2;

.field public final if:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p2;Ljava/lang/Comparable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/p2$if;->for:Lcom/google/common/collect/p2;

    invoke-direct {p0, p2}, Landroid/support/v4/e;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/p2$if;->if:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public bridge synthetic do(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/p2$if;->if(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p2$if;->if:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lcom/google/common/collect/p2;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/p2$if;->for:Lcom/google/common/collect/p2;

    iget-object v0, v0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
