.class final Lkotlin/class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0003\u001a\u00020\u0002H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/class;",
        "",
        "Lkotlin/catch;",
        "do",
        "<init>",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final do:Lkotlin/class;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/class;

    invoke-direct {v0}, Lkotlin/class;-><init>()V

    sput-object v0, Lkotlin/class;->do:Lkotlin/class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final do()Lkotlin/catch;
    .locals 4
    .annotation runtime Landroid/support/v4/aq0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/catch;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lkotlin/catch;-><init>(III)V

    return-object v0
.end method
