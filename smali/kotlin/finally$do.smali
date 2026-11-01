.class public final enum Lkotlin/finally$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/finally$do;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/finally$do",
        "",
        "Lkotlin/finally$do;",
        "<init>",
        "(Ljava/lang/String;I)V",
        "WARNING",
        "ERROR",
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
.field public static final enum ERROR:Lkotlin/finally$do;

.field public static final enum WARNING:Lkotlin/finally$do;

.field private static final synthetic do:[Lkotlin/finally$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/finally$do;

    new-instance v1, Lkotlin/finally$do;

    const-string v2, "WARNING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/finally$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/finally$do;->WARNING:Lkotlin/finally$do;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/finally$do;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/finally$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/finally$do;->ERROR:Lkotlin/finally$do;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/finally$do;->do:[Lkotlin/finally$do;

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

.method public static valueOf(Ljava/lang/String;)Lkotlin/finally$do;
    .locals 1

    const-class v0, Lkotlin/finally$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/finally$do;

    return-object p0
.end method

.method public static values()[Lkotlin/finally$do;
    .locals 1

    sget-object v0, Lkotlin/finally$do;->do:[Lkotlin/finally$do;

    invoke-virtual {v0}, [Lkotlin/finally$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/finally$do;

    return-object v0
.end method
