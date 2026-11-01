.class Lrx/internal/operators/x$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/x;-><init>(Lrx/Observable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/Observable<",
        "+TTClosing;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/Observable;

.field public final synthetic if:Lrx/internal/operators/x;


# direct methods
.method public constructor <init>(Lrx/internal/operators/x;Lrx/Observable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/x$do;->if:Lrx/internal/operators/x;

    iput-object p2, p0, Lrx/internal/operators/x$do;->do:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/x$do;->do()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public do()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "+TTClosing;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/x$do;->do:Lrx/Observable;

    return-object v0
.end method
