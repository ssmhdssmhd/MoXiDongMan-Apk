.class final Lcom/google/common/graph/interface$if$try;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/interface$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/interface$if$try$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/for<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/graph/interface$if;

.field private final for:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/common/graph/interface$if<",
            "TN;>.try.do;>;"
        }
    .end annotation
.end field

.field private final new:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final try:Lcom/google/common/graph/interface$for;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/interface$if;Ljava/lang/Iterable;Lcom/google/common/graph/interface$for;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;",
            "Lcom/google/common/graph/interface$for;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/interface$if$try;->case:Lcom/google/common/graph/interface$if;

    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/interface$if$try;->for:Ljava/util/Deque;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/interface$if$try;->new:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/google/common/graph/interface$if$try$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/interface$if$try$do;-><init>(Lcom/google/common/graph/interface$if$try;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 5
    iput-object p3, p0, Lcom/google/common/graph/interface$if$try;->try:Lcom/google/common/graph/interface$for;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/interface$if$try;->for:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/interface$if$try;->for:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/interface$if$try$do;

    .line 4
    iget-object v1, p0, Lcom/google/common/graph/interface$if$try;->new:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/interface$if$try$do;->do:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 5
    iget-object v2, v0, Lcom/google/common/graph/interface$if$try$do;->if:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/common/graph/interface$if$try;->try:Lcom/google/common/graph/interface$for;

    sget-object v4, Lcom/google/common/graph/interface$for;->PREORDER:Lcom/google/common/graph/interface$for;

    if-eq v1, v4, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/common/graph/interface$if$try;->try:Lcom/google/common/graph/interface$for;

    sget-object v4, Lcom/google/common/graph/interface$for;->POSTORDER:Lcom/google/common/graph/interface$for;

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 7
    iget-object v1, p0, Lcom/google/common/graph/interface$if$try;->for:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_5
    iget-object v1, v0, Lcom/google/common/graph/interface$if$try$do;->if:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/common/graph/interface$if$try;->new:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 10
    iget-object v2, p0, Lcom/google/common/graph/interface$if$try;->for:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Lcom/google/common/graph/interface$if$try;->new(Ljava/lang/Object;)Lcom/google/common/graph/interface$if$try$do;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    .line 11
    iget-object v0, v0, Lcom/google/common/graph/interface$if$try$do;->do:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0
.end method

.method public new(Ljava/lang/Object;)Lcom/google/common/graph/interface$if$try$do;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/interface$if<",
            "TN;>.try.do;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/interface$if$try$do;

    iget-object v1, p0, Lcom/google/common/graph/interface$if$try;->case:Lcom/google/common/graph/interface$if;

    invoke-static {v1}, Lcom/google/common/graph/interface$if;->this(Lcom/google/common/graph/interface$if;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/interface$if$try$do;-><init>(Lcom/google/common/graph/interface$if$try;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
