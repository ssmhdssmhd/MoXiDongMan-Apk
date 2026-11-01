.class Lcom/google/common/util/concurrent/h$goto;
.super Lcom/google/common/util/concurrent/h$catch;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/af2;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/h$catch<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final else:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final goto:I


# direct methods
.method public constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/h$catch;-><init>(I)V

    .line 2
    iget p1, p0, Lcom/google/common/util/concurrent/h$catch;->try:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/common/util/concurrent/h$goto;->goto:I

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h$goto;->else:Lcom/google/common/base/Supplier;

    .line 4
    new-instance p1, Lcom/google/common/collect/y1;

    invoke-direct {p1}, Lcom/google/common/collect/y1;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/y1;->const()Lcom/google/common/collect/y1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/y1;->this()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$goto;->case:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public else(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/h$goto;->goto:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h$goto;->throw()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$goto;->case:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$goto;->else:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/util/concurrent/h$goto;->case:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/h$goto;->goto:I

    return v0
.end method
