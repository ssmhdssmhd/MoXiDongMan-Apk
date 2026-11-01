.class public final Lcom/uber/autodispose/switch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/AutoDisposeContext;


# annotations
.annotation build Landroid/support/v4/wg1;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinExtensions.kt\ncom/uber/autodispose/RealAutoDisposeContext\n+ 2 KotlinExtensions.kt\ncom/uber/autodispose/KotlinExtensions\n*L\n1#1,303:1\n142#2:304\n47#2:305\n66#2:306\n85#2:307\n104#2:308\n123#2:309\n*E\n*S KotlinDebug\n*F\n+ 1 KotlinExtensions.kt\ncom/uber/autodispose/RealAutoDisposeContext\n*L\n296#1:304\n297#1:305\n298#1:306\n299#1:307\n300#1:308\n301#1:309\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016J\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016J\u000c\u0010\u0005\u001a\u00020\u000f*\u00020\u000eH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/uber/autodispose/switch;",
        "Lcom/uber/autodispose/AutoDisposeContext;",
        "T",
        "Landroid/support/v4/ub1;",
        "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;",
        "autoDispose",
        "Lio/reactivex/for;",
        "Lcom/uber/autodispose/FlowableSubscribeProxy;",
        "Lio/reactivex/new;",
        "Lcom/uber/autodispose/ObservableSubscribeProxy;",
        "Landroid/support/v4/jz1;",
        "Lcom/uber/autodispose/SingleSubscribeProxy;",
        "Landroid/support/v4/fy0;",
        "Lcom/uber/autodispose/MaybeSubscribeProxy;",
        "Landroid/support/v4/np;",
        "Lcom/uber/autodispose/CompletableSubscribeProxy;",
        "scope",
        "<init>",
        "(Landroid/support/v4/np;)V",
        "autodispose"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/np;


# direct methods
.method public constructor <init>(Landroid/support/v4/np;)V
    .locals 1
    .param p1    # Landroid/support/v4/np;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    return-void
.end method


# virtual methods
.method public autoDispose(Landroid/support/v4/np;)Lcom/uber/autodispose/CompletableSubscribeProxy;
    .locals 1
    .param p1    # Landroid/support/v4/np;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 12
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/np;->this(Lio/reactivex/CompletableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable<Any>(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/CompletableSubscribeProxy;

    return-object p1
.end method

.method public autoDispose(Lio/reactivex/for;)Lcom/uber/autodispose/FlowableSubscribeProxy;
    .locals 1
    .param p1    # Lio/reactivex/for;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/for<",
            "TT;>;)",
            "Lcom/uber/autodispose/FlowableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 4
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/for;->case(Lio/reactivex/FlowableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/FlowableSubscribeProxy;

    return-object p1
.end method

.method public autoDispose(Landroid/support/v4/fy0;)Lcom/uber/autodispose/MaybeSubscribeProxy;
    .locals 1
    .param p1    # Landroid/support/v4/fy0;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/fy0<",
            "TT;>;)",
            "Lcom/uber/autodispose/MaybeSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 10
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/fy0;->new(Lio/reactivex/MaybeConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/MaybeSubscribeProxy;

    return-object p1
.end method

.method public autoDispose(Lio/reactivex/new;)Lcom/uber/autodispose/ObservableSubscribeProxy;
    .locals 1
    .param p1    # Lio/reactivex/new;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 6
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    return-object p1
.end method

.method public autoDispose(Landroid/support/v4/ub1;)Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;
    .locals 1
    .param p1    # Landroid/support/v4/ub1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/ub1<",
            "TT;>;)",
            "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 2
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/ub1;->do(Lio/reactivex/parallel/ParallelFlowableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;

    return-object p1
.end method

.method public autoDispose(Landroid/support/v4/jz1;)Lcom/uber/autodispose/SingleSubscribeProxy;
    .locals 1
    .param p1    # Landroid/support/v4/jz1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/jz1<",
            "TT;>;)",
            "Lcom/uber/autodispose/SingleSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$autoDispose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->while(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/uber/autodispose/switch;->do:Landroid/support/v4/np;

    .line 8
    invoke-static {v0}, Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.autoDisposable(scope))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->goto(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/SingleSubscribeProxy;

    return-object p1
.end method
