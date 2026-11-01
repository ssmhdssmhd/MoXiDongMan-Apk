.class final Lkotlin/collections/e$do;
.super Landroid/support/v4/sn1;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/e;->if(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
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
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/support/v4/ub2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/if;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {}
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "Landroid/support/v4/rw1;",
        "",
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
.field public final synthetic $iterator:Ljava/util/Iterator;

.field public final synthetic $partialWindows:Z

.field public final synthetic $reuseBuffer:Z

.field public final synthetic $size:I

.field public final synthetic $step:I

.field public I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/e$do;->$size:I

    iput p2, p0, Lkotlin/collections/e$do;->$step:I

    iput-object p3, p0, Lkotlin/collections/e$do;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/e$do;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/e$do;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Landroid/support/v4/sn1;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lkotlin/collections/e$do;

    iget v2, p0, Lkotlin/collections/e$do;->$size:I

    iget v3, p0, Lkotlin/collections/e$do;->$step:I

    iget-object v4, p0, Lkotlin/collections/e$do;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/collections/e$do;->$reuseBuffer:Z

    iget-boolean v6, p0, Lkotlin/collections/e$do;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/collections/e$do;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/e$do;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/e$do;

    sget-object p2, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    invoke-virtual {p1, p2}, Lkotlin/collections/e$do;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/if;->goto()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlin/collections/e$do;->label:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/synchronized;

    iget-object v4, p0, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_9

    :cond_2
    iget-object v1, p0, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/collections/synchronized;

    iget-object v8, p0, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    check-cast v8, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_6

    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_4
    iget v1, p0, Lkotlin/collections/e$do;->I$0:I

    iget-object v2, p0, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, p0, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/rw1;

    .line 4
    iget v1, p0, Lkotlin/collections/e$do;->$size:I

    const/16 v8, 0x400

    invoke-static {v1, v8}, Lkotlin/ranges/new;->return(II)I

    move-result v1

    .line 5
    iget v8, p0, Lkotlin/collections/e$do;->$step:I

    iget v9, p0, Lkotlin/collections/e$do;->$size:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_c

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 7
    iget-object v3, p0, Lkotlin/collections/e$do;->$iterator:Ljava/util/Iterator;

    move-object v4, p1

    move-object p1, p0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-lez v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 8
    :cond_7
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p1, Lkotlin/collections/e$do;->$size:I

    if-ne v9, v10, :cond_6

    .line 10
    iput-object v4, p1, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    iput-object v3, p1, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    iput-object v2, p1, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    iput v8, p1, Lkotlin/collections/e$do;->I$0:I

    iput v6, p1, Lkotlin/collections/e$do;->label:I

    invoke-virtual {v4, v3, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move v1, v8

    .line 11
    :goto_2
    iget-boolean v8, p1, Lkotlin/collections/e$do;->$reuseBuffer:Z

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    iget v8, p1, Lkotlin/collections/e$do;->$size:I

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    move v8, v1

    goto :goto_1

    .line 12
    :cond_a
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_15

    .line 13
    iget-boolean v1, p1, Lkotlin/collections/e$do;->$partialWindows:Z

    if-nez v1, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lkotlin/collections/e$do;->$size:I

    if-ne v1, v2, :cond_15

    :cond_b
    iput-object v7, p1, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    iput v5, p1, Lkotlin/collections/e$do;->label:I

    invoke-virtual {v4, v3, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_15

    return-object v0

    .line 14
    :cond_c
    new-instance v5, Lkotlin/collections/synchronized;

    invoke-direct {v5, v1}, Lkotlin/collections/synchronized;-><init>(I)V

    .line 15
    iget-object v1, p0, Lkotlin/collections/e$do;->$iterator:Ljava/util/Iterator;

    move-object v8, p1

    move-object p1, p0

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 16
    invoke-virtual {v5, v9}, Lkotlin/collections/synchronized;->goto(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v5}, Lkotlin/collections/synchronized;->catch()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 18
    invoke-virtual {v5}, Lkotlin/collections/do;->size()I

    move-result v9

    iget v10, p1, Lkotlin/collections/e$do;->$size:I

    if-ge v9, v10, :cond_e

    invoke-virtual {v5, v10}, Lkotlin/collections/synchronized;->this(I)Lkotlin/collections/synchronized;

    move-result-object v5

    goto :goto_4

    .line 19
    :cond_e
    iget-boolean v9, p1, Lkotlin/collections/e$do;->$reuseBuffer:Z

    if-eqz v9, :cond_f

    move-object v9, v5

    goto :goto_5

    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    iput-object v8, p1, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    iput v4, p1, Lkotlin/collections/e$do;->label:I

    invoke-virtual {v8, v9, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_10

    return-object v0

    .line 20
    :cond_10
    :goto_6
    iget v9, p1, Lkotlin/collections/e$do;->$step:I

    invoke-virtual {v5, v9}, Lkotlin/collections/synchronized;->class(I)V

    goto :goto_4

    .line 21
    :cond_11
    iget-boolean v1, p1, Lkotlin/collections/e$do;->$partialWindows:Z

    if-eqz v1, :cond_15

    move-object v1, v5

    move-object v4, v8

    .line 22
    :goto_7
    invoke-virtual {v1}, Lkotlin/collections/do;->size()I

    move-result v5

    iget v8, p1, Lkotlin/collections/e$do;->$step:I

    if-le v5, v8, :cond_14

    .line 23
    iget-boolean v5, p1, Lkotlin/collections/e$do;->$reuseBuffer:Z

    if-eqz v5, :cond_12

    move-object v5, v1

    goto :goto_8

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_8
    iput-object v4, p1, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/e$do;->label:I

    invoke-virtual {v4, v5, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_13

    return-object v0

    .line 24
    :cond_13
    :goto_9
    iget v5, p1, Lkotlin/collections/e$do;->$step:I

    invoke-virtual {v1, v5}, Lkotlin/collections/synchronized;->class(I)V

    goto :goto_7

    .line 25
    :cond_14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_15

    iput-object v7, p1, Lkotlin/collections/e$do;->L$0:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/e$do;->L$1:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/e$do;->L$2:Ljava/lang/Object;

    iput v2, p1, Lkotlin/collections/e$do;->label:I

    invoke-virtual {v4, v1, p1}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_15

    return-object v0

    .line 26
    :cond_15
    :goto_a
    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1
.end method
