.class public final Lrx/internal/operators/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/s1;->do:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/s1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ax1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;Z)V

    .line 2
    new-instance v2, Lrx/internal/operators/s1$do;

    invoke-direct {v2, p0, v0, v1, v0}, Lrx/internal/operators/s1$do;-><init>(Lrx/internal/operators/s1;Landroid/support/v4/y22;ZLandroid/support/v4/y22;)V

    .line 3
    new-instance v1, Lrx/internal/operators/s1$if;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/s1$if;-><init>(Lrx/internal/operators/s1;Landroid/support/v4/y22;)V

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    iget-object p1, p0, Lrx/internal/operators/s1;->do:Lrx/Observable;

    invoke-virtual {p1, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v2
.end method
