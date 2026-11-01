.class Lrx/Single$for;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->w(Lrx/Observer;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic for:Lrx/Single;

.field public final synthetic if:Lrx/Observer;


# direct methods
.method public constructor <init>(Lrx/Single;Lrx/Observer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$for;->for:Lrx/Single;

    iput-object p2, p0, Lrx/Single$for;->if:Lrx/Observer;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/Single$for;->if:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lrx/Single$for;->if:Lrx/Observer;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/Single$for;->if:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
