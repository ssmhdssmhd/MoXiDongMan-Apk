.class abstract Lcom/google/common/collect/k3$this;
.super Lcom/google/common/collect/c3$catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "this"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c3$catch<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/k3;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/k3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k3$this;->do:Lcom/google/common/collect/k3;

    invoke-direct {p0}, Lcom/google/common/collect/c3$catch;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/k3;Lcom/google/common/collect/k3$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/k3$this;-><init>(Lcom/google/common/collect/k3;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$this;->do:Lcom/google/common/collect/k3;

    iget-object v0, v0, Lcom/google/common/collect/k3;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k3$this;->do:Lcom/google/common/collect/k3;

    iget-object v0, v0, Lcom/google/common/collect/k3;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
