.class public final Landroid/support/v4/qp;
.super Landroid/support/v4/np;
.source "SourceFile"


# instance fields
.field public final do:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/qp;->do:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/qp;->do:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/if;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    return-void
.end method
