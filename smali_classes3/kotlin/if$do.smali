.class public final Lkotlin/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/if;->break(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Continuation.kt\nkotlin/coroutines/ContinuationKt$Continuation$1\n+ 2 DeepRecursive.kt\nkotlin/DeepRecursiveScopeImpl\n*L\n1#1,161:1\n186#2,6:162\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J \u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b\u00b8\u0006\u000c"
    }
    d2 = {
        "kotlin/if$do",
        "Lkotlin/coroutines/Continuation;",
        "Landroid/support/v4/vn1;",
        "result",
        "Landroid/support/v4/ub2;",
        "resumeWith",
        "(Ljava/lang/Object;)V",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "context",
        "kotlin-stdlib",
        "kotlin/coroutines/if$do"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic do:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic for:Lkotlin/jvm/functions/Function3;

.field public final synthetic if:Lkotlin/if;

.field public final synthetic new:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/if;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/if$do;->do:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lkotlin/if$do;->if:Lkotlin/if;

    iput-object p3, p0, Lkotlin/if$do;->for:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lkotlin/if$do;->new:Lkotlin/coroutines/Continuation;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/if$do;->do:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlin/if$do;->if:Lkotlin/if;

    iget-object v1, p0, Lkotlin/if$do;->for:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Lkotlin/if;->goto(Lkotlin/if;Lkotlin/jvm/functions/Function3;)V

    .line 2
    iget-object v0, p0, Lkotlin/if$do;->if:Lkotlin/if;

    iget-object v1, p0, Lkotlin/if$do;->new:Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlin/if;->else(Lkotlin/if;Lkotlin/coroutines/Continuation;)V

    .line 3
    iget-object v0, p0, Lkotlin/if$do;->if:Lkotlin/if;

    invoke-static {v0, p1}, Lkotlin/if;->this(Lkotlin/if;Ljava/lang/Object;)V

    return-void
.end method
