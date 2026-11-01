.class public final enum Lcom/jcodecraeer/xrecyclerview/do$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcodecraeer/xrecyclerview/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jcodecraeer/xrecyclerview/do$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSED:Lcom/jcodecraeer/xrecyclerview/do$do;

.field public static final enum EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

.field public static final enum IDLE:Lcom/jcodecraeer/xrecyclerview/do$do;

.field private static final synthetic do:[Lcom/jcodecraeer/xrecyclerview/do$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/do$do;

    const-string v1, "EXPANDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jcodecraeer/xrecyclerview/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->EXPANDED:Lcom/jcodecraeer/xrecyclerview/do$do;

    .line 2
    new-instance v1, Lcom/jcodecraeer/xrecyclerview/do$do;

    const-string v3, "COLLAPSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jcodecraeer/xrecyclerview/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jcodecraeer/xrecyclerview/do$do;->COLLAPSED:Lcom/jcodecraeer/xrecyclerview/do$do;

    .line 3
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/do$do;

    const-string v5, "IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jcodecraeer/xrecyclerview/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jcodecraeer/xrecyclerview/do$do;->IDLE:Lcom/jcodecraeer/xrecyclerview/do$do;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jcodecraeer/xrecyclerview/do$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/jcodecraeer/xrecyclerview/do$do;->do:[Lcom/jcodecraeer/xrecyclerview/do$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jcodecraeer/xrecyclerview/do$do;
    .locals 1

    .line 1
    const-class v0, Lcom/jcodecraeer/xrecyclerview/do$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jcodecraeer/xrecyclerview/do$do;

    return-object p0
.end method

.method public static values()[Lcom/jcodecraeer/xrecyclerview/do$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/do$do;->do:[Lcom/jcodecraeer/xrecyclerview/do$do;

    invoke-virtual {v0}, [Lcom/jcodecraeer/xrecyclerview/do$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jcodecraeer/xrecyclerview/do$do;

    return-object v0
.end method
