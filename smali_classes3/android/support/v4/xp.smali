.class public final Landroid/support/v4/xp;
.super Landroid/support/v4/jz1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/f90;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/jz1<",
        "Landroid/support/v4/t41<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final do:Landroid/support/v4/np;


# direct methods
.method public constructor <init>(Landroid/support/v4/np;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/jz1;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/xp;->do:Landroid/support/v4/np;

    return-void
.end method


# virtual methods
.method public g0(Lio/reactivex/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Landroid/support/v4/t41<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/xp;->do:Landroid/support/v4/np;

    new-instance v1, Landroid/support/v4/wx0;

    invoke-direct {v1, p1}, Landroid/support/v4/wx0;-><init>(Lio/reactivex/SingleObserver;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/np;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
