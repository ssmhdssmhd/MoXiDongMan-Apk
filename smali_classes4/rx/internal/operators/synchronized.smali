.class public final Lrx/internal/operators/synchronized;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/synchronized$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "TT",
            "Left;",
            "Lrx/Observable<",
            "TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TTRight;>;"
        }
    .end annotation
.end field

.field public final new:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "TTRight;",
            "Lrx/Observable<",
            "TTRightDuration;>;>;"
        }
    .end annotation
.end field

.field public final try:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "TT",
            "Left;",
            "TTRight;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT",
            "Left;",
            ">;",
            "Lrx/Observable<",
            "TTRight;>;",
            "Lrx/functions/Func1<",
            "TT",
            "Left;",
            "Lrx/Observable<",
            "TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/functions/Func1<",
            "TTRight;",
            "Lrx/Observable<",
            "TTRightDuration;>;>;",
            "Lrx/functions/Func2<",
            "TT",
            "Left;",
            "TTRight;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/synchronized;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/synchronized;->if:Lrx/Observable;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/synchronized;->for:Lrx/functions/Func1;

    .line 5
    iput-object p4, p0, Lrx/internal/operators/synchronized;->new:Lrx/functions/Func1;

    .line 6
    iput-object p5, p0, Lrx/internal/operators/synchronized;->try:Lrx/functions/Func2;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/synchronized;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/synchronized$do;

    new-instance v1, Landroid/support/v4/ax1;

    invoke-direct {v1, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/synchronized$do;-><init>(Lrx/internal/operators/synchronized;Landroid/support/v4/y22;)V

    .line 2
    invoke-virtual {v0}, Lrx/internal/operators/synchronized$do;->run()V

    return-void
.end method
