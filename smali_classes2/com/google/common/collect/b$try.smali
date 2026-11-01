.class final Lcom/google/common/collect/b$try;
.super Lcom/google/common/collect/b$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b$new<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final rowIndex:I

.field public final synthetic this$0:Lcom/google/common/collect/b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b$try;->this$0:Lcom/google/common/collect/b;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/b;->access$200(Lcom/google/common/collect/b;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/b$new;-><init>(I)V

    .line 3
    iput p2, p0, Lcom/google/common/collect/b$try;->rowIndex:I

    return-void
.end method


# virtual methods
.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b$try;->this$0:Lcom/google/common/collect/b;

    invoke-static {v0}, Lcom/google/common/collect/b;->access$400(Lcom/google/common/collect/b;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/b$try;->rowIndex:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keyToIndex()Lcom/google/common/collect/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b$try;->this$0:Lcom/google/common/collect/b;

    invoke-static {v0}, Lcom/google/common/collect/b;->access$300(Lcom/google/common/collect/b;)Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method
