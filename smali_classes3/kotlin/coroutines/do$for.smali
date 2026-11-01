.class final Lkotlin/coroutines/do$for;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/do;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/support/v4/ub2;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Landroid/support/v4/ub2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/support/v4/ub2;",
        "<anonymous parameter 0>",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "element",
        "invoke",
        "(Landroid/support/v4/ub2;Lkotlin/coroutines/CoroutineContext$Element;)V",
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
.field public final synthetic $elements:[Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $index:Landroid/support/v4/bm1$case;


# direct methods
.method public constructor <init>([Lkotlin/coroutines/CoroutineContext;Landroid/support/v4/bm1$case;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/do$for;->$elements:[Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lkotlin/coroutines/do$for;->$index:Landroid/support/v4/bm1$case;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/ub2;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/do$for;->invoke(Landroid/support/v4/ub2;Lkotlin/coroutines/CoroutineContext$Element;)V

    sget-object p1, Landroid/support/v4/ub2;->do:Landroid/support/v4/ub2;

    return-object p1
.end method

.method public final invoke(Landroid/support/v4/ub2;Lkotlin/coroutines/CoroutineContext$Element;)V
    .locals 3
    .param p1    # Landroid/support/v4/ub2;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext$Element;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lkotlin/coroutines/do$for;->$elements:[Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p0, Lkotlin/coroutines/do$for;->$index:Landroid/support/v4/bm1$case;

    iget v1, v0, Landroid/support/v4/bm1$case;->element:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroid/support/v4/bm1$case;->element:I

    aput-object p2, p1, v1

    return-void
.end method
