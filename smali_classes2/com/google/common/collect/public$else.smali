.class Lcom/google/common/collect/public$else;
.super Lcom/google/common/collect/public$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/public;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/public$new<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/collect/public;

.field public final if:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/public;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/public$else;->for:Lcom/google/common/collect/public;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/public;->access$600(Lcom/google/common/collect/public;)Lcom/google/common/collect/x0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/public$new;-><init>(Lcom/google/common/collect/x0;Lcom/google/common/collect/public$do;)V

    .line 3
    iput p2, p0, Lcom/google/common/collect/public$else;->if:I

    return-void
.end method


# virtual methods
.method public case(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$else;->for:Lcom/google/common/collect/public;

    iget v1, p0, Lcom/google/common/collect/public$else;->if:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/public;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public new()Ljava/lang/String;
    .locals 1

    const-string v0, "Column"

    return-object v0
.end method

.method public try(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$else;->for:Lcom/google/common/collect/public;

    iget v1, p0, Lcom/google/common/collect/public$else;->if:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/public;->at(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
