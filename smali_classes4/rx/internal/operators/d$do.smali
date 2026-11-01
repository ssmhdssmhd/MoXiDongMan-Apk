.class final Lrx/internal/operators/d$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final for:Ljava/lang/String;

.field public final if:Landroid/support/v4/b02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b02<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/b02;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/d$do;->if:Landroid/support/v4/b02;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/d$do;->for:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p0}, Landroid/support/v4/b02;->do(Lrx/Subscription;)V

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
    iget-object v0, p0, Lrx/internal/operators/d$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/u3;

    iget-object v1, p0, Lrx/internal/operators/d$do;->for:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/support/v4/u3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/u3;->attachTo(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/d$do;->if:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
