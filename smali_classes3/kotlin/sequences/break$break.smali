.class final Lkotlin/sequences/break$break;
.super Landroid/support/v4/sn1;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/break;->static(Lkotlin/sequences/Sequence;Lkotlin/random/try;)Lkotlin/sequences/Sequence;
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
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/support/v4/ub2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/if;
    c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1"
    f = "Sequences.kt"
    i = {}
    l = {
        0x91
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
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
.field public final synthetic $random:Lkotlin/random/try;

.field public final synthetic $this_shuffled:Lkotlin/sequences/Sequence;

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/random/try;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/break$break;->$this_shuffled:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/break$break;->$random:Lkotlin/random/try;

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

    new-instance v0, Lkotlin/sequences/break$break;

    iget-object v1, p0, Lkotlin/sequences/break$break;->$this_shuffled:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/break$break;->$random:Lkotlin/random/try;

    invoke-direct {v0, v1, v2, p2}, Lkotlin/sequences/break$break;-><init>(Lkotlin/sequences/Sequence;Lkotlin/random/try;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/sequences/break$break;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/break$break;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/break$break;

    sget-object p2, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    invoke-virtual {p1, p2}, Lkotlin/sequences/break$break;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lkotlin/sequences/break$break;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkotlin/sequences/break$break;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lkotlin/sequences/break$break;->L$0:Ljava/lang/Object;

    check-cast v3, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/sequences/break$break;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/rw1;

    .line 4
    iget-object v1, p0, Lkotlin/sequences/break$break;->$this_shuffled:Lkotlin/sequences/Sequence;

    invoke-static {v1}, Lkotlin/sequences/class;->j2(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    move-object v3, p1

    :goto_0
    move-object p1, p0

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_4

    .line 6
    iget-object v4, p1, Lkotlin/sequences/break$break;->$random:Lkotlin/random/try;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lkotlin/random/try;->nextInt(I)I

    move-result v4

    .line 7
    invoke-static {v1}, Lkotlin/collections/final;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 9
    :cond_3
    iput-object v3, p1, Lkotlin/sequences/break$break;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/sequences/break$break;->L$1:Ljava/lang/Object;

    iput v2, p1, Lkotlin/sequences/break$break;->label:I

    invoke-virtual {v3, v5, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    .line 10
    :cond_4
    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1
.end method
