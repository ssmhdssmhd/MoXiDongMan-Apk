.class public final enum Lcom/qmuiteam/qmui/qqface/do$new;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qmuiteam/qmui/qqface/do$new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

.field public static final enum NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

.field public static final enum SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

.field public static final enum SPECIAL_BOUNDS_DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

.field public static final enum TEXT:Lcom/qmuiteam/qmui/qqface/do$new;

.field private static final synthetic do:[Lcom/qmuiteam/qmui/qqface/do$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$new;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qmuiteam/qmui/qqface/do$new;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/do$new;->TEXT:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 2
    new-instance v1, Lcom/qmuiteam/qmui/qqface/do$new;

    const-string v3, "DRAWABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qmuiteam/qmui/qqface/do$new;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 3
    new-instance v3, Lcom/qmuiteam/qmui/qqface/do$new;

    const-string v5, "SPECIAL_BOUNDS_DRAWABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/qmuiteam/qmui/qqface/do$new;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/qmuiteam/qmui/qqface/do$new;->SPECIAL_BOUNDS_DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 4
    new-instance v5, Lcom/qmuiteam/qmui/qqface/do$new;

    const-string v7, "SPAN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/qmuiteam/qmui/qqface/do$new;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 5
    new-instance v7, Lcom/qmuiteam/qmui/qqface/do$new;

    const-string v9, "NEXTLINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/qmuiteam/qmui/qqface/do$new;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/qmuiteam/qmui/qqface/do$new;->NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/qmuiteam/qmui/qqface/do$new;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/qmuiteam/qmui/qqface/do$new;->do:[Lcom/qmuiteam/qmui/qqface/do$new;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/do$new;
    .locals 1

    .line 1
    const-class v0, Lcom/qmuiteam/qmui/qqface/do$new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qmuiteam/qmui/qqface/do$new;

    return-object p0
.end method

.method public static values()[Lcom/qmuiteam/qmui/qqface/do$new;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/qqface/do$new;->do:[Lcom/qmuiteam/qmui/qqface/do$new;

    invoke-virtual {v0}, [Lcom/qmuiteam/qmui/qqface/do$new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/qqface/do$new;

    return-object v0
.end method
