.class public final enum Lcom/google/common/io/final;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/final;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPEND:Lcom/google/common/io/final;

.field private static final synthetic do:[Lcom/google/common/io/final;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/io/final;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/final;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/io/final;->APPEND:Lcom/google/common/io/final;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/io/final;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/io/final;->do:[Lcom/google/common/io/final;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/final;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/io/final;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/final;

    return-object p0
.end method

.method public static values()[Lcom/google/common/io/final;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/final;->do:[Lcom/google/common/io/final;

    invoke-virtual {v0}, [Lcom/google/common/io/final;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/io/final;

    return-object v0
.end method
