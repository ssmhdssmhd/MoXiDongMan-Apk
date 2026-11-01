.class final Lrx/internal/operators/s0$for;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final case:I


# instance fields
.field public final do:Lrx/internal/operators/s0$try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/s0$try<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile for:Z

.field public final if:J

.field public volatile new:Lrx/internal/util/try;

.field public try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lrx/internal/operators/s0$for;->case:I

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/s0$try;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/s0$try<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/s0$for;->do:Lrx/internal/operators/s0$try;

    .line 3
    iput-wide p2, p0, Lrx/internal/operators/s0$for;->if:J

    return-void
.end method


# virtual methods
.method public do(J)V
    .locals 1

    .line 1
    iget v0, p0, Lrx/internal/operators/s0$for;->try:I

    long-to-int p2, p1

    sub-int/2addr v0, p2

    .line 2
    sget p1, Lrx/internal/operators/s0$for;->case:I

    if-le v0, p1, :cond_0

    .line 3
    iput v0, p0, Lrx/internal/operators/s0$for;->try:I

    return-void

    .line 4
    :cond_0
    sget p1, Lrx/internal/util/try;->new:I

    iput p1, p0, Lrx/internal/operators/s0$for;->try:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    int-to-long p1, p1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/s0$for;->for:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/s0$for;->do:Lrx/internal/operators/s0$try;

    invoke-virtual {v0}, Lrx/internal/operators/s0$try;->for()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/s0$for;->for:Z

    .line 2
    iget-object v0, p0, Lrx/internal/operators/s0$for;->do:Lrx/internal/operators/s0$try;

    invoke-virtual {v0}, Lrx/internal/operators/s0$try;->this()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/s0$for;->do:Lrx/internal/operators/s0$try;

    invoke-virtual {p1}, Lrx/internal/operators/s0$try;->for()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/s0$for;->do:Lrx/internal/operators/s0$try;

    invoke-virtual {v0, p0, p1}, Lrx/internal/operators/s0$try;->while(Lrx/internal/operators/s0$for;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    iput v0, p0, Lrx/internal/operators/s0$for;->try:I

    int-to-long v0, v0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
