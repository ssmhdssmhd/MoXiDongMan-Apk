.class public final enum Lkotlin/io/for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/for;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/io/for;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "TOP_DOWN",
        "BOTTOM_UP",
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
.field public static final enum BOTTOM_UP:Lkotlin/io/for;

.field public static final enum TOP_DOWN:Lkotlin/io/for;

.field private static final synthetic do:[Lkotlin/io/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/io/for;

    new-instance v1, Lkotlin/io/for;

    const-string v2, "TOP_DOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/io/for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/io/for;->TOP_DOWN:Lkotlin/io/for;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/io/for;

    const-string v2, "BOTTOM_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/io/for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/io/for;->BOTTOM_UP:Lkotlin/io/for;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/io/for;->do:[Lkotlin/io/for;

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

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/for;
    .locals 1

    const-class v0, Lkotlin/io/for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/io/for;

    return-object p0
.end method

.method public static values()[Lkotlin/io/for;
    .locals 1

    sget-object v0, Lkotlin/io/for;->do:[Lkotlin/io/for;

    invoke-virtual {v0}, [Lkotlin/io/for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/io/for;

    return-object v0
.end method
