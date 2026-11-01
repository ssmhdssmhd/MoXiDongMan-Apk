.class Lcom/google/common/graph/const$do$do;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/const$do;->do()Landroid/support/v4/ac2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Ljava/util/Iterator;

.field public final synthetic new:Ljava/util/Set;

.field public final synthetic try:Lcom/google/common/graph/const$do;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/const$do;Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/const$do$do;->try:Lcom/google/common/graph/const$do;

    iput-object p2, p0, Lcom/google/common/graph/const$do$do;->for:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/graph/const$do$do;->new:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/const$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/const$do$do;->for:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/const$this;

    .line 3
    iget-object v1, p0, Lcom/google/common/graph/const$do$do;->new:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/const$this;->do:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/common/graph/const$this;->do:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
