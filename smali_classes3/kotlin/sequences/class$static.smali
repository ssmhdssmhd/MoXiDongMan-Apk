.class final Lkotlin/sequences/class$static;
.super Landroid/support/v4/sn1;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/class;->E1(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/sn1;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/support/v4/rw1<",
        "-TS;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/support/v4/ub2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/if;
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduce$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x87d,
        0x880
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "iterator",
        "accumulator",
        "$this$sequence",
        "iterator"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0008\u0008\u0001\u0010\u0001*\u00028\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "S",
        "T",
        "Landroid/support/v4/rw1;",
        "Landroid/support/v4/ub2;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $operation:Lkotlin/jvm/functions/Function2;

.field public final synthetic $this_runningReduce:Lkotlin/sequences/Sequence;

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/class$static;->$this_runningReduce:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/class$static;->$operation:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Landroid/support/v4/sn1;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Landroid/support/v4/ub2;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/class$static;

    iget-object v1, p0, Lkotlin/sequences/class$static;->$this_runningReduce:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/class$static;->$operation:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlin/sequences/class$static;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/sequences/class$static;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/class$static;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/class$static;

    sget-object p2, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    invoke-virtual {p1, p2}, Lkotlin/sequences/class$static;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/if;->goto()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlin/sequences/class$static;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lkotlin/sequences/class$static;->L$2:Ljava/lang/Object;

    iget-object v3, p0, Lkotlin/sequences/class$static;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, p0, Lkotlin/sequences/class$static;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/sequences/class$static;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/support/v4/rw1;

    .line 4
    iget-object p1, p0, Lkotlin/sequences/class$static;->$this_runningReduce:Lkotlin/sequences/Sequence;

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iput-object v4, p0, Lkotlin/sequences/class$static;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/sequences/class$static;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/sequences/class$static;->L$2:Ljava/lang/Object;

    iput v3, p0, Lkotlin/sequences/class$static;->label:I

    invoke-virtual {v4, v1, p0}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    move-object p1, p0

    .line 8
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9
    iget-object v5, p1, Lkotlin/sequences/class$static;->$operation:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    iput-object v4, p1, Lkotlin/sequences/class$static;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Lkotlin/sequences/class$static;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/sequences/class$static;->L$2:Ljava/lang/Object;

    iput v2, p1, Lkotlin/sequences/class$static;->label:I

    invoke-virtual {v4, v1, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    .line 11
    :cond_5
    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1
.end method
