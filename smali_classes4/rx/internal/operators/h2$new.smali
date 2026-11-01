.class final Lrx/internal/operators/h2$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final new:Lrx/internal/operators/h2$new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/h2$new<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:I

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/internal/operators/h2$new;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lrx/internal/operators/h2$new;-><init>(Lrx/Observer;Lrx/Observable;I)V

    sput-object v0, Lrx/internal/operators/h2$new;->new:Lrx/internal/operators/h2$new;

    return-void
.end method

.method public constructor <init>(Lrx/Observer;Lrx/Observable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;",
            "Lrx/Observable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/h2$new;->do:Lrx/Observer;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/h2$new;->if:Lrx/Observable;

    .line 4
    iput p3, p0, Lrx/internal/operators/h2$new;->for:I

    return-void
.end method

.method public static for()Lrx/internal/operators/h2$new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/h2$new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/h2$new;->new:Lrx/internal/operators/h2$new;

    return-object v0
.end method


# virtual methods
.method public do()Lrx/internal/operators/h2$new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/h2$new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/internal/operators/h2$new;->for()Lrx/internal/operators/h2$new;

    move-result-object v0

    return-object v0
.end method

.method public if(Lrx/Observer;Lrx/Observable;)Lrx/internal/operators/h2$new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/internal/operators/h2$new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/h2$new;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/h2$new;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method

.method public new()Lrx/internal/operators/h2$new;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/h2$new<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/h2$new;

    iget-object v1, p0, Lrx/internal/operators/h2$new;->do:Lrx/Observer;

    iget-object v2, p0, Lrx/internal/operators/h2$new;->if:Lrx/Observable;

    iget v3, p0, Lrx/internal/operators/h2$new;->for:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/h2$new;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method
