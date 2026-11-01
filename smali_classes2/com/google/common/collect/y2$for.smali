.class final Lcom/google/common/collect/y2$for;
.super Lcom/google/common/collect/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/y2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/y2$for;->this$0:Lcom/google/common/collect/y2;

    invoke-direct {p0}, Lcom/google/common/collect/v0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/y2;Lcom/google/common/collect/y2$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/y2$for;-><init>(Lcom/google/common/collect/y2;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/y2$for;->this$0:Lcom/google/common/collect/y2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/y2;->getValue(I)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/common/collect/y2$for;->this$0:Lcom/google/common/collect/y2;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method
