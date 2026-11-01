.class public final Lrx/internal/operators/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/b2$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static final for:Ljava/util/Comparator;


# instance fields
.field public final do:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/b2$for;

    invoke-direct {v0}, Lrx/internal/operators/b2$for;-><init>()V

    sput-object v0, Lrx/internal/operators/b2;->for:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lrx/internal/operators/b2;->for:Ljava/util/Comparator;

    iput-object v0, p0, Lrx/internal/operators/b2;->do:Ljava/util/Comparator;

    .line 3
    iput p1, p0, Lrx/internal/operators/b2;->if:I

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p2, p0, Lrx/internal/operators/b2;->if:I

    .line 6
    new-instance p2, Lrx/internal/operators/b2$do;

    invoke-direct {p2, p0, p1}, Lrx/internal/operators/b2$do;-><init>(Lrx/internal/operators/b2;Lrx/functions/Func2;)V

    iput-object p2, p0, Lrx/internal/operators/b2;->do:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/b2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/lz1;

    invoke-direct {v0, p1}, Landroid/support/v4/lz1;-><init>(Landroid/support/v4/y22;)V

    .line 2
    new-instance v1, Lrx/internal/operators/b2$if;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/b2$if;-><init>(Lrx/internal/operators/b2;Landroid/support/v4/lz1;Landroid/support/v4/y22;)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v1
.end method
