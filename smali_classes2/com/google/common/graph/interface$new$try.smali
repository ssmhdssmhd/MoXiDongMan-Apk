.class final Lcom/google/common/graph/interface$new$try;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/interface$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/interface$new$try$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final for:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/graph/interface$new<",
            "TN;>.try.do;>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lcom/google/common/graph/interface$new;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/interface$new;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/interface$new$try;->new:Lcom/google/common/graph/interface$new;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/interface$new$try;->for:Ljava/util/ArrayDeque;

    .line 3
    new-instance v0, Lcom/google/common/graph/interface$new$try$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/interface$new$try$do;-><init>(Lcom/google/common/graph/interface$new$try;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/interface$new$try;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/interface$new$try;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/interface$new$try$do;

    .line 3
    iget-object v1, v0, Lcom/google/common/graph/interface$new$try$do;->if:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/common/graph/interface$new$try$do;->if:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/graph/interface$new$try;->for:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/google/common/graph/interface$new$try;->new(Ljava/lang/Object;)Lcom/google/common/graph/interface$new$try$do;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/interface$new$try;->for:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 7
    iget-object v0, v0, Lcom/google/common/graph/interface$new$try$do;->do:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/lang/Object;)Lcom/google/common/graph/interface$new$try$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/interface$new<",
            "TN;>.try.do;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/interface$new$try$do;

    iget-object v1, p0, Lcom/google/common/graph/interface$new$try;->new:Lcom/google/common/graph/interface$new;

    invoke-static {v1}, Lcom/google/common/graph/interface$new;->this(Lcom/google/common/graph/interface$new;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/interface$new$try$do;-><init>(Lcom/google/common/graph/interface$new$try;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
