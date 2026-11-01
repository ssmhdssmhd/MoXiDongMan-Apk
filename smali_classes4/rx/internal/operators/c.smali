.class public final Lrx/internal/operators/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/c$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Completable$OnSubscribe;"
    }
.end annotation


# static fields
.field public static volatile for:Z


# instance fields
.field public final do:Lrx/Completable$OnSubscribe;

.field public final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/Completable$OnSubscribe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/c;->do:Lrx/Completable$OnSubscribe;

    .line 3
    invoke-static {}, Lrx/internal/operators/b;->if()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/c;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/c;->do:Lrx/Completable$OnSubscribe;

    new-instance v1, Lrx/internal/operators/c$do;

    iget-object v2, p0, Lrx/internal/operators/c;->if:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/c$do;-><init>(Lrx/CompletableSubscriber;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
