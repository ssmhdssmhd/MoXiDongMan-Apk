.class final Lcom/google/common/collect/f1$try;
.super Lcom/google/common/collect/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v0<",
        "Lcom/google/common/collect/n2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final positiveBoundedAbove:Z

.field private final positiveBoundedBelow:Z

.field private final size:I

.field public final synthetic this$0:Lcom/google/common/collect/f1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f1$try;->this$0:Lcom/google/common/collect/f1;

    invoke-direct {p0}, Lcom/google/common/collect/v0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/collect/f1$try;->positiveBoundedBelow:Z

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/r1;->switch(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    invoke-virtual {v1}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/collect/f1$try;->positiveBoundedAbove:Z

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 5
    :cond_1
    iput p1, p0, Lcom/google/common/collect/f1$try;->size:I

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/n2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/common/collect/f1$try;->size:I

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 3
    iget-boolean v0, p0, Lcom/google/common/collect/f1$try;->positiveBoundedBelow:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/f1$try;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/f1$try;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 6
    :goto_0
    iget-boolean v1, p0, Lcom/google/common/collect/f1$try;->positiveBoundedAbove:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/common/collect/f1$try;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/f1$try;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v1}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/common/collect/f1$try;->positiveBoundedBelow:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    iget-object p1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 9
    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$try;->get(I)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/f1$try;->size:I

    return v0
.end method
