.class Lrx/Completable$break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->extends(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lrx/Completable;

.field public final synthetic do:Lrx/functions/Action0;

.field public final synthetic for:Lrx/functions/Action1;

.field public final synthetic if:Lrx/functions/Action0;

.field public final synthetic new:Lrx/functions/Action1;

.field public final synthetic try:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$break;->case:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$break;->do:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$break;->if:Lrx/functions/Action0;

    iput-object p4, p0, Lrx/Completable$break;->for:Lrx/functions/Action1;

    iput-object p5, p0, Lrx/Completable$break;->new:Lrx/functions/Action1;

    iput-object p6, p0, Lrx/Completable$break;->try:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/Completable$break;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Completable$break;->case:Lrx/Completable;

    new-instance v1, Lrx/Completable$break$do;

    invoke-direct {v1, p0, p1}, Lrx/Completable$break$do;-><init>(Lrx/Completable$break;Lrx/CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method
