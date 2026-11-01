.class Lcom/google/common/reflect/break$this$for;
.super Lcom/google/common/reflect/break$this$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/break$this;->do()Lcom/google/common/reflect/break$this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/break$this$try<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/google/common/reflect/break$this;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break$this;Lcom/google/common/reflect/break$this;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/reflect/break$this$for;->new:Lcom/google/common/reflect/break$this;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/break$this$try;-><init>(Lcom/google/common/reflect/break$this;)V

    return-void
.end method


# virtual methods
.method public for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/v0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/v0;->builder()Lcom/google/common/collect/v0$do;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/reflect/break$this$try;->case(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/common/reflect/break$this;->for(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method
