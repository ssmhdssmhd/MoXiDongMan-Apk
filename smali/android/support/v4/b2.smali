.class public final enum Landroid/support/v4/b2;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/b2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroid/support/v4/b2;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SOURCE",
        "BINARY",
        "RUNTIME",
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
.field public static final enum BINARY:Landroid/support/v4/b2;

.field public static final enum RUNTIME:Landroid/support/v4/b2;

.field public static final enum SOURCE:Landroid/support/v4/b2;

.field private static final synthetic do:[Landroid/support/v4/b2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v4/b2;

    new-instance v1, Landroid/support/v4/b2;

    const-string v2, "SOURCE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/b2;->SOURCE:Landroid/support/v4/b2;

    aput-object v1, v0, v3

    new-instance v1, Landroid/support/v4/b2;

    const-string v2, "BINARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/b2;->BINARY:Landroid/support/v4/b2;

    aput-object v1, v0, v3

    new-instance v1, Landroid/support/v4/b2;

    const-string v2, "RUNTIME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/b2;->RUNTIME:Landroid/support/v4/b2;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v4/b2;->do:[Landroid/support/v4/b2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/b2;
    .locals 1

    const-class v0, Landroid/support/v4/b2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/b2;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/b2;
    .locals 1

    sget-object v0, Landroid/support/v4/b2;->do:[Landroid/support/v4/b2;

    invoke-virtual {v0}, [Landroid/support/v4/b2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/b2;

    return-object v0
.end method
