.class Lrx/internal/operators/g$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$case;->do(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/do<",
        "*>;",
        "Lrx/do<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic if:Lrx/internal/operators/g$case;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$case$do;->if:Lrx/internal/operators/g$case;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/do;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$case$do;->do(Lrx/do;)Lrx/do;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/do;)Lrx/do;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do<",
            "*>;)",
            "Lrx/do<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$case$do;->if:Lrx/internal/operators/g$case;

    iget-wide v0, v0, Lrx/internal/operators/g$case;->do:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget v2, p0, Lrx/internal/operators/g$case$do;->do:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/internal/operators/g$case$do;->do:I

    int-to-long v3, v2

    cmp-long v5, v3, v0

    if-gtz v5, :cond_1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lrx/do;->try(Ljava/lang/Object;)Lrx/do;

    move-result-object p1

    :cond_1
    return-object p1
.end method
