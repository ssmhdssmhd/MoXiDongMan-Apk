.class Lcom/google/common/collect/f1$do;
.super Lcom/google/common/collect/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f1;->do(Lcom/google/common/collect/n2;)Lcom/google/common/collect/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v0<",
        "Lcom/google/common/collect/n2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/f1;

.field public final synthetic val$fromIndex:I

.field public final synthetic val$length:I

.field public final synthetic val$range:Lcom/google/common/collect/n2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f1;IILcom/google/common/collect/n2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f1$do;->this$0:Lcom/google/common/collect/f1;

    iput p2, p0, Lcom/google/common/collect/f1$do;->val$length:I

    iput p3, p0, Lcom/google/common/collect/f1$do;->val$fromIndex:I

    iput-object p4, p0, Lcom/google/common/collect/f1$do;->val$range:Lcom/google/common/collect/n2;

    invoke-direct {p0}, Lcom/google/common/collect/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/google/common/collect/f1$do;->val$length:I

    invoke-static {p1, v0}, Landroid/support/v4/af1;->private(II)I

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/common/collect/f1$do;->val$length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/f1$do;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f1$do;->val$fromIndex:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    return-object p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/f1$do;->this$0:Lcom/google/common/collect/f1;

    invoke-static {v0}, Lcom/google/common/collect/f1;->access$000(Lcom/google/common/collect/f1;)Lcom/google/common/collect/v0;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f1$do;->val$fromIndex:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    iget-object v0, p0, Lcom/google/common/collect/f1$do;->val$range:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f1$do;->get(I)Lcom/google/common/collect/n2;

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
    iget v0, p0, Lcom/google/common/collect/f1$do;->val$length:I

    return v0
.end method
