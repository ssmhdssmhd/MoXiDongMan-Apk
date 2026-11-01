.class Lcom/google/common/reflect/break$this$try;
.super Lcom/google/common/reflect/break$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/break$this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/break$this<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final for:Lcom/google/common/reflect/break$this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/break$this<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/break$this;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/break$this<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/reflect/break$this;-><init>(Lcom/google/common/reflect/break$do;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/reflect/break$this$try;->for:Lcom/google/common/reflect/break$this;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$this$try;->for:Lcom/google/common/reflect/break$this;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break$this;->case(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$this$try;->for:Lcom/google/common/reflect/break$this;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break$this;->else(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable<",
            "+TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/reflect/break$this$try;->for:Lcom/google/common/reflect/break$this;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/break$this;->try(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
