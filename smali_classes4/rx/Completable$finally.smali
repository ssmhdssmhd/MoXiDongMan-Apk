.class Lrx/Completable$finally;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->R(Lrx/functions/Func0;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Func0;

.field public final synthetic if:Lrx/Completable;


# direct methods
.method public constructor <init>(Lrx/Completable;Lrx/functions/Func0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Completable$finally;->if:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$finally;->do:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/b02;

    invoke-virtual {p0, p1}, Lrx/Completable$finally;->do(Landroid/support/v4/b02;)V

    return-void
.end method

.method public do(Landroid/support/v4/b02;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/Completable$finally;->if:Lrx/Completable;

    new-instance v1, Lrx/Completable$finally$do;

    invoke-direct {v1, p0, p1}, Lrx/Completable$finally$do;-><init>(Lrx/Completable$finally;Landroid/support/v4/b02;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    return-void
.end method
