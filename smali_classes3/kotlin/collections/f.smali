.class final enum Lkotlin/collections/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/f;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/collections/f;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Ready",
        "NotReady",
        "Done",
        "Failed",
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
.field public static final enum Done:Lkotlin/collections/f;

.field public static final enum Failed:Lkotlin/collections/f;

.field public static final enum NotReady:Lkotlin/collections/f;

.field public static final enum Ready:Lkotlin/collections/f;

.field private static final synthetic do:[Lkotlin/collections/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/collections/f;

    new-instance v1, Lkotlin/collections/f;

    const-string v2, "Ready"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/collections/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/f;->Ready:Lkotlin/collections/f;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/collections/f;

    const-string v2, "NotReady"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlin/collections/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/f;->NotReady:Lkotlin/collections/f;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/collections/f;

    const-string v2, "Done"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lkotlin/collections/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/f;->Done:Lkotlin/collections/f;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/collections/f;

    const-string v2, "Failed"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lkotlin/collections/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/collections/f;->Failed:Lkotlin/collections/f;

    aput-object v1, v0, v3

    sput-object v0, Lkotlin/collections/f;->do:[Lkotlin/collections/f;

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

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/f;
    .locals 1

    const-class v0, Lkotlin/collections/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/collections/f;

    return-object p0
.end method

.method public static values()[Lkotlin/collections/f;
    .locals 1

    sget-object v0, Lkotlin/collections/f;->do:[Lkotlin/collections/f;

    invoke-virtual {v0}, [Lkotlin/collections/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/collections/f;

    return-object v0
.end method
