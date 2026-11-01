.class Lrx/Completable$native;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->A()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/x01;

.field public final synthetic if:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Landroid/support/v4/x01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$native;->if:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$native;->do:Landroid/support/v4/x01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$native;->do:Landroid/support/v4/x01;

    invoke-virtual {v0}, Landroid/support/v4/x01;->unsubscribe()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lrx/Completable$native;->do:Landroid/support/v4/x01;

    invoke-virtual {v0}, Landroid/support/v4/x01;->unsubscribe()V

    .line 3
    invoke-static {p1}, Lrx/Completable;->return(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Completable$native;->do:Landroid/support/v4/x01;

    invoke-virtual {v0, p1}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    return-void
.end method
