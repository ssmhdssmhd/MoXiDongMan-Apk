.class public final Lrx/internal/operators/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/s0$for;,
        Lrx/internal/operators/s0$try;,
        Lrx/internal/operators/s0$new;,
        Lrx/internal/operators/s0$do;,
        Lrx/internal/operators/s0$if;
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

.field public final if:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/s0;->do:Z

    .line 3
    iput p2, p0, Lrx/internal/operators/s0;->if:I

    return-void
.end method

.method public static for(ZI)Lrx/internal/operators/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI)",
            "Lrx/internal/operators/s0<",
            "TT;>;"
        }
    .end annotation

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lrx/internal/operators/s0;->if(Z)Lrx/internal/operators/s0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lrx/internal/operators/s0;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/s0;-><init>(ZI)V

    return-object v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxConcurrent > 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static if(Z)Lrx/internal/operators/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/s0<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lrx/internal/operators/s0$do;->do:Lrx/internal/operators/s0;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lrx/internal/operators/s0$if;->do:Lrx/internal/operators/s0;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/s0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

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
            "Lrx/Observable<",
            "+TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/s0$try;

    iget-boolean v1, p0, Lrx/internal/operators/s0;->do:Z

    iget v2, p0, Lrx/internal/operators/s0;->if:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/s0$try;-><init>(Landroid/support/v4/y22;ZI)V

    .line 2
    new-instance v1, Lrx/internal/operators/s0$new;

    invoke-direct {v1, v0}, Lrx/internal/operators/s0$new;-><init>(Lrx/internal/operators/s0$try;)V

    .line 3
    iput-object v1, v0, Lrx/internal/operators/s0$try;->new:Lrx/internal/operators/s0$new;

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v0
.end method
