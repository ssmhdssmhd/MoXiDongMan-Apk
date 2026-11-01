.class final Lrx/internal/schedulers/catch$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lrx/internal/schedulers/catch$if;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Action0;

.field public final for:I

.field public final if:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/catch$if;->do:Lrx/functions/Action0;

    .line 3
    iput-object p2, p0, Lrx/internal/schedulers/catch$if;->if:Ljava/lang/Long;

    .line 4
    iput p3, p0, Lrx/internal/schedulers/catch$if;->for:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lrx/internal/schedulers/catch$if;

    invoke-virtual {p0, p1}, Lrx/internal/schedulers/catch$if;->do(Lrx/internal/schedulers/catch$if;)I

    move-result p1

    return p1
.end method

.method public do(Lrx/internal/schedulers/catch$if;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/catch$if;->if:Ljava/lang/Long;

    iget-object v1, p1, Lrx/internal/schedulers/catch$if;->if:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lrx/internal/schedulers/catch$if;->for:I

    iget p1, p1, Lrx/internal/schedulers/catch$if;->for:I

    invoke-static {v0, p1}, Lrx/internal/schedulers/catch;->new(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
