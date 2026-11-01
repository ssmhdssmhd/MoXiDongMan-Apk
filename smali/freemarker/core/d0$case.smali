.class final enum Lfreemarker/core/d0$case;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfreemarker/core/d0$case;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lfreemarker/core/d0$case;

.field public static final enum INITIALIZED:Lfreemarker/core/d0$case;

.field public static final enum INITIALIZING:Lfreemarker/core/d0$case;

.field public static final enum UNINITIALIZED:Lfreemarker/core/d0$case;

.field private static final synthetic do:[Lfreemarker/core/d0$case;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lfreemarker/core/d0$case;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/d0$case;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfreemarker/core/d0$case;->UNINITIALIZED:Lfreemarker/core/d0$case;

    new-instance v1, Lfreemarker/core/d0$case;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfreemarker/core/d0$case;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfreemarker/core/d0$case;->INITIALIZING:Lfreemarker/core/d0$case;

    new-instance v3, Lfreemarker/core/d0$case;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfreemarker/core/d0$case;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfreemarker/core/d0$case;->INITIALIZED:Lfreemarker/core/d0$case;

    new-instance v5, Lfreemarker/core/d0$case;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfreemarker/core/d0$case;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfreemarker/core/d0$case;->FAILED:Lfreemarker/core/d0$case;

    const/4 v7, 0x4

    new-array v7, v7, [Lfreemarker/core/d0$case;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lfreemarker/core/d0$case;->do:[Lfreemarker/core/d0$case;

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

.method public static valueOf(Ljava/lang/String;)Lfreemarker/core/d0$case;
    .locals 1

    .line 1
    const-class v0, Lfreemarker/core/d0$case;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfreemarker/core/d0$case;

    return-object p0
.end method

.method public static values()[Lfreemarker/core/d0$case;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/d0$case;->do:[Lfreemarker/core/d0$case;

    invoke-virtual {v0}, [Lfreemarker/core/d0$case;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/core/d0$case;

    return-object v0
.end method
