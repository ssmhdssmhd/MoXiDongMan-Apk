.class Lcom/google/common/collect/p2$for;
.super Lcom/google/common/collect/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p2;->createAsList()Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/o0<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/p2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/p2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/p2$for;->this$0:Lcom/google/common/collect/p2;

    invoke-direct {p0}, Lcom/google/common/collect/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public delegateCollection()Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p2$for;->this$0:Lcom/google/common/collect/p2;

    return-object v0
.end method

.method public bridge synthetic delegateCollection()Lcom/google/common/collect/r0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p2$for;->delegateCollection()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o0;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/p2$for;->this$0:Lcom/google/common/collect/p2;

    iget-object v1, v0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/f;->offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p2$for;->get(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
