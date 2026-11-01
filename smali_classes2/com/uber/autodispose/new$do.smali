.class Lcom/uber/autodispose/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/AutoDisposeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uber/autodispose/new;->if(Lio/reactivex/CompletableSource;)Lcom/uber/autodispose/AutoDisposeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/uber/autodispose/AutoDisposeConverter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;[Lorg/reactivestreams/Subscriber;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uber/autodispose/new$do;->goto(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;[Lorg/reactivestreams/Subscriber;)V

    return-void
.end method

.method private static synthetic goto(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;[Lorg/reactivestreams/Subscriber;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/uber/autodispose/catch;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/catch;-><init>(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;)V

    invoke-virtual {v0, p2}, Lcom/uber/autodispose/catch;->subscribe([Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Landroid/support/v4/fy0;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->new(Landroid/support/v4/fy0;)Lcom/uber/autodispose/MaybeSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Landroid/support/v4/jz1;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->else(Landroid/support/v4/jz1;)Lcom/uber/autodispose/SingleSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Landroid/support/v4/np;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->if(Landroid/support/v4/np;)Lcom/uber/autodispose/CompletableSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Landroid/support/v4/ub1;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->case(Landroid/support/v4/ub1;)Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/for;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->for(Lio/reactivex/for;)Lcom/uber/autodispose/FlowableSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/new;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/uber/autodispose/new$do;->try(Lio/reactivex/new;)Lcom/uber/autodispose/ObservableSubscribeProxy;

    move-result-object p1

    return-object p1
.end method

.method public case(Landroid/support/v4/ub1;)Lcom/uber/autodispose/ParallelFlowableSubscribeProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ub1<",
            "TT;>;)",
            "Lcom/uber/autodispose/ParallelFlowableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/catch;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/catch;-><init>(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    new-instance v1, Lcom/uber/autodispose/for;

    invoke-direct {v1, p1, v0}, Lcom/uber/autodispose/for;-><init>(Landroid/support/v4/ub1;Lio/reactivex/CompletableSource;)V

    return-object v1
.end method

.method public else(Landroid/support/v4/jz1;)Lcom/uber/autodispose/SingleSubscribeProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/jz1<",
            "TT;>;)",
            "Lcom/uber/autodispose/SingleSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/class;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/class;-><init>(Lio/reactivex/SingleSource;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/uber/autodispose/new$do$try;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/new$do$try;-><init>(Lcom/uber/autodispose/new$do;Landroid/support/v4/jz1;)V

    return-object v0
.end method

.method public for(Lio/reactivex/for;)Lcom/uber/autodispose/FlowableSubscribeProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/for<",
            "TT;>;)",
            "Lcom/uber/autodispose/FlowableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/goto;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/goto;-><init>(Lorg/reactivestreams/Publisher;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/uber/autodispose/new$do$if;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/new$do$if;-><init>(Lcom/uber/autodispose/new$do;Lio/reactivex/for;)V

    return-object v0
.end method

.method public if(Landroid/support/v4/np;)Lcom/uber/autodispose/CompletableSubscribeProxy;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/case;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/case;-><init>(Landroid/support/v4/np;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/uber/autodispose/new$do$do;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/new$do$do;-><init>(Lcom/uber/autodispose/new$do;Landroid/support/v4/np;)V

    return-object v0
.end method

.method public new(Landroid/support/v4/fy0;)Lcom/uber/autodispose/MaybeSubscribeProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/fy0<",
            "TT;>;)",
            "Lcom/uber/autodispose/MaybeSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/this;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/this;-><init>(Lio/reactivex/MaybeSource;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/uber/autodispose/new$do$for;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/new$do$for;-><init>(Lcom/uber/autodispose/new$do;Landroid/support/v4/fy0;)V

    return-object v0
.end method

.method public try(Lio/reactivex/new;)Lcom/uber/autodispose/ObservableSubscribeProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;)",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroid/support/v4/i5;->for:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/uber/autodispose/break;

    iget-object v1, p0, Lcom/uber/autodispose/new$do;->do:Lio/reactivex/CompletableSource;

    invoke-direct {v0, p1, v1}, Lcom/uber/autodispose/break;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/CompletableSource;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/uber/autodispose/new$do$new;

    invoke-direct {v0, p0, p1}, Lcom/uber/autodispose/new$do$new;-><init>(Lcom/uber/autodispose/new$do;Lio/reactivex/new;)V

    return-object v0
.end method
