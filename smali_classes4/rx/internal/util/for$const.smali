.class final Lrx/internal/util/for$const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/observables/for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final do:J

.field private final for:Lrx/if;

.field private final if:Ljava/util/concurrent/TimeUnit;

.field private final new:I

.field private final try:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p3, p0, Lrx/internal/util/for$const;->do:J

    .line 3
    iput-object p5, p0, Lrx/internal/util/for$const;->if:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p6, p0, Lrx/internal/util/for$const;->for:Lrx/if;

    .line 5
    iput p2, p0, Lrx/internal/util/for$const;->new:I

    .line 6
    iput-object p1, p0, Lrx/internal/util/for$const;->try:Lrx/Observable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/for$const;->do()Lrx/observables/for;

    move-result-object v0

    return-object v0
.end method

.method public do()Lrx/observables/for;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/for$const;->try:Lrx/Observable;

    iget v1, p0, Lrx/internal/util/for$const;->new:I

    iget-wide v2, p0, Lrx/internal/util/for$const;->do:J

    iget-object v4, p0, Lrx/internal/util/for$const;->if:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lrx/internal/util/for$const;->for:Lrx/if;

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->f3(IJLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/observables/for;

    move-result-object v0

    return-object v0
.end method
