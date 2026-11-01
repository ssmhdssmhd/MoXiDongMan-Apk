.class public final Lrx/internal/operators/g$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Lrx/do<",
        "*>;>;",
        "Lrx/Observable<",
        "+",
        "Lrx/do<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/g$else;->do:Lrx/functions/Func2;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$else;->do(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;)",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/do;->try(Ljava/lang/Object;)Lrx/do;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/g$else$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/g$else$do;-><init>(Lrx/internal/operators/g$else;)V

    invoke-virtual {p1, v0, v1}, Lrx/Observable;->s3(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
