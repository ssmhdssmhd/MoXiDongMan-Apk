.class final Lkotlin/sequences/class$finally;
.super Landroid/support/v4/yr0;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/class;->t2(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/yr0;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;TT;",
        "Landroid/support/v4/qb1<",
        "+TT;+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "a",
        "b",
        "Landroid/support/v4/qb1;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/sequences/class$finally;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/sequences/class$finally;

    invoke-direct {v0}, Lkotlin/sequences/class$finally;-><init>()V

    sput-object v0, Lkotlin/sequences/class$finally;->INSTANCE:Lkotlin/sequences/class$finally;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/yr0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;
    .locals 0
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Landroid/support/v4/qb1<",
            "TT;TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/c92;->do(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/class$finally;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/qb1;

    move-result-object p1

    return-object p1
.end method
