.class final enum Lfreemarker/core/y$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfreemarker/core/y$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lfreemarker/core/y$do;

.field public static final enum CHAR_BOUNDARY:Lfreemarker/core/y$do;

.field public static final enum WORD_BOUNDARY:Lfreemarker/core/y$do;

.field private static final synthetic do:[Lfreemarker/core/y$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lfreemarker/core/y$do;

    const-string v1, "CHAR_BOUNDARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/y$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfreemarker/core/y$do;->CHAR_BOUNDARY:Lfreemarker/core/y$do;

    new-instance v1, Lfreemarker/core/y$do;

    const-string v3, "WORD_BOUNDARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfreemarker/core/y$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfreemarker/core/y$do;->WORD_BOUNDARY:Lfreemarker/core/y$do;

    new-instance v3, Lfreemarker/core/y$do;

    const-string v5, "AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfreemarker/core/y$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfreemarker/core/y$do;->AUTO:Lfreemarker/core/y$do;

    const/4 v5, 0x3

    new-array v5, v5, [Lfreemarker/core/y$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lfreemarker/core/y$do;->do:[Lfreemarker/core/y$do;

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

.method public static valueOf(Ljava/lang/String;)Lfreemarker/core/y$do;
    .locals 1

    .line 1
    const-class v0, Lfreemarker/core/y$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfreemarker/core/y$do;

    return-object p0
.end method

.method public static values()[Lfreemarker/core/y$do;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/y$do;->do:[Lfreemarker/core/y$do;

    invoke-virtual {v0}, [Lfreemarker/core/y$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfreemarker/core/y$do;

    return-object v0
.end method
