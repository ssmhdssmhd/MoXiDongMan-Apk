.class public final Lrx/internal/operators/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/n1$for;,
        Lrx/internal/operators/n1$new;,
        Lrx/internal/operators/n1$if;,
        Lrx/internal/operators/n1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lrx/Observable<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final do:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/n1;->do:Z

    return-void
.end method

.method public static if(Z)Lrx/internal/operators/n1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/n1<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lrx/internal/operators/n1$if;->do:Lrx/internal/operators/n1;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lrx/internal/operators/n1$do;->do:Lrx/internal/operators/n1;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/n1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/n1$new;

    iget-boolean v1, p0, Lrx/internal/operators/n1;->do:Z

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/n1$new;-><init>(Landroid/support/v4/y22;Z)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    invoke-virtual {v0}, Lrx/internal/operators/n1$new;->goto()V

    return-object v0
.end method
