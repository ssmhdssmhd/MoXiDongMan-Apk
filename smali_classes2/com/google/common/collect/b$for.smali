.class final Lcom/google/common/collect/b$for;
.super Lcom/google/common/collect/b$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b$new<",
        "TC;",
        "Lcom/google/common/collect/x0<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/b;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/b$for;->this$0:Lcom/google/common/collect/b;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/b;->access$500(Lcom/google/common/collect/b;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/b$new;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/b;Lcom/google/common/collect/b$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/b$for;-><init>(Lcom/google/common/collect/b;)V

    return-void
.end method


# virtual methods
.method public getValue(I)Lcom/google/common/collect/x0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/x0<",
            "TR;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/b$if;

    iget-object v1, p0, Lcom/google/common/collect/b$for;->this$0:Lcom/google/common/collect/b;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/b$if;-><init>(Lcom/google/common/collect/b;I)V

    return-object v0
.end method

.method public bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b$for;->getValue(I)Lcom/google/common/collect/x0;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/google/common/collect/b$for;->this$0:Lcom/google/common/collect/b;

    invoke-static {v0}, Lcom/google/common/collect/b;->access$300(Lcom/google/common/collect/b;)Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method
