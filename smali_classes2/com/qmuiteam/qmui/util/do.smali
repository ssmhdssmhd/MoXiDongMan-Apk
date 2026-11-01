.class public final enum Lcom/qmuiteam/qmui/util/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qmuiteam/qmui/util/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_TO_TOP:Lcom/qmuiteam/qmui/util/do;

.field public static final enum LEFT_TO_RIGHT:Lcom/qmuiteam/qmui/util/do;

.field public static final enum RIGHT_TO_LEFT:Lcom/qmuiteam/qmui/util/do;

.field public static final enum TOP_TO_BOTTOM:Lcom/qmuiteam/qmui/util/do;

.field private static final synthetic do:[Lcom/qmuiteam/qmui/util/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/util/do;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qmuiteam/qmui/util/do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/util/do;->LEFT_TO_RIGHT:Lcom/qmuiteam/qmui/util/do;

    .line 2
    new-instance v1, Lcom/qmuiteam/qmui/util/do;

    const-string v3, "TOP_TO_BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qmuiteam/qmui/util/do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qmuiteam/qmui/util/do;->TOP_TO_BOTTOM:Lcom/qmuiteam/qmui/util/do;

    .line 3
    new-instance v3, Lcom/qmuiteam/qmui/util/do;

    const-string v5, "RIGHT_TO_LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/qmuiteam/qmui/util/do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/qmuiteam/qmui/util/do;->RIGHT_TO_LEFT:Lcom/qmuiteam/qmui/util/do;

    .line 4
    new-instance v5, Lcom/qmuiteam/qmui/util/do;

    const-string v7, "BOTTOM_TO_TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/qmuiteam/qmui/util/do;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/qmuiteam/qmui/util/do;->BOTTOM_TO_TOP:Lcom/qmuiteam/qmui/util/do;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/qmuiteam/qmui/util/do;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/qmuiteam/qmui/util/do;->do:[Lcom/qmuiteam/qmui/util/do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qmuiteam/qmui/util/do;
    .locals 1

    .line 1
    const-class v0, Lcom/qmuiteam/qmui/util/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qmuiteam/qmui/util/do;

    return-object p0
.end method

.method public static values()[Lcom/qmuiteam/qmui/util/do;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/util/do;->do:[Lcom/qmuiteam/qmui/util/do;

    invoke-virtual {v0}, [Lcom/qmuiteam/qmui/util/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/util/do;

    return-object v0
.end method
