.class final Lkotlin/text/goto$try;
.super Landroid/support/v4/sn1;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/goto;->splitToSequence(Ljava/lang/CharSequence;I)Lkotlin/sequences/Sequence;
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/support/v4/ub2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/if;
    c = "kotlin.text.Regex$splitToSequence$1"
    f = "Regex.kt"
    i = {}
    l = {
        0xf3,
        0xfb,
        0xff
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
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
.field public final synthetic $input:Ljava/lang/CharSequence;

.field public final synthetic $limit:I

.field public I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lkotlin/text/goto;


# direct methods
.method public constructor <init>(Lkotlin/text/goto;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/text/goto$try;->this$0:Lkotlin/text/goto;

    iput-object p2, p0, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/goto$try;->$limit:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Landroid/support/v4/sn1;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lkotlin/text/goto$try;

    iget-object v1, p0, Lkotlin/text/goto$try;->this$0:Lkotlin/text/goto;

    iget-object v2, p0, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    iget v3, p0, Lkotlin/text/goto$try;->$limit:I

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlin/text/goto$try;-><init>(Lkotlin/text/goto;Ljava/lang/CharSequence;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlin/text/goto$try;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/text/goto$try;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/text/goto$try;

    sget-object p2, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    invoke-virtual {p1, p2}, Lkotlin/text/goto$try;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/z41;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/if;->goto()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlin/text/goto$try;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget v1, p0, Lkotlin/text/goto$try;->I$0:I

    iget-object v2, p0, Lkotlin/text/goto$try;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Matcher;

    iget-object v6, p0, Lkotlin/text/goto$try;->L$0:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/rw1;

    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/package;->final(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/text/goto$try;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/rw1;

    .line 4
    iget-object v1, p0, Lkotlin/text/goto$try;->this$0:Lkotlin/text/goto;

    invoke-static {v1}, Lkotlin/text/goto;->access$getNativePattern$p(Lkotlin/text/goto;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v6, p0, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5
    iget v6, p0, Lkotlin/text/goto$try;->$limit:I

    if-eq v6, v5, :cond_9

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, p0

    move-object v6, p1

    move-object v2, v1

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 6
    :cond_5
    iget-object v8, v7, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-interface {v8, p1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object v6, v7, Lkotlin/text/goto$try;->L$0:Ljava/lang/Object;

    iput-object v2, v7, Lkotlin/text/goto$try;->L$1:Ljava/lang/Object;

    iput v1, v7, Lkotlin/text/goto$try;->I$0:I

    iput v4, v7, Lkotlin/text/goto$try;->label:I

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 7
    :cond_6
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    add-int/2addr v1, v5

    .line 8
    iget v8, v7, Lkotlin/text/goto$try;->$limit:I

    sub-int/2addr v8, v5

    if-eq v1, v8, :cond_7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_5

    .line 9
    :cond_7
    iget-object v1, v7, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    iput-object v1, v7, Lkotlin/text/goto$try;->L$0:Ljava/lang/Object;

    iput-object v1, v7, Lkotlin/text/goto$try;->L$1:Ljava/lang/Object;

    iput v3, v7, Lkotlin/text/goto$try;->label:I

    invoke-virtual {v6, p1, v7}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 10
    :cond_8
    :goto_1
    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1

    .line 11
    :cond_9
    :goto_2
    iget-object v1, p0, Lkotlin/text/goto$try;->$input:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput v5, p0, Lkotlin/text/goto$try;->label:I

    invoke-virtual {p1, v1, p0}, Landroid/support/v4/rw1;->do(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 12
    :cond_a
    :goto_3
    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1
.end method
