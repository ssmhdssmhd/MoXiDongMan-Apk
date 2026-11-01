.class Lcom/google/common/collect/v0$try;
.super Lcom/google/common/collect/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient length:I

.field public final transient offset:I

.field public final synthetic this$0:Lcom/google/common/collect/v0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    invoke-direct {p0}, Lcom/google/common/collect/v0;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/common/collect/v0$try;->offset:I

    .line 3
    iput p3, p0, Lcom/google/common/collect/v0$try;->length:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/v0$try;->length:I

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    iget v1, p0, Lcom/google/common/collect/v0$try;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public internalArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public internalArrayEnd()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArrayStart()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/v0$try;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/v0$try;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public internalArrayStart()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->internalArrayStart()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/v0$try;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/v0;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/v0;->listIterator()Landroid/support/v4/bc2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/v0;->listIterator(I)Landroid/support/v4/bc2;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/v0$try;->length:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/v0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/common/collect/v0$try;->length:I

    invoke-static {p1, p2, v0}, Landroid/support/v4/af1;->s(III)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/v0$try;->this$0:Lcom/google/common/collect/v0;

    iget v1, p0, Lcom/google/common/collect/v0$try;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v0;->subList(II)Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v0$try;->subList(II)Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method
