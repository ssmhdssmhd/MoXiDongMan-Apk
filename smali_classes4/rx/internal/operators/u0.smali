.class public final Lrx/internal/operators/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/u0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final do:Lrx/if;

.field private final for:I

.field private final if:Z


# direct methods
.method public constructor <init>(Lrx/if;Z)V
    .locals 1

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/u0;-><init>(Lrx/if;ZI)V

    return-void
.end method

.method public constructor <init>(Lrx/if;ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lrx/internal/operators/u0;->do:Lrx/if;

    .line 4
    iput-boolean p2, p0, Lrx/internal/operators/u0;->if:Z

    if-lez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget p3, Lrx/internal/util/try;->new:I

    :goto_0
    iput p3, p0, Lrx/internal/operators/u0;->for:I

    return-void
.end method

.method public static if(I)Lrx/Observable$Operator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/Observable$Operator<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/u0$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/u0$do;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/u0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 4
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
    iget-object v0, p0, Lrx/internal/operators/u0;->do:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/case;

    if-eqz v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v1, v0, Lrx/internal/schedulers/catch;

    if-eqz v1, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance v1, Lrx/internal/operators/u0$if;

    iget-boolean v2, p0, Lrx/internal/operators/u0;->if:Z

    iget v3, p0, Lrx/internal/operators/u0;->for:I

    invoke-direct {v1, v0, p1, v2, v3}, Lrx/internal/operators/u0$if;-><init>(Lrx/if;Landroid/support/v4/y22;ZI)V

    .line 4
    invoke-virtual {v1}, Lrx/internal/operators/u0$if;->if()V

    return-object v1
.end method
