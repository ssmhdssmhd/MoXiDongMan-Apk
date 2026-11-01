.class Lrx/internal/operators/g$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g$do;->do(Lrx/Observable;)Lrx/Observable;
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
.field public final synthetic do:Lrx/internal/operators/g$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$do$do;->do:Lrx/internal/operators/g$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/do;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$do$do;->do(Lrx/do;)Lrx/do;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/do;)Lrx/do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do<",
            "*>;)",
            "Lrx/do<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lrx/do;->try(Ljava/lang/Object;)Lrx/do;

    move-result-object p1

    return-object p1
.end method
