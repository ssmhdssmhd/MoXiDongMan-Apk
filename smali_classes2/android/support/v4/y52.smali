.class public final Landroid/support/v4/y52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/uber/autodispose/ScopeProvider;


# instance fields
.field private final do:Lio/reactivex/subjects/for;


# direct methods
.method private constructor <init>(Landroid/support/v4/np;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/reactivex/subjects/for;->l0()Lio/reactivex/subjects/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y52;->do:Lio/reactivex/subjects/for;

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method

.method public static do()Landroid/support/v4/y52;
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/subjects/for;->l0()Lio/reactivex/subjects/for;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/y52;->if(Landroid/support/v4/np;)Landroid/support/v4/y52;

    move-result-object v0

    return-object v0
.end method

.method public static if(Landroid/support/v4/np;)Landroid/support/v4/y52;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/y52;

    invoke-direct {v0, p0}, Landroid/support/v4/y52;-><init>(Landroid/support/v4/np;)V

    return-object v0
.end method


# virtual methods
.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y52;->do:Lio/reactivex/subjects/for;

    invoke-virtual {v0}, Lio/reactivex/subjects/for;->onComplete()V

    return-void
.end method

.method public requestScope()Lio/reactivex/CompletableSource;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y52;->do:Lio/reactivex/subjects/for;

    return-object v0
.end method
