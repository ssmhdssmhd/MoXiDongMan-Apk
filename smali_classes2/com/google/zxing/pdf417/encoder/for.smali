.class public final enum Lcom/google/zxing/pdf417/encoder/for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/pdf417/encoder/for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/google/zxing/pdf417/encoder/for;

.field public static final enum BYTE:Lcom/google/zxing/pdf417/encoder/for;

.field public static final enum NUMERIC:Lcom/google/zxing/pdf417/encoder/for;

.field public static final enum TEXT:Lcom/google/zxing/pdf417/encoder/for;

.field private static final synthetic do:[Lcom/google/zxing/pdf417/encoder/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/zxing/pdf417/encoder/for;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/encoder/for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/pdf417/encoder/for;->AUTO:Lcom/google/zxing/pdf417/encoder/for;

    .line 2
    new-instance v1, Lcom/google/zxing/pdf417/encoder/for;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/pdf417/encoder/for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/pdf417/encoder/for;->TEXT:Lcom/google/zxing/pdf417/encoder/for;

    .line 3
    new-instance v3, Lcom/google/zxing/pdf417/encoder/for;

    const-string v5, "BYTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/pdf417/encoder/for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/pdf417/encoder/for;->BYTE:Lcom/google/zxing/pdf417/encoder/for;

    .line 4
    new-instance v5, Lcom/google/zxing/pdf417/encoder/for;

    const-string v7, "NUMERIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/pdf417/encoder/for;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/pdf417/encoder/for;->NUMERIC:Lcom/google/zxing/pdf417/encoder/for;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/pdf417/encoder/for;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/zxing/pdf417/encoder/for;->do:[Lcom/google/zxing/pdf417/encoder/for;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/pdf417/encoder/for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/pdf417/encoder/for;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/pdf417/encoder/for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/for;->do:[Lcom/google/zxing/pdf417/encoder/for;

    invoke-virtual {v0}, [Lcom/google/zxing/pdf417/encoder/for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/pdf417/encoder/for;

    return-object v0
.end method
